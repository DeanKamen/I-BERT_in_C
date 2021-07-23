#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensor_mult.h"
#include <iostream>
#include "quantact.h"
#include "loadTensors.h"
#include "hubertEnums.h"
#include "QuantLinear.h"

QuantLinear::QuantLinear(int weight_bit, int bias_bit, bool per_channel, QuantMode quant_mode_i)
{
	quant_mode = quant_mode_i;
	
}

scaled_tuple3d QuantLinear::set_param(preload fc_scaling_factor, preload weight_int, preload bias_int)
{
	input_scaling_factor = loadTensor(preload::self_attn__softmax__act__x_min);
	input_scaling_factor = loadTensor(preload::self_attn__softmax__act__x_min);
	input_scaling_factor = loadTensor(preload::self_attn__softmax__act__x_min);
}

scaled_tuple3d QuantLinear::quantlinear_forward(Tensor3d<float>* x, Tensor<float>* prev_act_scaling_factor)
{
	if (quant_mode == QuantMode::none)
	{
		normal_gelu(x, x);
		scaled_tuple3d rm;
		rm.matrix = x;
		rm.scaling_factor = nullptr;
		return rm;
	}
	Tensor3d<float>* x_int = new Tensor3d<float>(x);
	
	Tensor3d<float>::div_scalar(x_int, Tensor<float>::one(scaling_factor), x_int);
	Tensor<float>* sigmoid_sf = new Tensor(scaling_factor);
	Tensor<float>::div_scalar(sigmoid_sf, k, sigmoid_sf);
	scaled_tuple3d sigmoid = int_erf(x_int, sigmoid_sf);// sigmoid_sf gets put into the sigmoid tuple
	Tensor<float>* shift_int = new Tensor(sigmoid.scaling_factor);
	Tensor<float>::reciprocal(sigmoid.scaling_factor, shift_int);
	Tensor<float>::floor_tensor(shift_int, shift_int);
	Tensor3d<float>::add_scalar(sigmoid.matrix, Tensor<float>::one(shift_int), sigmoid.matrix);
	Tensor3d<float>::mul_dot(x_int, sigmoid.matrix, x_int);
	Tensor<float>::div_scalar(sigmoid.scaling_factor, 2.f, sigmoid.scaling_factor);
	Tensor<float>::mul_scalar(scaling_factor, Tensor<float>::one(sigmoid.scaling_factor), scaling_factor);
	Tensor3d<float>::mul_scalar(x_int, Tensor<float>::one(scaling_factor), x_int);
	scaled_tuple3d returnme;
	returnme.matrix = x_int;
	returnme.scaling_factor = scaling_factor;
	return returnme;
}
