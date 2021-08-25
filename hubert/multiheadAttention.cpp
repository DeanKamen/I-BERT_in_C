//multiheadAttention.cpp, created by Hunter Messner for the HUBERT project
#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensor3d.hpp"
#include "tensorXL.hpp"
#include "tensor3dXL.hpp"
#include "tensor_mult.h"
#include <iostream>
#include "quantact.h"
#include "quantact_xl.h"
#include "loadTensors.h"
#include "hubertEnums.h"
#include "QuantLinear.h"
#include "HLS/matrix_mult.h"
#include "multiheadAttention.h"
#include "crosstype_tensors.h"

multiheadAttention::multiheadAttention(
	int embed_dim_i,
	int num_heads_i,
	int kdim_i,
	int vdim_i,
	float dropout,
	bool bias,
	bool add_bias_kv,
	bool add_zero_attn_i,
	bool self_attention_i,
	bool encoder_decoder_attention_i,
	float q_noise,
	int qn_block_size,
	QuantMode quant_mode_i,
	ForceDequantMode force_dequant_i,
	bool return_output_scale_i)
{
	quant_mode = quant_mode_i;
	force_dequant = force_dequant_i;
	act_bit = 8;
	fc_weight_bit = 8;
	fc_bias_bit = 32;
	embed_dim = embed_dim_i;
	softmax_output_bit = 8;
	if (kdim_i == -1) { kdim = embed_dim_i; }
	else { kdim = kdim_i; }
	if (vdim_i == -1) { vdim = embed_dim_i; }
	else { vdim = vdim_i; }
	qkv_same_dim = kdim == embed_dim && vdim == embed_dim;
	num_heads = num_heads_i;
	head_dim = embed_dim / num_heads;

	assert(head_dim * num_heads == embed_dim);
	scaling = powf(head_dim, -0.5f);
	self_attention = self_attention_i;
	encoder_decoder_attention = encoder_decoder_attention_i;
	assert(!self_attention || qkv_same_dim);
	assert(!(q_noise != 0 && quant_mode != QuantMode::none));
	k_proj = new QuantLinear(fc_weight_bit, &fc_bias_bit, true, quant_mode);
	k_proj->set_param(preload::self_attn__k_proj__fc_scaling_factor, preload::self_attn__k_proj__weight, preload::self_attn__k_proj__bias);
	v_proj = new QuantLinear(fc_weight_bit, &fc_bias_bit, true, quant_mode);
	v_proj->set_param(preload::self_attn__v_proj__fc_scaling_factor, preload::self_attn__v_proj__weight, preload::self_attn__v_proj__bias);
	q_proj = new QuantLinear(fc_weight_bit, &fc_bias_bit, true, quant_mode);
	q_proj->set_param(preload::self_attn__q_proj__fc_scaling_factor, preload::self_attn__q_proj__weight, preload::self_attn__q_proj__bias);
	//skipped linear layer assignment as I dont use it 

	k_proj_act = new QuantAct_XL(act_bit, 0.95f, true, false, -1, quant_mode);
	QuantAct_XL::set_param(*k_proj_act, preload::self_attn__k_proj_act__x_min, preload::self_attn__k_proj_act__x_max, preload::self_attn__k_proj_act__act_scaling_factor);
	v_proj_act = new QuantAct_XL(act_bit, 0.95f, true, false, -1, quant_mode);
	QuantAct_XL::set_param(*v_proj_act, preload::self_attn__v_proj_act__x_min, preload::self_attn__v_proj_act__x_max, preload::self_attn__v_proj_act__act_scaling_factor);
	q_proj_act = new QuantAct_XL(act_bit, 0.95f, true, false, -1, quant_mode);
	QuantAct_XL::set_param(*q_proj_act, preload::self_attn__q_proj_act__x_min, preload::self_attn__q_proj_act__x_max, preload::self_attn__q_proj_act__act_scaling_factor);

	softmax = new Softmax(softmax_output_bit, quant_mode, force_dequant);
	softmax->set_param(preload::self_attn__softmax__act__x_min,preload::self_attn__softmax__act__x_max,preload::self_attn__softmax__act__act_scaling_factor);

	attn_probs_act = new QuantAct_XL(act_bit, 0.95f, true, false, -1, quant_mode);
	QuantAct_XL::set_param(*attn_probs_act, preload::self_attn__attn_probs_act__x_min, preload::self_attn__attn_probs_act__x_max,preload::self_attn__attn_probs_act__act_scaling_factor);

	attn_act = new QuantAct_XL(act_bit, 0.95f, true, false, -1, quant_mode);
	QuantAct_XL::set_param(*attn_act, preload::self_attn__attn_act__x_min, preload::self_attn__attn_act__x_max, preload::self_attn__attn_act__act_scaling_factor);

	out_proj = new QuantLinear(fc_weight_bit, &fc_bias_bit, true, quant_mode);
	out_proj->set_param(preload::self_attn__out_proj__fc_scaling_factor, preload::self_attn__out_proj__weight, preload::self_attn__out_proj__bias);

	if (add_bias_kv)
	{
		assert(false);
	}
	else
	{
		bias_k = bias_v = nullptr;
	}
	add_zero_attn = add_zero_attn_i;
	return_output_scale = return_output_scale_i;
}

