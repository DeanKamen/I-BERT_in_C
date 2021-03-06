//softmax.cpp, created by Hunter Messner for the HUBERT project
#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensor_mult.h"
#include <iostream>
#include "quantact.h"
#include "loadTensors.h"
#include "hubertEnums.h"
#include "softmax.h"

Softmax::Softmax(int output_bit_i, QuantMode quant_mode_i, ForceDequantMode force_dequant)
{
	output_bit = output_bit_i;
	quant_mode = quant_mode_i;
	if (force_dequant == ForceDequantMode::nonlinear || force_dequant == ForceDequantMode::softmax)
	{
		quant_mode = QuantMode::none;
	}

	act = new QuantAct(16, 0.95f, true, false, -1, quant_mode);
	x0 = -0.6931f; //  - ln2
	n = 30; // sufficiently large integer
	coef[0] =  0.35815147f;
	coef[1] = 0.96963238f;
	coef[2] = 1.f; // ax**2 + bx + c
	coef[1] /= coef[0];
	coef[2] /= coef[0];
}

Softmax::~Softmax()
{
	delete act;
}

scaled_tuple3d Softmax::int_polynomial(Tensor3d<float>* x_int, TensorXL<float>* scaling_factor)
{
	TensorXL<float>* b_int = new TensorXL<float>(scaling_factor);
	TensorXL<float>::reciprocal(scaling_factor, b_int);
	TensorXL<float>::mul_scalar(b_int, coef[1], b_int);
	TensorXL<float>::floor_tensor(b_int, b_int);

	TensorXL<float>* c_int = new TensorXL<float>(scaling_factor);
	TensorXL<float>::pow_scalar(scaling_factor, 2.f, c_int);
	TensorXL<float>::reciprocal(c_int, c_int);
	TensorXL<float>::mul_scalar(c_int, coef[2], c_int);

	Tensor3d<float>* z = new Tensor3d<float>(x_int);
	Tensor3d<float>::add_scalar(x_int, TensorXL<float>::one(b_int), z);
	Tensor3d<float>::mul_dot(x_int, z, z);
	Tensor3d<float>::add_scalar(z, TensorXL<float>::one(c_int), z);
	delete b_int;
	delete c_int;

	TensorXL<float>::pow_scalar(scaling_factor, 2, scaling_factor);
	TensorXL<float>::mul_scalar(scaling_factor, coef[0], scaling_factor);
	
	scaled_tuple3d returnme;
	returnme.matrix = z;
	returnme.scaling_factor = scaling_factor;
	return returnme;
}

scaled_tuple3d Softmax::int_exp(Tensor3d<float>* x_int, TensorXL<float>* scaling_factor)
{
	TensorXL<float>* x0_int = new TensorXL<float>(scaling_factor);
	TensorXL<float>::reciprocal(scaling_factor, x0_int);
	TensorXL<float>::mul_scalar(x0_int, x0, x0_int);
	TensorXL<float>::floor_tensor(x0_int, x0_int);

	TensorXL<float>* temp = new TensorXL<float>(x0_int);
	TensorXL<float>::mul_scalar(temp, (float)n, temp);
	//not same dims
	Tensor3d<float>::max_scalar(x_int, TensorXL<float>::one(temp), x_int);
	delete temp;

	Tensor3d<float>* q = new Tensor3d<float>(x_int);
	//not same dims
	Tensor3d<float>::div_scalar(q, TensorXL<float>::one(x0_int), q);
	Tensor3d<float>::floor_tensor(q, q);

	Tensor3d<float>* r = new Tensor3d<float>(x_int);
	Tensor3d<float>* temp2 = new Tensor3d<float>(q);
	Tensor3d<float>::mul_scalar(temp2, TensorXL<float>::one(x0_int), temp2);
	Tensor3d<float>::sub(x_int, temp2, r);
	delete temp2, x0_int;

	scaled_tuple3d exp = int_polynomial(r, scaling_factor);

	temp2 = new Tensor3d<float>(q);
	Tensor3d<float>::sub_scalar((float)n, q, q);
	Tensor3d<float>::exp2_tensor(q,q);
	Tensor3d<float>::mul_dot(exp.matrix, q, exp.matrix);
	Tensor3d<float>::floor_tensor(exp.matrix, exp.matrix);
	Tensor3d<float>::clamp(exp.matrix, 0.f, FLT_MAX, exp.matrix);
	delete r, q;

	float x = (float)exp2(n);
	TensorXL<float>::div_scalar(exp.scaling_factor,x,exp.scaling_factor);
	
	return exp;
}


