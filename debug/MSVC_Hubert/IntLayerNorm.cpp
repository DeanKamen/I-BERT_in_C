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

	shift = loadTensor(preload::self_attn_layer_norm__shift); //TODO: if multiple layerNORMS, make this a parameter
	weight = loadTensor(preload::self_attn_layer_norm__weight); //TODO: create a new function called set_param in which we pass the weights to load
	bias = loadTensor(preload::self_attn_layer_norm__bias);
	output_bit = output_bit_i;

	assert(quant_mode == QuantMode::none); // if this is ever false, write the rest of the program
	activation = new QuantAct(output_bit);
}

scaled_tuple3d IntLayerNorm::intlayernorm_forward(Tensor3d<float>* x, Tensor<float>* scaling_factor)
{
	if (quant_mode == QuantMode::none)
	{
		Tensor3d<float>* mean = new Tensor3d(x);
		Tensor3d<float>::mean(x, mean);
		Tensor3d<float>* y = new Tensor3d(x);
		//custom 3d subtraction because none of my functions would work.
		for (unsigned d = 0; d < Tensor3d<float>::getDepth(y); d++)
		{
			Tensor<float>::sub_scalar(Tensor3d<float>::get(x, d), Tensor<float>::one(Tensor3d<float>::get(mean,d)), Tensor3d<float>::get(y, d));
		}
		Tensor3d<float>* var = new Tensor3d(y);
		Tensor3d<float>::pow_scalar(y, 2, var);
		Tensor3d<float>::mean(var, var);
		Tensor3d<float>::add_scalar(var, eps, var);
		Tensor3d<float>::sqrt_tensor(var, var);
		//a custom div loop
		for (unsigned d = 0; d < Tensor3d<float>::getDepth(x); d++)
		{
			Tensor<float>::div_scalar(Tensor3d<float>::get(y, d), Tensor<float>::one(Tensor3d<float>::get(var, d)), Tensor3d<float>::get(x, d));
		}
		Tensor3d<float>::mul_dot(x, weight, x);
		Tensor3d<float>::add(x, bias, x);
		
		scaled_tuple3d returnme;
		returnme.matrix = x;
		returnme.scaling_factor = nullptr;
		return returnme;
	}
	else
	{
		assert(false);
		scaled_tuple3d bob;
		bob.matrix = nullptr;
		bob.scaling_factor = nullptr;
		return bob;
	}
}