multiheadAttention::~multiheadAttention()
{
	delete k_proj;
	delete v_proj;
	delete q_proj;
	delete k_proj_act;
	delete v_proj_act;
	delete q_proj_act;
	delete softmax;
	delete attn_probs_act;
	delete attn_act;
	delete out_proj;
}

scaled_tuple3dXL multiheadAttention::multiheadAttention_forward(
	Tensor3dXL<float> *query,
	Tensor3dXL<float> *key,
	Tensor3dXL<float> *value,
	Tensor<float> *key_padding_mask,
	Tensor<float> *incremental_state,
	bool need_weights,
	bool static_kv,
	Tensor<float> *attn_mask,
	bool before_softmax,
	bool need_head_wights,
	TensorXL<float>* query_scale,
	TensorXL<float>* key_scale,
	TensorXL<float>* value_scale)
{
	//ASSUMPTION q,k,v are 22x1x768 and the corresponding scaling factors are 1
	int tgt_len = Tensor3dXL<float>::getDepth(query);
	scaled_tuple3dXL q, k, v;
	if (self_attention)
	{
		q = q_proj->quantlinear_forward(query, query_scale);
		k = k_proj->quantlinear_forward(key, key_scale);
		v = v_proj->quantlinear_forward(value, value_scale);
	}
	else
	{
		assert(false);
	}


	q = QuantAct_XL::QuantAct_forward(*q_proj_act, q.matrix, q.scaling_factor);
	k = QuantAct_XL::QuantAct_forward(*k_proj_act, k.matrix, k.scaling_factor,nullptr, nullptr, nullptr, nullptr, true);
	//Tensor3dXL<float>* kpa_v = loadGeneric3dXL("bin/kpa_verification.bin");
	//Tensor3dXL<float>::eq(kpa_v, k.matrix);
	v = v_proj_act->QuantAct_forward(*v_proj_act, v.matrix, v.scaling_factor);

	Tensor3dXL<float>::mul_scalar(q.matrix, scaling, q.matrix);
	if (q.scaling_factor != nullptr)
	{
		TensorXL<float>::mul_scalar(q.scaling_factor, scaling, q.scaling_factor);
	}
	assert(bias_k == nullptr);
	
	Tensor3d<float>* qT;
	Tensor3d<float>* kT; 
	Tensor3d<float>* vT;
	Tensor3d<float>* space = new Tensor3d(22, 12, 64, 0.0f);
	qT = transformFromXL(q.matrix, space);
	kT = transformFromXL(k.matrix, space);
	vT = transformFromXL(v.matrix, space);
	delete space;
	// using small versions until we transform back
	Tensor3d<float>* attn_weights = new Tensor3d<float>(12, 22, 22, 0.0f);
	
	//Tensor3d<float>* qmm_v = loadGeneric3d("bin/qmm_verification.bin");
	//Tensor3d<float>::eq(qmm_v, qT);
	//qT = qmm_v;
	//Tensor3d<float>* kmm_v = loadGeneric3d("bin/kmm_verification.bin");
	//Tensor3d<float>::eq(kmm_v, kT);
	//kT = kmm_v;
	Tensor3d<float>::bmm(qT, kT, attn_weights); 
	
	//Tensor3d<float>* t_v = loadGeneric3d("bin/aw_verification.bin");
	//Tensor3d<float>::eq(t_v, attn_weights);

	TensorXL<float> *attn_weights_scaling_factor = new TensorXL<float>(1, 1, TensorXL<float>::one(q.scaling_factor));
	if (q.scaling_factor != nullptr)
	{
		TensorXL<float>::mul_dot(q.scaling_factor, k.scaling_factor, attn_weights_scaling_factor);
	}

	//MultiheadAttention.apply_sparse_mask does nothing in inference
	scaled_tuple3d softmax_result = softmax->softmax_forward(attn_weights, attn_weights_scaling_factor);
	delete attn_weights_scaling_factor;
	delete attn_weights;
	attn_weights = softmax_result.matrix;
	Tensor3d<float>* attn = new Tensor3d(12, 22, 64, 0.0f);
	Tensor3d<float>::bmm2(attn_weights, vT, attn);//specialized, TODO: could be replaced?

	TensorXL<float>* attn_scaling_factor = new TensorXL<float>(q.scaling_factor);
	if (attn_scaling_factor != nullptr)
	{
		TensorXL<float>::mul_dot(q.scaling_factor, k.scaling_factor, attn_scaling_factor);
	}
	Tensor3dXL<float>*attnXL;
	space = new Tensor3d(22, 12, 64, 0.0f);
	attnXL = transformToXL(attn, space);
	delete space;
	delete attn;
	scaled_tuple3dXL attn_t1;
	attn_t1 = QuantAct_XL::QuantAct_forward(*attn_act, attnXL, attn_scaling_factor);
	delete attnXL;
	delete attn_scaling_factor;
	scaled_tuple3dXL attn_t2;
	attn_t2 = out_proj->quantlinear_forward(attn_t1.matrix, attn_t1.scaling_factor);
	delete attn_t1.matrix;
	delete attn_t1.scaling_factor;
	return attn_t2;
}	


