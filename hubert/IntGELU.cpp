//IntGELU.cpp, created by Hunter Messner for the HUBERT project


#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.h" 
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

	k = 1.4142f; //  - ln2
	n = 14; // sufficiently large integer
	coeff[0] = -0.2888;
	coeff[1] = -1.76900000;
	coeff[2] = 1.; // a(x+B)**2 + c
	coeff[2] /= coeff[0];
}

Tensor3dXL x_int;
scaled_tuple3dXL IntGELU::intgelu_forward(IntGELU& self, Tensor3dXL& x, TensorXL& scaling_factor)
{
	//assumption: x is 22x1x3072, scaling_factor 1x3072
	//scaling factor is not a one tensor
	if (self.quant_mode == QuantMode::none)
	{
		IntGELU::normal_gelu(x, x);
		scaled_tuple3dXL rm;
		rm.matrix = &x;
		rm.scaling_factor = nullptr;
		return rm;
	}
	x_int = Tensor3dXL(x);
	
	Tensor3dXL::div_dot(x_int, scaling_factor, x_int);
	TensorXL sigmoid_sf(scaling_factor);
	TensorXL::div_scalar(sigmoid_sf, self.k, sigmoid_sf);
	scaled_tuple3dXL sigmoid = int_erf(self, x_int, sigmoid_sf);// sigmoid_sf gets put into the sigmoid tuple, so we dont delete singmoid sf

	TensorXL shift_int(sigmoid.scaling_factor);
	TensorXL::reciprocal(*sigmoid.scaling_factor, shift_int);
	TensorXL::floor_tensor(shift_int, shift_int);
	Tensor3dXL::add(*sigmoid.matrix, shift_int, *sigmoid.matrix);
	Tensor3dXL::mul_dot(x_int, *sigmoid.matrix, x_int);
	TensorXL::div_scalar(*sigmoid.scaling_factor, 2.f, *sigmoid.scaling_factor);
	TensorXL::mul_dot(scaling_factor, *sigmoid.scaling_factor, scaling_factor);
	Tensor3dXL::mul_dot(x_int, scaling_factor, x_int);
	scaled_tuple3dXL returnme;
	returnme.matrix = &x_int;
	returnme.scaling_factor = &scaling_factor;	
	return returnme;
	//This function allocates memory for its return value.
}


scaled_tuple3dXL IntGELU::int_erf(IntGELU& self, Tensor3dXL& x_int, TensorXL& scaling_factor)
{
	//assumption: x is 22x1x3072, scaling_factor 1x3072
	//scaling factor is not a one tensor
	TensorXL b_int (scaling_factor);
	TensorXL::reciprocal(scaling_factor, self.coeff[1], b_int); //TODO: known causer of exact precision issues
	TensorXL::floor_tensor(b_int, b_int);

	TensorXL c_int(scaling_factor);
	TensorXL::pow_scalar(scaling_factor, 2, c_int);
	TensorXL::reciprocal(c_int, self.coeff[2], c_int);//TODO: same here
	TensorXL::floor_tensor(c_int, c_int);

	Tensor3dXL sign(x_int);
	Tensor3dXL::sign(x_int, sign);
	Tensor3dXL abs_int (x_int);
	Tensor3dXL::abs_tensor(x_int, abs_int);

	//negative b
	TensorXL::mul_scalar(b_int, -1, b_int);
	Tensor3dXL::min_dot(abs_int, b_int, abs_int);
	TensorXL::mul_scalar(b_int, -1, b_int);

	//positive b
	Tensor3dXL y_int (abs_int);
	Tensor3dXL::add(abs_int, b_int, abs_int); //its okay to overwrite abs int now

	Tensor3dXL::pow_scalar(abs_int, 2, abs_int);

	Tensor3dXL::add(abs_int, c_int, y_int);
	Tensor3dXL::mul_dot(y_int, sign, y_int);

	//scaling factor
	TensorXL::pow_scalar(scaling_factor, 2, scaling_factor);
	TensorXL::mul_scalar(scaling_factor, self.coeff[0], scaling_factor);
	Tensor3dXL::div_scalar(y_int, exp2f(float(self.n)), y_int);
	Tensor3dXL::floor_tensor(y_int, y_int);
	TensorXL::mul_scalar(scaling_factor, exp2f(float(self.n)), scaling_factor);
	
	scaled_tuple3dXL returnme;
	returnme.matrix = &y_int;
	returnme.scaling_factor = &scaling_factor;
	return returnme;
	//this function allocates its own memory for returnme.matrix but assumes scaling factor is already allocated
}

void IntGELU::normal_gelu(Tensor3dXL& x_in, Tensor3dXL& x_out)
{// since, in the original program, self.activation_fn = nn.GELU(), This will be a replacement for
	//https://pytorch.org/docs/stable/generated/torch.nn.GELU.html
	//Im not actually going to write it because it shouldnt be used in replace of i-gelu
	//I need it for GLUE though
	//assert(false);
}