//sentence_encoder_layer.cpp, created by Hunter Messner for the HUBERT project
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
	QuantAct_XL::set_param(*input_act, preload::input_act__x_min, preload::input_act__x_max, preload::input_act__act_scaling_factor);

	self_attn = new multiheadAttention(embed_dim, num_attention_heads, -1, -1, dropout, true, false, 
		false, true, false, q_noise, qn_block_size, quant_mode, force_dequant, true);

	pre_self_attn_layer_norm_act = new QuantAct_XL(ln_bit, 0.95f, true, false, -1, quant_mode);
	QuantAct_XL::set_param(*pre_self_attn_layer_norm_act, preload::pre_self_attn_layer_norm_act__x_min,
		preload::pre_self_attn_layer_norm_act__x_max, preload::pre_self_attn_layer_norm_act__act_scaling_factor);

	self_attn_layer_norm = new IntLayerNorm(ln_output_bit, true, quant_mode, force_dequant);
	self_attn_layer_norm->set_param(preload::self_attn_layer_norm__shift, preload::self_attn_layer_norm__weight, 
		preload::self_attn_layer_norm__bias);

	fc1_act = new QuantAct_XL(act_bit, 0.95f, true, false, -1, quant_mode);
	QuantAct_XL::set_param(*fc1_act, preload::fc1_act__x_min, preload::fc1_act__x_max, preload::fc1_act__act_scaling_factor);

	fc2_act = new QuantAct_XL(act_bit, 0.95f, true, false, -1, quant_mode);
	QuantAct_XL::set_param(*fc2_act, preload::fc2_act__x_min, preload::fc2_act__x_max, preload::fc2_act__act_scaling_factor);

	fc1 = new QuantLinear(fc_weight_bit, &fc_bias_bit, true, quant_mode);
	fc1->set_param(preload::fc1__fc_scaling_factor, preload::fc1__weight, preload::fc1__bias);

	fc2 = new QuantLinear(fc_weight_bit, &fc_bias_bit, true, quant_mode);
	fc2->set_param(preload::fc2__fc_scaling_factor, preload::fc2__weight, preload::fc2__bias);

	pre_final_layer_norm_act = new QuantAct_XL(ln_bit, 0.95f, true, false, -1, quant_mode);
	QuantAct_XL::set_param(*pre_final_layer_norm_act, preload::pre_final_layer_norm_act__x_min,
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
	sentenceEncoderLayer &self,
	Tensor3dXL& x,
	TensorXL& x_scaling_factor,
	TensorXL& self_attn_mask,
	Tensor& self_attn_padding_mask)
{
	T3d null3d;
	T2d null2d;
	Tensor null2ds;

	scaled_tuple3dXL t;
	t = QuantAct_XL::QuantAct_forward(*self.input_act, x, x_scaling_factor, null3d, null2d, null2d, null2d);

	scaled_tuple3dXL residual;
	T3d res_matrix(t.matrix);
	residual.matrix = &res_matrix;
	T2d res_sf(t.scaling_factor);
	residual.scaling_factor = &res_sf;
	
	t = multiheadAttention::multiheadAttention_forward(*self.self_attn, *t.matrix, *t.matrix, *t.matrix, self_attn_padding_mask, null2ds, null2ds, null2d, null2d, null2d, false);
	t = QuantAct_XL::QuantAct_forward(*self.pre_self_attn_layer_norm_act, *t.matrix, *t.scaling_factor, *residual.matrix, *residual.scaling_factor, null2d, null2d);

	t = IntLayerNorm::intlayernorm_forward(*self.self_attn_layer_norm, *t.matrix, *t.scaling_factor);

	t = QuantAct_XL::QuantAct_forward(*self.fc1_act, *t.matrix, *t.scaling_factor, null3d, null2d, null2d, null2d);

	res_matrix = T3d(t.matrix);
	residual.matrix = &res_matrix;
	res_sf = T2d(t.scaling_factor);
	residual.scaling_factor = &res_sf;

	t = QuantLinear::quantlinear_forward(*self.fc1, *t.matrix, *t.scaling_factor);

	t = IntGELU::intgelu_forward(*self.activation_fn_approx, *t.matrix, *t.scaling_factor);

	t = QuantAct_XL::QuantAct_forward(*self.fc2_act, *t.matrix, *t.scaling_factor, null3d, null2d, null2d, null2d);
	t = QuantLinear::quantlinear_forward(*self.fc2, *t.matrix, *t.scaling_factor);

	t = QuantAct_XL::QuantAct_forward(*self.pre_final_layer_norm_act, *t.matrix, *t.scaling_factor, *residual.matrix, *residual.scaling_factor, null2d, null2d);
	t = IntLayerNorm::intlayernorm_forward(*self.final_layer_norm, *t.matrix, *t.scaling_factor);
	return t;
}	