//QuantLinear.cpp, created by Hunter Messner for the HUBERT project
#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensor_mult.h"
#include <iostream>
#include "quantact_xl.h"
#include "loadTensors.h"
#include "hubertEnums.h"
#include "QuantLinear.h"
#include "HLS/matrix_mult.h"

typedef Tensor3dXL<float> T3d;
typedef TensorXL<float> T2d;
typedef scaled_tuple3dXL tuple;
T2d fc_scaling_factor;
T2d weight_ql;
T2d bias_ql;

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

QuantLinear::~QuantLinear()
{
	//delete fc_scaling_factor;
	//delete weight;
	//delete bias;
}

void QuantLinear::set_param(preload fc_scaling_factor_n, preload weight_n, preload bias_n)
{
	fc_scaling_factor = loadTensorXL(fc_scaling_factor_n);
	weight_ql = loadTensorXL(weight_n);
	bias_ql = loadTensorXL(bias_n);
}

T3d x_int_ql;
T2d bias_scaling_factor;
tuple QuantLinear::quantlinear_forward(QuantLinear &self, T3d& x, T2d& prev_act_scaling_factor, bool testing)
{
	//ASSUMPTION x is 22x1x768 and scaling factor is 1x1
	//assert(quant_mode == QuantMode::symmetric);
	int pasf = T2d::one(prev_act_scaling_factor);

	T2d w_min(weight_ql);
	T2d w_max(weight_ql);
	T2d space(weight_ql);
	//here I want to collapse wmin and wmax along rows
	//but I also want to keep the mot efficent structure (1 row, 768 cols)
	//so collapse 
	
	T2d::min(w_min, 1, w_min);
	T2d::max(w_max, 1, w_max);
	T2d::hardTranspose(w_min,space);
	T2d::hardTranspose(w_max,space);
	
	T2d* fc_scaling_factor = QuantAct_XL::symmetric_linear_quantization_params(self.weight_bit, w_min, w_max, self.per_channel);
	T3d weight3d(&weight_ql);
	// this seems to be able to be loaded but can also be dervied. I will derive it
	T2d::transpose(*fc_scaling_factor);
	T3d* weight_int = QuantLinear::symmetricQuantFunction(weight3d, self.weight_bit, *fc_scaling_factor);
	T2d::transpose(*fc_scaling_factor);

	bias_scaling_factor = T2d(fc_scaling_factor);
	T2d::mul_dot(*fc_scaling_factor, prev_act_scaling_factor, bias_scaling_factor);
	T3d bias3d(&bias_ql);
	delete fc_scaling_factor;
	//Same thing here but it seems that if I load it its incorrect but if I derive it its correct
	T3d *bias_int_2 = QuantLinear::symmetricQuantFunction(bias3d, *self.bias_bit, bias_scaling_factor);
	x_int_ql = T3d(x);
	T3d::div_scalar(x, T2d::one(prev_act_scaling_factor), x_int_ql);

	//LINEAR TRANSFORM
	if (T3d::getDepth(weight_int) == T3d::getDepth(x_int_ql))
	{
		T3d x_int_new_dim(T3d::getDepth(x_int_ql), T3d::getRows(x_int_ql), T3d::getRows(weight_int), 0.0f);
		T3d::bmm(x_int_ql, *weight_int, x_int_new_dim);
		x_int_ql = x_int_new_dim;
		T3d::add(x_int_ql, *bias_int_2, x_int_ql);
	}
	else
	{
		T3d x_int_new_dim(T3d::getDepth(x_int_ql), T3d::getRows(x_int_ql), T3d::getRows(weight_int), 0.0f);
		T3d::linear_mul(x_int_ql, *T3d::twoD(*weight_int), x_int_new_dim);
		x_int_ql = x_int_new_dim;
		T3d::add(x_int_ql, *T3d::twoD(*bias_int_2), x_int_ql);
	}
	
	//end linear transform

	T3d::mul_dot(x_int_ql, bias_scaling_factor, x_int_ql);
	tuple returnme;
	returnme.matrix = &x_int_ql;
	returnme.scaling_factor = &bias_scaling_factor;
	return returnme;
}

T3d new_quant_x;
T3d* QuantLinear::symmetricQuantFunction(T3d& x, int k, T2d& specified_scale)
{
	T2d zero_point(1, 1, 0.);
	new_quant_x = T3d(x);
	float n = exp2f(float(k - 1)) - 1;

	new_quant_x = *QuantAct_XL::linear_quantize(x, specified_scale, zero_point);
	T3d::clamp(new_quant_x, -n, n - 1, new_quant_x);
	return &new_quant_x;
}