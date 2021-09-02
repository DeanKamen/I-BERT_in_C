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
#include "quantact_xl.h"

//multiheadAttention.h implements the multiheadAttention wrapper for HUBERT. Layer 0 only. 

class multiheadAttention
{
public:
	//initializer
	multiheadAttention(
		int embed_dim,
		int num_heads,
		int kdim = -1,
		int vdim = -1,
		float dropout = 0.f,
		bool bias = true,
		bool add_bias_kv = false,
		bool add_zero_attn = false,
		bool self_attention = false,
		bool encoder_decoder_attention = false,
		float q_noise = 0.f,
		int qn_block_size = 8,
		QuantMode quant_mode = QuantMode::none,
		ForceDequantMode force_dequant = ForceDequantMode::none,
		bool return_output_scale = false);

	~multiheadAttention();
	
	//Forward
	static scaled_tuple3dXL multiheadAttention_forward(
		multiheadAttention &self,
		Tensor3dXL<float> &query,
		Tensor3dXL<float> &key,
		Tensor3dXL<float>  &value,
		Tensor<float> &key_padding_mask ,
		Tensor<float> &incremental_state,
		Tensor<float> &attn_mask,
		TensorXL<float>& query_scale,
		TensorXL<float>& key_scale,
		TensorXL<float>& value_scale,
		bool need_weights = true,
		bool static_kv = false,
		bool before_softmax = false,
		bool need_head_wights = false
		);

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
	bool qkv_same_dim;
	bool encoder_decoder_attention;
	//no dropout module because they do nothing during inference
	//quant noise does nothing during inference
	QuantLinear *k_proj;
	QuantLinear *v_proj;
	QuantLinear *q_proj;
	QuantAct_XL *k_proj_act;
	QuantAct_XL *v_proj_act;
	QuantAct_XL *q_proj_act;
	Softmax *softmax;
	QuantAct_XL *attn_probs_act;
	QuantAct_XL *attn_act;
	QuantLinear *out_proj;
};
#endif
