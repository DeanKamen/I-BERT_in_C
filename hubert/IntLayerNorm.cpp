//IntLayerNorm.cpp, created by Hunter Messner for the HUBERT project

#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.h" 
#include <iostream>
#include "quantact.h"
#include "loadTensors.h"
#include "hubertEnums.h"
#include "IntLayerNorm.h"

TensorXL shift;
TensorXL weight;
TensorXL bias;

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
	//delete activation;
	//delete shift;
	//delete weight;
	//delete bias;
}

scaled_tuple3dXL IntLayerNorm::intlayernorm_forward(IntLayerNorm& self, Tensor3dXL& x, TensorXL& scaling_factor)
{
	//ASSUMPTION: x is 22x1x768 and scaling factor is 1x1
	if (self.quant_mode == QuantMode::none)
	{
		Tensor3dXL mean (x);
		Tensor3dXL::mean(x, mean);
		Tensor3dXL y(x);
		//custom 3d subtraction because none of my functions would work.
		for (unsigned d = 0; d < Tensor3dXL::getDepth(y); d++)
		{
			TensorXL::sub_scalar(Tensor3dXL::get(x, d), TensorXL::one(Tensor3dXL::get(mean,d)), Tensor3dXL::get(y, d));
		}

		Tensor3dXL var(y);
		Tensor3dXL::pow_scalar(y, 2, var);
		Tensor3dXL::mean(var, var);
		Tensor3dXL::add_scalar(var, self.eps, var);
		Tensor3dXL::sqrt_tensor(var, var);
		//a custom div loop
		for (unsigned d = 0; d < Tensor3dXL::getDepth(x); d++)
		{
			TensorXL::div_scalar(Tensor3dXL::get(y, d), TensorXL::one(Tensor3dXL::get(var, d)), Tensor3dXL::get(x, d));
		}
		Tensor3dXL::mul_dot(x, weight, x);
		Tensor3dXL::add(x, bias, x);

		scaled_tuple3dXL returnme;
		returnme.matrix = &x;
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