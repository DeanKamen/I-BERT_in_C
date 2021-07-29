#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensor_mult.h"
#include <iostream>
#include "quantact.h"
#include "loadTensors.h"
#include "hubertEnums.h"
#include "QuantLinear.h"
#include "HLS/matrix_mult.h"

QuantLinear::QuantLinear(int weight_bit_i, int* bias_bit_i, bool per_channel_i, QuantMode quant_mode_i)
{
	quant_mode = quant_mode_i;
	per_channel = per_channel_i;
	weight_bit = weight_bit_i;
	bias_bit = bias_bit_i;
	if (bias_bit == nullptr) {
		quantize_bias = false;
	}
	else {
		quantize_bias = true;
	}
	
}

void QuantLinear::set_param(preload fc_scaling_factor_n, preload weight_n, preload bias_n, preload bias_int_n)
{
	fc_scaling_factor = loadTensor(fc_scaling_factor_n);
	weight = loadTensor(weight_n);
	bias = loadTensor(bias_n);
	bias_int = loadTensor(bias_int_n);
}

scaled_tuple3d QuantLinear::quantlinear_forward(Tensor3d<float>* x, Tensor<float>* prev_act_scaling_factor)
{
	assert(quant_mode == QuantMode::symmetric);
	int pasf = Tensor<float>::one(prev_act_scaling_factor);

	Tensor<float>* w_min = new Tensor<float>(weight);
	Tensor<float>* w_max = new Tensor<float>(weight);
	Tensor<float>::min(w_min, 1, w_min);
	Tensor<float>::max(w_max, 1, w_max);
	Tensor<float>* fc_scaling_factor = QuantAct::symmetric_linear_quantization_params(weight_bit, w_min, w_max, per_channel);
	Tensor3d<float>* weight3d = new Tensor3d<float>(weight);

	// this seems to be able to be loaded but can also be dervied. I will derive it
	Tensor3d<float>* weight_int = symmetricQuantFunction(weight3d, weight_bit, fc_scaling_factor); 
	Tensor<float>* bias_scaling_factor = new Tensor<float>(fc_scaling_factor);
	Tensor<float>::mul_dot(fc_scaling_factor, prev_act_scaling_factor, bias_scaling_factor);
	Tensor3d<float>* bias3d = new Tensor3d<float>(bias);
	//Same thing here but it seems that if I load it its incorrect but if I derive it its correct
	Tensor3d<float> *bias_int_2 = symmetricQuantFunction(bias3d, *bias_bit, bias_scaling_factor);
	Tensor<float>::transpose(Tensor3d<float>::get(bias_int_2, 0));

	Tensor3d<float>* x_int = new Tensor3d<float>(x);
	Tensor3d<float>::div_scalar(x, Tensor<float>::one(prev_act_scaling_factor), x_int);

	//LINEAR TRANSFORM
	Tensor3d<float>::linear_mul(x_int, Tensor3d<float>::twoD(weight_int), x_int);
	Tensor3d<float>::add(x_int, Tensor3d<float>::twoD(bias_int_2), x_int);
	//end linear transform

	Tensor<float>::transpose(bias_scaling_factor);
	Tensor3d<float>::mul_dot(x_int, bias_scaling_factor, x_int);
	Tensor<float>::transpose(bias_scaling_factor);// un- transpose to minimize bugs in the future
	scaled_tuple3d returnme;
	returnme.matrix = x_int;
	returnme.scaling_factor = bias_scaling_factor;
	return returnme;
}

Tensor3d<float>* QuantLinear::symmetricQuantFunction(Tensor3d<float>* x, int k, Tensor<float> *specified_scale)
{
	Tensor<float>* zero_point = new Tensor<float>(1, 1, 0.);
	Tensor3d<float>* new_quant_x = new Tensor3d<float>(x);
	float n = exp2f(float(k - 1)) - 1;
	new_quant_x = QuantAct::linear_quantize(x, specified_scale, zero_point);
	Tensor3d<float>::clamp(new_quant_x, -n, n - 1, new_quant_x);
	return new_quant_x;
}