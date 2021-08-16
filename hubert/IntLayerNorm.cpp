#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensor_mult.h"
#include <iostream>
#include "quantact.h"
#include "loadTensors.h"
#include "hubertEnums.h"
#include "IntLayerNorm.h"

IntLayerNorm::IntLayerNorm(int output_bit_i, bool overflow_handling_i, QuantMode quant_mode_i, ForceDequantMode force_dequant)
{
	quant_mode = quant_mode_i;
	if (force_dequant == ForceDequantMode::nonlinear || force_dequant == ForceDequantMode::layernorm)
	{
		quant_mode = QuantMode::none;
	}

	output_bit = output_bit_i;

	assert(quant_mode == QuantMode::none); // if this is ever false, write the rest of the program
	activation = new QuantAct(output_bit);
}

IntLayerNorm::~IntLayerNorm()
{
	delete activation;
	delete shift;
	delete weight;
	delete bias;
}

scaled_tuple3dXL IntLayerNorm::intlayernorm_forward(Tensor3dXL<float>* x, TensorXL<float>* scaling_factor)
{
	//ASSUMPTION: x is 22x1x768 and scaling factor is 1x1
	if (quant_mode == QuantMode::none)
	{
		Tensor3dXL<float>* mean = new Tensor3dXL(x);
		Tensor3dXL<float>::mean(x, mean);
		Tensor3dXL<float>* y = new Tensor3dXL(x);
		//custom 3d subtraction because none of my functions would work.
		for (unsigned d = 0; d < Tensor3dXL<float>::getDepth(y); d++)
		{
			TensorXL<float>::sub_scalar(Tensor3dXL<float>::get(x, d), TensorXL<float>::one(Tensor3dXL<float>::get(mean,d)), Tensor3dXL<float>::get(y, d));
		}
		delete mean;

		Tensor3dXL<float>* var = new Tensor3dXL(y);
		Tensor3dXL<float>::pow_scalar(y, 2, var);
		Tensor3dXL<float>::mean(var, var);
		Tensor3dXL<float>::add_scalar(var, eps, var);
		Tensor3dXL<float>::sqrt_tensor(var, var);
		//a custom div loop
		for (unsigned d = 0; d < Tensor3dXL<float>::getDepth(x); d++)
		{
			TensorXL<float>::div_scalar(Tensor3dXL<float>::get(y, d), TensorXL<float>::one(Tensor3dXL<float>::get(var, d)), Tensor3dXL<float>::get(x, d));
		}
		delete y;
		delete var;
		Tensor3dXL<float>::mul_dot(x, weight, x);
		Tensor3dXL<float>::add(x, bias, x);

		scaled_tuple3dXL returnme;
		returnme.matrix = x;
		returnme.scaling_factor = nullptr;
		return returnme;
	}
	else
	{
		//Hunter didnt write this part for expediency
		assert(false);
		scaled_tuple3dXL bob;
		bob.matrix = nullptr;
		bob.scaling_factor = nullptr;
		return bob;
	}
}

void IntLayerNorm::set_param(preload shift_n, preload weight_n, preload bias_n)
{
	shift = loadTensorXL(shift_n); 
	weight = loadTensorXL(weight_n);
	bias = loadTensorXL(bias_n);
}