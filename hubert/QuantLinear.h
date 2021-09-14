//created by Hunter Messner (messn036) on 7/23/21

#ifndef __HUBERT_QUANTLINEAR_H__
#define __HUBERT_QUANTLINEAR_H__

#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.h" 
#include "tensor3d.h"
#include "tensorXL.h"
#include "tensor3dXL.h"
#include "hubertEnums.h"

//QuantLinear.h implements the GELU layer. 
typedef Tensor3dXL T3d;
typedef TensorXL T2d;
typedef scaled_tuple3dXL tuple;

class QuantLinear
{
public:
	//initializer
	QuantLinear(int weight_bit, int* bias_bit, bool per_channel, QuantMode quant_mode = QuantMode::none);
	~QuantLinear();
	//member functions
	void set_param(preload fc_scaling_factor, preload weight, preload bias);
	static tuple quantlinear_forward(QuantLinear &self, T3d& x, T2d& prev_act_scaling_factor, bool testing = false);
	static T3d* symmetricQuantFunction(T3d& x, int k, T2d& specified_scale);

	QuantMode quant_mode;
	int weight_bit;
	bool per_channel;
	int* bias_bit;
	bool quantize_bias;
};
#endif
