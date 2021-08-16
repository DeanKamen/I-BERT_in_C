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
#include "multiheadAttention.h"
#include "sentence_encoder_layer.h"

sentenceEncoderLayer::sentenceEncoderLayer( //builds all modules
	int embed_dim,
	int num_heads,
	int num_attention_heads,
	float dropout, //note that many arguments are placeholders to match signature to python version
	float attn_dropout,
	float act_dropout,
	char* activation_fn,
	bool export_me,
	float q_noise,
	int qn_block_size,
	QuantMode quant_mode_i,
	ForceDequantMode force_dequant_i,
	bool return_output_scale)
{
	quant_mode = quant_mode_i;
	force_dequant = force_dequant_i;
	act_bit = 8;
	fc_weight_bit = 8;
	fc_bias_bit = 32;
	ln_bit = 22;
	ln_output_bit = 32;
	embedding_dim = embed_dim;

	activation_fn_approx = new IntGELU(quant_mode, force_dequant);
	input_act = new QuantAct_XL(act_bit, 0.95f, true, false, -1, quant_mode);
	input_act->set_param(preload::input_act__x_min, preload::input_act__x_max, preload::input_act__act_scaling_factor);

	self_attn = new multiheadAttention(embed_dim, num_attention_heads, -1, -1, dropout, true, false, 
		false, true, false, q_noise, qn_block_size, quant_mode, force_dequant, true);

	pre_self_attn_layer_norm_act = new QuantAct_XL(ln_bit, 0.95f, true, false, -1, quant_mode);
	pre_self_attn_layer_norm_act->set_param(preload::pre_self_attn_layer_norm_act__x_min,
		preload::pre_self_attn_layer_norm_act__x_max, preload::pre_self_attn_layer_norm_act__act_scaling_factor);

	self_attn_layer_norm = new IntLayerNorm(ln_output_bit, true, quant_mode, force_dequant);
	self_attn_layer_norm->set_param(preload::self_attn_layer_norm__shift, preload::self_attn_layer_norm__weight, 
		preload::self_attn_layer_norm__bias);

	fc1_act = new QuantAct_XL(act_bit, 0.95f, true, false, -1, quant_mode);
	fc1_act->set_param(preload::fc1_act__x_min, preload::fc1_act__x_max, preload::fc1_act__act_scaling_factor);

	fc2_act = new QuantAct_XL(act_bit, 0.95f, true, false, -1, quant_mode);
	fc2_act->set_param(preload::fc2_act__x_min, preload::fc2_act__x_max, preload::fc2_act__act_scaling_factor);

	fc1 = new QuantLinear(fc_weight_bit, &fc_bias_bit, true, quant_mode);
	fc1->set_param(preload::fc1__fc_scaling_factor, preload::fc1__weight, preload::fc1__bias);

	fc2 = new QuantLinear(fc_weight_bit, &fc_bias_bit, true, quant_mode);
	fc2->set_param(preload::fc2__fc_scaling_factor, preload::fc2__weight, preload::fc2__bias);

	pre_final_layer_norm_act = new QuantAct_XL(ln_bit, 0.95f, true, false, -1, quant_mode);
	pre_final_layer_norm_act->set_param(preload::pre_final_layer_norm_act__x_min,
		preload::pre_final_layer_norm_act__x_max, preload::pre_final_layer_norm_act__act_scaling_factor);

	final_layer_norm = new IntLayerNorm(ln_output_bit, true, quant_mode, force_dequant);
	final_layer_norm->set_param(preload::final_layer_norm__shift,
		preload::final_layer_norm__weight, preload::final_layer_norm__bias);
}

sentenceEncoderLayer::~sentenceEncoderLayer()
{
	delete activation_fn_approx;
	delete input_act;
	delete self_attn;
	delete pre_self_attn_layer_norm_act;
	delete self_attn_layer_norm;
	delete fc1_act;
	delete fc2_act;
	delete fc1;
	delete fc2;
	delete pre_final_layer_norm_act;
	delete final_layer_norm;
}


scaled_tuple3dXL sentenceEncoderLayer::sel_forward(
	Tensor3dXL<float>* x,
	TensorXL<float>* x_scaling_factor,
	TensorXL<float>* self_attn_mask,
	Tensor<float>* self_attn_padding_mask)
{
	scaled_tuple3dXL t;
	t = input_act->QuantAct_forward(x, x_scaling_factor);
	Tensor3dXL<float>* t_v = loadGeneric3dXL("bin/act_verification.bin");
	Tensor3dXL<float>::eq(t_v, t.matrix);

	scaled_tuple3dXL residual;
	residual.matrix = new Tensor3dXL(t.matrix);
	residual.scaling_factor = new TensorXL(t.scaling_factor);
	
	t = self_attn->multiheadAttention_forward(t.matrix, t.matrix, t.matrix, self_attn_padding_mask, nullptr, false, false, nullptr, false, false,
		t.scaling_factor, t.scaling_factor, t.scaling_factor);

	t = pre_self_attn_layer_norm_act->QuantAct_forward(t.matrix, t.scaling_factor, residual.matrix, residual.scaling_factor);

	t = self_attn_layer_norm->intlayernorm_forward(t.matrix, t.scaling_factor);
	t = fc1_act->QuantAct_forward(t.matrix, t.scaling_factor);

	delete residual.matrix, residual.scaling_factor;
	residual.matrix = new Tensor3dXL(t.matrix);
	residual.scaling_factor = new TensorXL(t.scaling_factor);

	t = fc1->quantlinear_forward(t.matrix, t.scaling_factor);
	//Tensor3dXL<float>* t_v = loadGeneric3dXL("bin/pre_gelu_verification.bin");
	//Tensor3dXL<float>::eq(t_v, t.matrix);
	t = activation_fn_approx->intgelu_forward(t.matrix, t.scaling_factor);
	
	t = fc2_act->QuantAct_forward(t.matrix, t.scaling_factor);
	
	t = fc2->quantlinear_forward(t.matrix, t.scaling_factor);


	t = pre_final_layer_norm_act->QuantAct_forward(t.matrix, t.scaling_factor, residual.matrix, residual.scaling_factor);
	t = final_layer_norm->intlayernorm_forward(t.matrix, t.scaling_factor);

	Tensor3dXL<float>* fx_v = loadGeneric3dXL("bin/final_x_verification.bin");
	Tensor3dXL<float>::eq(fx_v, t.matrix);
	return t;
}	