#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensor_mult.h"
#include <iostream>
#include "quantact.h"
#include "loadTensors.h"
#include "hubertEnums.h"
#include "IntGELU.h"

IntGELU::IntGELU(QuantMode quant_mode_i, ForceDequantMode force_dequant)
{
	quant_mode = quant_mode_i;
	if (force_dequant == ForceDequantMode::nonlinear || force_dequant == ForceDequantMode::gelu)
	{
		quant_mode = QuantMode::none;
	}

	input_scaling_factor = loadTensor(preload::self_attn__softmax__act__x_min);
	k = 1.4142f; //  - ln2
	n = 14; // sufficiently large integer
	coeff[0] = -0.2888f;
	coeff[1] = -1.769f;
	coeff[2] = 1.f; // a(x+B)**2 + c
	coeff[2] /= coeff[0];
}

scaled_tuple3d IntGELU::intgelu_forward(Tensor3d<float>* x, Tensor<float>* scaling_factor)
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

void IntGELU::normal_gelu(Tensor3d<float>* x_in, Tensor3d<float>* x_out)
{// since, in the original program, self.activation_fn = nn.GELU(), This will be a replacement for
	//https://pytorch.org/docs/stable/generated/torch.nn.GELU.html
	//Im not actually going to write it because it shouldnt be used in replace of i-gelu
	//I need it for GLUE though
	assert(false);
}


scaled_tuple3d IntGELU::int_erf(Tensor3d<float>* x_int, Tensor<float>* scaling_factor)
{
	float b_int = floor(coeff[1] / Tensor<float>::one(scaling_factor));
	float c_int = floor(coeff[2] / pow(Tensor<float>::one(scaling_factor), 2));
	Tensor3d<float>* sign = new Tensor3d(x_int);
	Tensor3d<float>::sign(x_int, sign);
	Tensor3d<float>* abs_int = new Tensor3d(x_int);
	Tensor3d<float>::abs_tensor(x_int, abs_int);
	Tensor3d<float>::min_scalar(abs_int, -b_int, abs_int);
	Tensor3d<float>* y_int = new Tensor3d(abs_int);
	Tensor3d<float>::add_scalar(abs_int, b_int, abs_int); //its okay to overwrite abs int now
	Tensor3d<float>::pow_scalar(abs_int, 2, abs_int);
	Tensor3d<float>::add_scalar(abs_int, c_int, y_int);
	Tensor3d<float>::mul_dot(y_int, sign, y_int);
	//scaling factor
	Tensor<float>::pow_scalar(scaling_factor, 2, scaling_factor);
	Tensor<float>::mul_scalar(scaling_factor, coeff[0], scaling_factor);
	Tensor3d<float>::div_scalar(y_int, exp2f(float(n)), y_int);
	Tensor3d<float>::floor_tensor(y_int, y_int);
	Tensor<float>::mul_scalar(scaling_factor, exp2f(float(n)), scaling_factor);
	
	scaled_tuple3d returnme;
	returnme.matrix = y_int;
	returnme.scaling_factor = scaling_factor;
	return returnme;
}
