//created by Hunter Messner (messn036) on 7/23/21

#ifndef __HUBERT_QUANTLINEAR_H__
#define __HUBERT_QUANTLINEAR_H__

#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensor3d.hpp"
#include "tensorXL.hpp"
#include "tensor3dXL.hpp"
#include "hubertEnums.h"

//QuantLinear.h implements the GELU layer. 
typedef Tensor3dXL<float> T3d;
typedef TensorXL<float> T2d;
typedef scaled_tuple3dXL tuple;

class QuantLinear
{
public:
	//initializer
	QuantLinear(int weight_bit, int* bias_bit, bool per_channel, QuantMode quant_mode = QuantMode::none);
	~QuantLinear();
	//member functions
	void set_param(preload fc_scaling_factor, preload weight, preload bias);
	tuple quantlinear_forward(T3d* x, T2d* prev_act_scaling_factor = nullptr, bool testing = false);
	T3d* symmetricQuantFunction(T3d* x, int k, T2d *specified_scale = nullptr);

	QuantMode quant_mode;
	int weight_bit;
	bool per_channel;
	int* bias_bit;
	bool quantize_bias;
	T2d* fc_scaling_factor;
	T2d* weight;
	T2d* bias;
};
#endif