scaled_tuple3d Softmax::softmax_forward(Tensor3d<float>* x, TensorXL<float>* scaling_factor)
{
	//ASSUMPTION x is 12x22x22, scaling factor is 1x1
	Tensor3d<float>* x_int = new Tensor3d<float>(x);
	if (quant_mode == QuantMode::none)
	{
		normal_softmax(x_int, x_int);
		scaled_tuple3d rm;
		rm.matrix = x_int;
		rm.scaling_factor = nullptr;
		return rm;
	}
	//symmetric mode below

	//not same dims
	Tensor3d<float>::div_scalar(x_int, TensorXL<float>::one(scaling_factor), x_int);
	Tensor3d<float>* x_int_max = new Tensor3d<float>(x_int);
	Tensor3d<float>::max(x_int, 1, x_int_max);
	Tensor3d<float>::sub(x_int, x_int_max, x_int);
	
	scaled_tuple3d exp = int_exp(x_int, scaling_factor);
	delete x_int, x_int_max;

	exp = act->QuantAct_forward(exp.matrix, exp.scaling_factor);
	Tensor3d<float>* exp_int = new Tensor3d<float>(exp.matrix);
	Tensor3d<float>::div_scalar(exp.matrix, TensorXL<float>::one(exp.scaling_factor), exp_int);
	Tensor3d<float>* exp_int_sum = new Tensor3d<float>(exp_int);
	Tensor3d<float>::sum(exp_int, 1, exp_int_sum);

	Tensor3d<float>* factor = new Tensor3d<float>(exp_int_sum);
	Tensor3d<float>::reciprocal(exp_int_sum, factor);
	Tensor3d<float>::mul_scalar(factor, exp2f(32), factor);
	Tensor3d<float>::floor_tensor(factor, factor);
	delete exp_int_sum;
	Tensor3d<float>::mul_dot(exp_int, factor, exp_int);
	Tensor3d<float>::div_scalar(exp_int, exp2f(float(32-output_bit)), exp_int);
	Tensor3d<float>::floor_tensor(exp_int, exp_int);

	scaled_tuple3d returnme;
	returnme.matrix = new Tensor3d<float>(exp_int);
	delete exp_int, factor;
	float sf = 1.f / exp2f((float)output_bit);
	Tensor3d<float>::mul_scalar(returnme.matrix, sf, returnme.matrix);
	returnme.scaling_factor = new TensorXL<float>(1, 1, sf);

	return returnme;
}

void Softmax::normal_softmax(Tensor3d<float>* src, Tensor3d<float>* dest)
{//according to https ://pytorch.org/docs/stable/generated/torch.nn.Softmax.html?highlight=softmax#torch.nn.Softmax
 // dimention is curretly locked to 1, regarding each row as a unit to perform softmax on.
	unsigned i, j, d;
	for (d = 0; d < Tensor3d<float>::getRows(src); d++)
	{
		for (i = 0; i < Tensor3d<float>::getRows(src); i++)
		{
			//do a softmax on every row.
			float sum = 0;
			for (j = 0; j < Tensor3d<float>::getCols(src); j++)
			{
				sum += exp(Tensor3d<float>::get(src, i, j, d));
			}

			for (j = 0; j < Tensor3d<float>::getCols(src); j++)
			{
				float el = Tensor3d<float>::get(src, i, j, d);
				el = exp(el) / sum;
				Tensor3d<float>::set(dest, i, j, d, el); //copy to local tensor space
			}
		}
	}
}

void Softmax::set_param(preload x_min_n, preload x_max_n, preload act_scaling_factor_n)
{
	act->set_param(x_min_n, x_max_n, act_scaling_factor_n);
}
