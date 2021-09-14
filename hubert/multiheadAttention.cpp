//multiheadAttention.cpp, created by Hunter Messner for the HUBERT project
#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.h" 
#include "tensor3d.h"
#include "tensorXL.h"
#include "tensor3dXL.h"
#include <iostream>
#include "quantact.h"
#include "quantact_xl.h"
#include "loadTensors.h"
#include "hubertEnums.h"
#include "QuantLinear.h"
#include "HLS/matrix_mult.h"
#include "multiheadAttention.h"
#include "crosstype_tensors.h"

Tensor bias_k;
Tensor bias_v;

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
		bias_k.null = true;
		bias_v.null = true;
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
	multiheadAttention &self,
	Tensor3dXL &query,
	Tensor3dXL &key,
	Tensor3dXL &value,
	Tensor &key_padding_mask,
	Tensor &incremental_state,
	Tensor &attn_mask,
	TensorXL& query_scale,
	TensorXL& key_scale,
	TensorXL& value_scale,
	bool need_weights,
	bool static_kv,
	bool before_softmax,
	bool need_head_wights
)
{
	Tensor3dXL null3d;
	TensorXL null2d;
	//ASSUMPTION q,k,v are 22x1x768 and the corresponding scaling factors are 1
	int tgt_len = Tensor3dXL::getDepth(query);
	scaled_tuple3dXL q, k, v;
	if (self.self_attention)
	{
		q = QuantLinear::quantlinear_forward(*self.q_proj, query, query_scale);
		k = QuantLinear::quantlinear_forward(*self.k_proj, key, key_scale);
		v = QuantLinear::quantlinear_forward(*self.v_proj, value, value_scale);
	}
	else
	{
		//assert(false);
	}
	q = QuantAct_XL::QuantAct_forward(*self.q_proj_act, *q.matrix, *q.scaling_factor, null3d, null2d, null2d, null2d);
	k = QuantAct_XL::QuantAct_forward(*self.k_proj_act, *k.matrix, *k.scaling_factor, null3d, null2d, null2d, null2d);
	v = QuantAct_XL::QuantAct_forward(*self.v_proj_act, *v.matrix, *v.scaling_factor, null3d, null2d, null2d, null2d);

	Tensor3dXL::mul_scalar(*q.matrix, self.scaling, *q.matrix);
	if (q.scaling_factor != nullptr)
	{
		TensorXL::mul_scalar(*q.scaling_factor, self.scaling, *q.scaling_factor);
	}
	//assert(bias_k == nullptr);
	
	Tensor3d* qT;
	Tensor3d* kT; 
	Tensor3d* vT;
	Tensor3d space(22, 12, 64, 0.0f);
	qT = crosstype::transformFromXL(*q.matrix, space);
	kT = crosstype::transformFromXL(*k.matrix, space);
	vT = crosstype::transformFromXL(*v.matrix, space);
	// using small versions until we transform back
	Tensor3d attn_weights (12, 22, 22, 0.0f);
	Tensor3d::bmm(*qT, *kT, attn_weights); 
	TensorXL attn_weights_scaling_factor(1, 1, TensorXL::one(*q.scaling_factor));
	if (q.scaling_factor != nullptr)
	{
		TensorXL::mul_dot(*q.scaling_factor, *k.scaling_factor, attn_weights_scaling_factor);
	}
	//MultiheadAttention.apply_sparse_mask does nothing in inference
	scaled_tuple3d softmax_result = Softmax::softmax_forward(*self.softmax, attn_weights, attn_weights_scaling_factor);
	attn_weights = softmax_result.matrix;
	Tensor3d attn (12, 22, 64, 0.0f);
	Tensor3d::bmm2(attn_weights, *vT, attn);//specialized, TODO: could be replaced?

	TensorXL attn_scaling_factor(q.scaling_factor);
	if (!attn_scaling_factor.null)
	{
		TensorXL::mul_dot(*q.scaling_factor, *k.scaling_factor, attn_scaling_factor);
	}
	Tensor3dXL attnXL;
	space = Tensor3d(22, 12, 64, 0.0f);
	attnXL = crosstype::transformToXL(attn, space);
	scaled_tuple3dXL attn_t1;
	attn_t1 = QuantAct_XL::QuantAct_forward(*self.attn_act, attnXL, attn_scaling_factor, null3d, null2d, null2d, null2d);

	scaled_tuple3dXL attn_t2;
	attn_t2 = QuantLinear::quantlinear_forward(*self.out_proj, *attn_t1.matrix, *attn_t1.scaling_factor);
	return attn_t2;
}	
