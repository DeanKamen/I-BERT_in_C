//softmax.cpp, created by Hunter Messner for the HUBERT project
#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.h" 
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

Tensor3d z;
scaled_tuple3d Softmax::int_polynomial(Softmax &self, Tensor3d& x_int, TensorXL& scaling_factor)
{
	TensorXL b_int(scaling_factor);
	TensorXL::reciprocal(scaling_factor, b_int);
	TensorXL::mul_scalar(b_int, self.coef[1], b_int);
	TensorXL::floor_tensor(b_int, b_int);

	TensorXL c_int(scaling_factor);
	TensorXL::pow_scalar(scaling_factor, 2.f, c_int);
	TensorXL::reciprocal(c_int, c_int);
	TensorXL::mul_scalar(c_int, self.coef[2], c_int);

	z = Tensor3d(x_int);
	Tensor3d::add_scalar(x_int, TensorXL::one(b_int), z);
	Tensor3d::mul_dot(x_int, z, z);
	Tensor3d::add_scalar(z, TensorXL::one(c_int), z);

	TensorXL::pow_scalar(scaling_factor, 2, scaling_factor);
	TensorXL::mul_scalar(scaling_factor, self.coef[0], scaling_factor);
	
	scaled_tuple3d returnme;
	returnme.matrix = &z;
	returnme.scaling_factor = &scaling_factor;
	return returnme;
}

scaled_tuple3d Softmax::int_exp(Softmax &self, Tensor3d& x_int, TensorXL& scaling_factor)
{
	TensorXL x0_int(scaling_factor);
	TensorXL::reciprocal(scaling_factor, x0_int);
	TensorXL::mul_scalar(x0_int, self.x0, x0_int);
	TensorXL::floor_tensor(x0_int, x0_int);

	TensorXL temp(x0_int);
	TensorXL::mul_scalar(temp, (float)self.n, temp);
	//not same dims
	Tensor3d::max_scalar(x_int, TensorXL::one(temp), x_int);

	Tensor3d q (x_int);
	//not same dims
	Tensor3d::div_scalar(q, TensorXL::one(x0_int), q);
	Tensor3d::floor_tensor(q, q);

	Tensor3d r (x_int);
	Tensor3d temp2 (q);
	Tensor3d::mul_scalar(temp2, TensorXL::one(x0_int), temp2);
	Tensor3d::sub(x_int, temp2, r);

	scaled_tuple3d exp = int_polynomial(self, r, scaling_factor);

	temp2 = Tensor3d(q);
	Tensor3d::sub_scalar((float)self.n, q, q);
	Tensor3d::exp2_tensor(q, q);
	Tensor3d::mul_dot(*exp.matrix, q, *exp.matrix);
	Tensor3d::floor_tensor(*exp.matrix, *exp.matrix);
	Tensor3d::clamp(*exp.matrix, 0.f, FLT_MAX, *exp.matrix);

	float x = (float)exp2(self.n);
	TensorXL::div_scalar(*exp.scaling_factor, x, *exp.scaling_factor);
	
	return exp;
}

Tensor3d x_int;
Tensor3d exp_int;
TensorXL scaling_return;
scaled_tuple3d Softmax::softmax_forward(Softmax &self, Tensor3d& x, TensorXL& scaling_factor)
{
	//ASSUMPTION x is 12x22x22, scaling factor is 1x1
	x_int = Tensor3d(x);
	if (self.quant_mode == QuantMode::none)
	{
		normal_softmax(self, x_int, x_int);
		scaled_tuple3d rm;
		rm.matrix = &x_int;
		rm.scaling_factor = nullptr;
		return rm;
	}
	//symmetric mode below

	//not same dims
	Tensor3d::div_scalar(x_int, TensorXL::one(scaling_factor), x_int);
	Tensor3d x_int_max(x_int);
	Tensor3d::max(x_int, 1, x_int_max);
	Tensor3d::sub(x_int, x_int_max, x_int);
	
	scaled_tuple3d exp = int_exp(self, x_int, scaling_factor);

	Tensor3d placeholder;
	TensorXL placeholder2;
	Tensor placeholder3;
	exp = QuantAct::QuantAct_forward(*self.act, *exp.matrix, *exp.scaling_factor, placeholder, placeholder2, placeholder3, placeholder3);
	exp_int = Tensor3d(exp.matrix);
	Tensor3d::div_scalar(*exp.matrix, TensorXL::one(*exp.scaling_factor), exp_int);
	Tensor3d exp_int_sum (exp_int);
	Tensor3d::sum(exp_int, 1, exp_int_sum);

	Tensor3d factor (exp_int_sum);
	Tensor3d::reciprocal(exp_int_sum, factor);
	Tensor3d::mul_scalar(factor, exp2f(32), factor);
	Tensor3d::floor_tensor(factor, factor);
	Tensor3d::mul_dot(exp_int, factor, exp_int);
	Tensor3d::div_scalar(exp_int, exp2f(float(32-self.output_bit)), exp_int);
	Tensor3d::floor_tensor(exp_int, exp_int);

	scaled_tuple3d returnme;
	returnme.matrix = &exp_int;
	float sf = 1.f / exp2f((float)self.output_bit);
	Tensor3d::mul_scalar(*returnme.matrix, sf, *returnme.matrix);
	scaling_return = TensorXL(1, 1, sf);
	returnme.scaling_factor = &scaling_return;

	return returnme;
}

void Softmax::normal_softmax(Softmax &self, Tensor3d& src, Tensor3d& dest)
{//according to https ://pytorch.org/docs/stable/generated/torch.nn.Softmax.html?highlight=softmax#torch.nn.Softmax
 // dimention is curretly locked to 1, regarding each row as a unit to perform softmax on.
	unsigned i, j, d;
	for (d = 0; d < Tensor3d::getRows(src); d++)
	{
		for (i = 0; i < Tensor3d::getRows(src); i++)
		{
			//do a softmax on every row.
			float sum = 0;
			for (j = 0; j < Tensor3d::getCols(src); j++)
			{
				sum += exp(Tensor3d::get(src, i, j, d));
			}

			for (j = 0; j < Tensor3d::getCols(src); j++)
			{
				float el = Tensor3d::get(src, i, j, d);
				el = exp(el) / sum;
				Tensor3d::set(dest, i, j, d, el); //copy to local tensor space
			}
		}
	}
}

void Softmax::set_param(preload x_min_n, preload x_max_n, preload act_scaling_factor_n)
{
	act->set_param(x_min_n, x_max_n, act_scaling_factor_n);
}
