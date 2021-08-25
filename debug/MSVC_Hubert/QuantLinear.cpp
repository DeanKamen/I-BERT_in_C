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
	delete fc_scaling_factor;
	delete weight;
	delete bias;
}

void QuantLinear::set_param(preload fc_scaling_factor_n, preload weight_n, preload bias_n)
{
	fc_scaling_factor = loadTensorXL(fc_scaling_factor_n);
	weight = loadTensorXL(weight_n);
	bias = loadTensorXL(bias_n);
}

tuple QuantLinear::quantlinear_forward(T3d* x, T2d* prev_act_scaling_factor, bool testing)
{
	//ASSUMPTION x is 22x1x768 and scaling factor is 1x1
	assert(quant_mode == QuantMode::symmetric);
	int pasf = T2d::one(prev_act_scaling_factor);

	T2d* w_min = new T2d(weight);
	T2d* w_max = new T2d(weight);
	T2d* space = new T2d(weight);
	//here I want to collapse wmin and wmax along rows
	//but I also want to keep the mot efficent structure (1 row, 768 cols)
	//so collapse 
	
	T2d::min(w_min, 1, w_min);
	T2d::max(w_max, 1, w_max);
	T2d::hardTranspose(w_min,space);
	T2d::hardTranspose(w_max,space);
	delete space;
	if (testing)
	{
		TensorXL<float>* weight_v = loadGeneric2d("bin/weight_verification.bin");
		TensorXL<float>::eq_verbose(weight_v, weight);
		TensorXL<float>* wmax_v = loadGeneric2d("bin/wmax_verification.bin");
		TensorXL<float>::eq_verbose(wmax_v, w_max);
		TensorXL<float>* wmin_v = loadGeneric2d("bin/wmin_verification.bin");
		TensorXL<float>::eq_verbose(wmin_v, w_min);
	}
	T2d* fc_scaling_factor = QuantAct_XL::symmetric_linear_quantization_params(weight_bit, w_min, w_max, per_channel);
	if (testing)
	{
		TensorXL<float>* fc_v = loadGeneric2d("bin/fc_verification.bin");
		TensorXL<float>::eq_verbose(fc_v, fc_scaling_factor);
	}

	delete w_min;
	delete w_max;
	T3d* weight3d = new T3d(weight);
	// this seems to be able to be loaded but can also be dervied. I will derive it
	T2d::transpose(fc_scaling_factor);
	T3d* weight_int = symmetricQuantFunction(weight3d, weight_bit, fc_scaling_factor); 
	T2d::transpose(fc_scaling_factor);
	if (testing)
	{
		TensorXL<float>* wint_v = loadGeneric2d("bin/wint_verification.bin");
		TensorXL<float>::eq_verbose(wint_v, T3d::twoD(weight_int));
	}
	delete weight3d;
	T2d* bias_scaling_factor = new T2d(fc_scaling_factor);
	T2d::mul_dot(fc_scaling_factor, prev_act_scaling_factor, bias_scaling_factor);
	T3d* bias3d = new T3d(bias);
	delete fc_scaling_factor;
	//Same thing here but it seems that if I load it its incorrect but if I derive it its correct
	T3d *bias_int_2 = symmetricQuantFunction(bias3d, *bias_bit, bias_scaling_factor);
	if (testing)
	{
		TensorXL<float>* bint_v = loadGeneric2d("bin/bint_verification.bin");
		TensorXL<float>::eq_verbose(bint_v, T3d::twoD(bias_int_2));
	}
	delete bias3d;
	T3d* x_int = new T3d(x);
	T3d::div_scalar(x, T2d::one(prev_act_scaling_factor), x_int);

	//LINEAR TRANSFORM
	if (T3d::getDepth(weight_int) == T3d::getDepth(x_int))
	{
		T3d* x_int_new_dim = new T3d(T3d::getDepth(x_int), T3d::getRows(x_int), T3d::getRows(weight_int), 0.0f);
		T3d::bmm(x_int, weight_int, x_int_new_dim);
		delete x_int;
		x_int = x_int_new_dim;
		T3d::add(x_int, bias_int_2, x_int);
	}
	else
	{
		T3d* x_int_new_dim = new T3d(T3d::getDepth(x_int), T3d::getRows(x_int), T3d::getRows(weight_int), 0.0f);
		T3d::linear_mul(x_int, T3d::twoD(weight_int), x_int_new_dim);
		delete x_int;
		x_int = x_int_new_dim;
		T3d::add(x_int, T3d::twoD(bias_int_2), x_int);
	}
	
	//end linear transform

	T3d::mul_dot(x_int, bias_scaling_factor, x_int);
	tuple returnme;
	returnme.matrix = x_int;
	returnme.scaling_factor = bias_scaling_factor;
	return returnme;
}

T3d* QuantLinear::symmetricQuantFunction(T3d* x, int k, T2d *specified_scale)
{
	T2d* zero_point = new T2d(1, 1, 0.);
	T3d* new_quant_x = new T3d(x);
	float n = exp2f(float(k - 1)) - 1;

	new_quant_x = QuantAct_XL::linear_quantize(x, specified_scale, zero_point);
	delete zero_point;
	T3d::clamp(new_quant_x, -n, n - 1, new_quant_x);
	return new_quant_x;
}