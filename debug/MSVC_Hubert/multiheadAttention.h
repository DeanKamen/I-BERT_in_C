//created by Hunter Messner (messn036) on 7/30/21

#ifndef __HUBERT_MULTIHEADATTENTION_H__
#define __HUBERT_MULTIHEADATTENTION_H__

#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensor3d.hpp"
#include "hubertEnums.h"
#include "quantact.h"
#include "QuantLinear.h"
#include "softmax.h"

//multiheadAttention.h implements the multiheadAttention wrapper for HUBERT. Layer 0 only. 

class multiheadAttention
{
public:
	//initializer
	multiheadAttention(
		int embed_dim,
		int num_heads,
		int* kdim = nullptr,
		int* vdim = nullptr,
		float dropout = 0.f,
		bool bias = true,
		bool add_bias_kv = false,
		bool add_zero_attn = false,
		bool self_attention = false,
		bool encoder_decoder_attention = false,
		float q_noise = 0.f,
		int qn_block_size = 8,
		QuantMode quant_mode = QuantMode::none,
		ForceDequantMode force_dequat = ForceDequantMode::none,
		bool return_output_scale = false);
	
	//Forward
	Tensor3d<float>* multiheadAttention_forward(
		Tensor3d<float>* query,
		Tensor<float>* key,
		Tensor<float> * value,
		Tensor<float> *key_padding_mask = nullptr,
		Tensor<float> *incremental_state = nullptr,
		bool need_weights = true,
		bool static_kv = false,
		Tensor<float> *attn_mask = nullptr,
		bool before_softmax = false,
		bool need_head_wights = false,
		float* query_scale = nullptr,
		float* key_scale = nullptr,
		float* value_scale = nullptr);

	QuantMode quant_mode;
	ForceDequantMode force_dequant;
	int act_bit;
	int fc_weight_bit;
	int fc_bias_bit;
	int embed_dim;
	int softmax_output_bit;
	int kdim;
	int vdim;
	int num_heads;
	int head_dim;
	float scaling;
	bool self_attention;
	bool add_zero_attn;
	bool return_output_scale;
	//no dropout module because they do nothing during inference
	//quant noise does nothing during inference
	QuantLinear *k_proj;
	QuantLinear *v_proj;
	QuantLinear *q_proj;
	QuantAct *k_proj_act;
	QuantAct *v_proj_act;
	QuantAct *q_proj_act;
	Softmax softmax;
	QuantAct attn_probs_act;
	QuantAct attn_act;
	QuantLinear out_proj;
	Tensor<float>* bias_k;
	Tensor<float>* bias_v;

};
#endif