void bmm(Tensor3d<float> *A, Tensor3d<float> *B, Tensor3d<float> *C)//temp local function for evaluation
{ //for when they both have the same size. 
	//We assume B is the same shape as A but compatible to multiply 
	//assuming a 22x64 * 22x64 but we transpose the second input
	assert(Tensor3d<float>::getCols(A) == Tensor3d<float>::getCols(B));
	Tensor3d<float>* ktransposed_v = loadGeneric3d("bin/ktranposed_verification.bin");
	Tensor3d<float>* t_v = loadGeneric3d("bin/aw_verification.bin");

	for (unsigned d = 0; d < Tensor3d<float>::getDepth(A); d++)
	{
		Tensor<float> *rhs = Tensor3d<float>::get(B, d);
		Tensor<float>::transpose(rhs);
		Tensor<float>::eq_verbose(Tensor3d<float>::get(ktransposed_v, d), rhs);
		Tensor<float>::mul_cross(Tensor3d<float>::get(A, d), rhs, Tensor3d<float>::get(C, d));
		Tensor<float>::eq_verbose(Tensor3d<float>::get(t_v, d), Tensor3d<float>::get(C, d));
		Tensor<float>::transpose(rhs);
	}
	Tensor3d<float>::setCols(C, Tensor3d<float>::getRows(B)); //rows is correct because its un-transposed
	Tensor3d<float>::setRows(C, Tensor3d<float>::getRows(A));
}