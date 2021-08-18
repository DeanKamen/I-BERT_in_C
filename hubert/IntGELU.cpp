//IntGELU.cpp, created by Hunter Messner for the HUBERT project


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

	k = 1.4142f; //  - ln2
	n = 14; // sufficiently large integer
	coeff[0] = -0.2888;
	coeff[1] = -1.76900000;
	coeff[2] = 1.; // a(x+B)**2 + c
	coeff[2] /= coeff[0];
}

scaled_tuple3dXL IntGELU::intgelu_forward(Tensor3dXL<float>* x, TensorXL<float>* scaling_factor)
{
	//assumption: x is 22x1x3072, scaling_factor 1x3072
	//scaling factor is not a one tensor
	if (quant_mode == QuantMode::none)
	{
		normal_gelu(x, x);
		scaled_tuple3dXL rm;
		rm.matrix = x;
		rm.scaling_factor = nullptr;
		return rm;
	}
	Tensor3dXL<float>* x_int = new Tensor3dXL<float>(x);
	
	Tensor3dXL<float>::div_dot(x_int, scaling_factor, x_int);
	TensorXL<float>* sigmoid_sf = new TensorXL<float>(scaling_factor);
	TensorXL<float>::div_scalar(sigmoid_sf, k, sigmoid_sf);
	scaled_tuple3dXL sigmoid = int_erf(x_int, sigmoid_sf);// sigmoid_sf gets put into the sigmoid tuple, so we dont delete singmoid sf
	//Tensor3dXL<float>* s_v = loadGeneric3dXL("bin/sigma_verification.bin");
	//Tensor3dXL<float>::eq(s_v, sigmoid.matrix);

	TensorXL<float>* shift_int = new TensorXL<float>(sigmoid.scaling_factor);
	TensorXL<float>::reciprocal(sigmoid.scaling_factor, shift_int);
	TensorXL<float>::floor_tensor(shift_int, shift_int);
	Tensor3dXL<float>::add(sigmoid.matrix, shift_int, sigmoid.matrix);
	delete shift_int;
	Tensor3dXL<float>::mul_dot(x_int, sigmoid.matrix, x_int);
	TensorXL<float>::div_scalar(sigmoid.scaling_factor, 2.f, sigmoid.scaling_factor);
	TensorXL<float>::mul_dot(scaling_factor, sigmoid.scaling_factor, scaling_factor);
	Tensor3dXL<float>::mul_dot(x_int, scaling_factor, x_int);
	scaled_tuple3dXL returnme;
	returnme.matrix = x_int;
	returnme.scaling_factor = scaling_factor;	
	return returnme;
	//This function allocates memory for its return value.
}

void IntGELU::normal_gelu(Tensor3dXL<float>* x_in, Tensor3dXL<float>* x_out)
{// since, in the original program, self.activation_fn = nn.GELU(), This will be a replacement for
	//https://pytorch.org/docs/stable/generated/torch.nn.GELU.html
	//Im not actually going to write it because it shouldnt be used in replace of i-gelu
	//I need it for GLUE though
	assert(false);
}


scaled_tuple3dXL IntGELU::int_erf(Tensor3dXL<float>* x_int, TensorXL<float>* scaling_factor)
{
	//assumption: x is 22x1x3072, scaling_factor 1x3072
	//scaling factor is not a one tensor
	TensorXL<float>* b_int = new TensorXL<float>(scaling_factor);
	TensorXL<float>::reciprocal(scaling_factor, coeff[1], b_int); //TODO: known causer of exact precision issues
	TensorXL<float>* bint_v = loadGeneric2d("bin/bintprefloor_verification.bin");
	TensorXL<float>::eq_verbose(bint_v, b_int);
	TensorXL<float>::floor_tensor(b_int, b_int);
	//bint_v = loadGeneric2d("bin/bintfloor_verification.bin");
	//TensorXL<float>::eq_verbose(bint_v, b_int);
	//b_int = bint_v;

	TensorXL<float>* c_int = new TensorXL<float>(scaling_factor);
	TensorXL<float>::pow_scalar(scaling_factor, 2, c_int);
	TensorXL<float>::reciprocal(c_int, coeff[2], c_int);//TODO: same here
	TensorXL<float>::floor_tensor(c_int, c_int);
	//bint_v = loadGeneric2d("bin/cintfloor_verification.bin");
	//TensorXL<float>::eq_verbose(bint_v, c_int);
	//c_int = bint_v;

	Tensor3dXL<float>* sign = new Tensor3dXL<float>(x_int);
	Tensor3dXL<float>::sign(x_int, sign);
	Tensor3dXL<float>* abs_int = new Tensor3dXL<float>(x_int);
	Tensor3dXL<float>::abs_tensor(x_int, abs_int);

	//negative b
	TensorXL<float>::mul_scalar(b_int, -1, b_int);
	Tensor3dXL<float>::min_dot(abs_int, b_int, abs_int);
	TensorXL<float>::mul_scalar(b_int, -1, b_int);
	//Tensor3dXL<float>* s_v = loadGeneric3dXL("bin/absint_verification.bin");
	//Tensor3dXL<float>::eq(s_v, abs_int);
	//bint_v = loadGeneric2d("bin/bint_verification.bin");
	//TensorXL<float>::eq_verbose(bint_v, b_int);
	//bint_v = loadGeneric2d("bin/cint_verification.bin");
	//TensorXL<float>::eq_verbose(bint_v, c_int);

	//positive b
	Tensor3dXL<float>* y_int = new Tensor3dXL<float>(abs_int);
	Tensor3dXL<float>::add(abs_int, b_int, abs_int); //its okay to overwrite abs int now
	//s_v = loadGeneric3dXL("bin/yadd_verification.bin");
	//Tensor3dXL<float>::eq(s_v, abs_int);

	Tensor3dXL<float>::pow_scalar(abs_int, 2, abs_int);
	//s_v = loadGeneric3dXL("bin/y2_verification.bin");
	//Tensor3dXL<float>::eq(s_v, abs_int);

	Tensor3dXL<float>::add(abs_int, c_int, y_int);
	Tensor3dXL<float>::mul_dot(y_int, sign, y_int);
	//s_v = loadGeneric3dXL("bin/y_verification.bin");
	//Tensor3dXL<float>::eq(s_v, y_int);

	delete b_int;
	delete c_int;
	delete sign;
	delete abs_int;
	//scaling factor
	TensorXL<float>::pow_scalar(scaling_factor, 2, scaling_factor);
	TensorXL<float>::mul_scalar(scaling_factor, coeff[0], scaling_factor);
	Tensor3dXL<float>::div_scalar(y_int, exp2f(float(n)), y_int);
	Tensor3dXL<float>::floor_tensor(y_int, y_int);
	TensorXL<float>::mul_scalar(scaling_factor, exp2f(float(n)), scaling_factor);
	
	scaled_tuple3dXL returnme;
	returnme.matrix = y_int;
	returnme.scaling_factor = scaling_factor;
	return returnme;
	//this function allocates its own memory for returnme.matrix but assumes scaling factor is already allocated
}
