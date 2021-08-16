//created by Hunter Messner (messn036) on 8/9/21

#ifndef __HUBERT_SEC_H__
#define __HUBERT_SEC_H__

#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensor3d.hpp"
#include "hubertEnums.h"
#include "quantact.h"
#include "QuantLinear.h"
#include "softmax.h"
#include "quantact_xl.h"
#include "multiheadAttention.h"
#include "IntGELU.h"
#include "IntLayerNorm.h"

//sentence_encoder_layer.h implements the SEL top level wrapper for HUBERT. Layer 0 only. 
//This calls all relevant submodules in order, and reuturns the inference

class sentenceEncoderLayer
{
public:
	//initializer
	sentenceEncoderLayer( //builds all modules
		int embed_dim = 768,
		int num_heads = 3072,
		int num_attention_heads = 8,
		float dropout = 0.1f, //note that many arguments are placeholders to match signature to python version
		float attn_dropout = 0.1f,
		float act_dropout = 0.1f,
		char* activation_fn = nullptr,
		bool export_me = false,
		float q_noise = 0.0f,
		int qn_block_size = 8,
		QuantMode quant_mode = QuantMode::none,
		ForceDequantMode force_dequant = ForceDequantMode::none,
		bool return_output_scale = false);

	~sentenceEncoderLayer();
	
	//Forward
	scaled_tuple3dXL sel_forward(
		Tensor3dXL<float>* x,
		TensorXL<float>* x_scaling_factor,
		TensorXL<float>* self_attn_mask = nullptr,
		Tensor<float>* self_attn_padding_mask = nullptr);

	QuantMode quant_mode;
	ForceDequantMode force_dequant;
	int act_bit;
	int fc_weight_bit;
	int fc_bias_bit;
	int ln_bit;
	int ln_output_bit;
	int embedding_dim;
	//no dropout module because they do nothing during inference
	//quant noise does nothing during inference
	IntGELU *activation_fn_approx;
	QuantAct_XL *input_act;
	multiheadAttention *self_attn;
	QuantAct_XL *pre_self_attn_layer_norm_act;
	IntLayerNorm *self_attn_layer_norm;
	QuantAct_XL *fc1_act;
	QuantAct_XL *fc2_act;
	QuantLinear *fc1;
	QuantLinear *fc2;
	QuantAct_XL *pre_final_layer_norm_act;
	IntLayerNorm *final_layer_norm;
};
#endif
