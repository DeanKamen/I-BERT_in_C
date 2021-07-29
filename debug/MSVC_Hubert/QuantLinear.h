//created by Hunter Messner (messn036) on 7/23/21

#ifndef __HUBERT_QUANTLINEAR_H__
#define __HUBERT_QUANTLINEAR_H__

#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensor3d.hpp"
#include "hubertEnums.h"

//QuantLinear.h implements the GELU layer. 

class QuantLinear
{
public:
	//initializer
	QuantLinear(int weight_bit, int* bias_bit, bool per_channel, QuantMode quant_mode = QuantMode::none);
	//member functions
	void set_param(preload fc_scaling_factor, preload weight, preload bias, preload bias_int_n);
	scaled_tuple3d quantlinear_forward(Tensor3d<float>* x, Tensor<float>* prev_act_scaling_factor = nullptr);
	Tensor3d<float>* symmetricQuantFunction(Tensor3d<float>* x, int k, Tensor<float> *specified_scale = nullptr);

	QuantMode quant_mode;
	int weight_bit;
	bool per_channel;
	int* bias_bit;
	bool quantize_bias;
	Tensor<float>* fc_scaling_factor;
	Tensor<float>* weight;
	Tensor<float>* bias;
	Tensor<float>* bias_int;
};
#endif
