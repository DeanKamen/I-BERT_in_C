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

scaled_tuple Softmax::int_polynomial(Tensor<float>* x_int, Tensor<float>* scaling_factor)
{
	Tensor<float>* b_int = new Tensor<float>(scaling_factor);
	Tensor<float>::reciprocal(scaling_factor, b_int);
	Tensor<float>::mul_scalar(b_int, coef[1], b_int);
	Tensor<float>::floor_tensor(b_int, b_int);

	Tensor<float>* c_int = new Tensor<float>(scaling_factor);
	Tensor<float>::pow_scalar(scaling_factor, 2.f, c_int);
	Tensor<float>::reciprocal(c_int, c_int);
	Tensor<float>::mul_scalar(c_int, coef[2], c_int);

	Tensor<float>* z = new Tensor<float>(x_int);
	Tensor<float>::add_scalar(x_int, Tensor<float>::one(b_int), z);
	Tensor<float>::mul_dot(x_int, z, z);
	Tensor<float>::add_scalar(z, Tensor<float>::one(c_int), z);

	Tensor<float>::pow_scalar(scaling_factor, 2, scaling_factor);
	Tensor<float>::mul_scalar(scaling_factor, coef[0], scaling_factor);
	
	scaled_tuple returnme;
	returnme.matrix = z;
	returnme.scaling_factor = scaling_factor;
	return returnme;
}

scaled_tuple Softmax::int_exp(Tensor<float>* x_int, Tensor<float>* scaling_factor)
{
	Tensor<float>* x0_int = new Tensor<float>(scaling_factor);
	Tensor<float>::reciprocal(scaling_factor, x0_int);
	Tensor<float>::mul_scalar(x0_int, x0, x0_int);
	Tensor<float>::floor_tensor(x0_int, x0_int);

	Tensor<float>* temp = new Tensor<float>(x0_int);
	Tensor<float>::mul_scalar(temp, n, temp);
	//not same dims
	Tensor<float>::max_scalar(x_int, Tensor<float>::one(temp), x_int);
	delete temp;

	Tensor<float>* q = new Tensor<float>(x_int);
	//not same dims
	Tensor<float>::div_scalar(q, Tensor<float>::one(x0_int), q);
	Tensor<float>::floor_tensor(q, q);

	Tensor<float>* r = new Tensor<float>(x_int);
	temp = new Tensor<float>(q);
	Tensor<float>::mul_scalar(temp, Tensor<float>::one(x0_int), temp);
	Tensor<float>::sub(x_int, temp, r);
	delete temp;

	scaled_tuple exp = int_polynomial(r, scaling_factor);

	temp = new Tensor<float>(q);
	Tensor<float>::sub_scalar(n, q, q);
	Tensor<float>::exp2_tensor(q,q);
	Tensor<float>::mul_dot(exp.matrix, q, exp.matrix);
	Tensor<float>::floor_tensor(exp.matrix, exp.matrix);
	Tensor<float>::clamp(exp.matrix, 0.f, FLT_MAX, exp.matrix);
	
	float x = (float)exp2(n);
	Tensor<float>::div_scalar(exp.scaling_factor,x,exp.scaling_factor);
	
	return exp;
}


scaled_tuple Softmax::softmax_forward(Tensor<float>* x, Tensor<float>* scaling_factor)
{
	Tensor<float>* x_int = new Tensor<float>(x);
	if (quant_mode == QuantMode::none)
	{
		normal_softmax(x_int, x_int);
		scaled_tuple rm;
		rm.matrix = x_int;
		rm.scaling_factor = nullptr;
		return rm;
	}
	//symmetric mode below

	//not same dims
	Tensor<float>::div_scalar(x_int, Tensor<float>::one(scaling_factor), x_int);
	Tensor<float>* x_int_max = new Tensor<float>(x_int);
	Tensor<float>::max(x_int, 1, x_int_max);
	Tensor<float>::sub(x_int, x_int_max, x_int);
	
	scaled_tuple exp = int_exp(x_int, scaling_factor);


	exp = act->QuantAct_forward(exp.matrix, exp.scaling_factor);
	Tensor<float>* exp_int = new Tensor<float>(exp.matrix);
	Tensor<float>::div_scalar(exp.matrix, Tensor<float>::one(exp.scaling_factor), exp_int);
	Tensor<float>* exp_int_sum = new Tensor<float>(exp_int);
	Tensor<float>::sum(exp_int, 1, exp_int_sum);

	Tensor<float>* factor = new Tensor<float>(exp_int_sum);
	Tensor<float>::reciprocal(exp_int_sum, factor);
	Tensor<float>::mul_scalar(factor, exp2(32), factor);
	Tensor<float>::floor_tensor(factor, factor);

	Tensor<float>::mul_scalar(exp_int, Tensor<float>::one(factor), exp_int);
	Tensor<float>::div_scalar(exp_int, exp2(32-output_bit), exp_int);
	Tensor<float>::floor_tensor(exp_int, exp_int);

	scaled_tuple returnme;
	returnme.matrix = new Tensor<float>(exp_int);
	float sf = 1.f / exp2(output_bit);
	Tensor<float>::mul_scalar(exp_int, sf, returnme.matrix);
	returnme.scaling_factor = new Tensor<float>(1, 1, sf);
	return returnme;
}

void Softmax::normal_softmax(Tensor<float>* row, Tensor<float>* dest)
{//according to https ://pytorch.org/docs/stable/generated/torch.nn.Softmax.html?highlight=softmax#torch.nn.Softmax
	unsigned i, j;
	for (i = 0; i < Tensor<float>::getRows(row); i++)
	{
		//do a softmax on every row.
		float sum = 0;
		for (j = 0; j < Tensor<float>::getCols(row); j++)
		{
			sum += exp(Tensor<float>::get(row, i, j));
		}
		
		for (j = 0; j < Tensor<float>::getCols(row); j++)
		{
			float el = Tensor<float>::get(row, i, j);
			el = exp(el) / sum;
			Tensor<float>::set(dest, i, j, el); //copy to local tensor space
		}
	}
}
