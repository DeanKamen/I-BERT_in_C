#ifndef __HUBERT_SOFTMAX_H__
#define __HUBERT_SOFTMAX_H__

#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensor_mult.h"
#include "hubertEnums.h"

//softmax.h implements the softmax function

class Softmax
{
public:
	//initializer
	Softmax(int output_bit, QuantMode quant_mode = QuantMode::none, ForceDequantMode force_dequant = ForceDequantMode::none);
	//member functions
	scaled_tuple3d int_polynomial(Tensor3d<float>* x_int, Tensor<float>* scaling_factor);
	scaled_tuple3d int_exp(Tensor3d<float>* x_int, Tensor<float>* scaling_factor);
	scaled_tuple3d softmax_forward(Tensor3d<float>* x_int, Tensor<float>* scaling_factor);

	void normal_softmax(Tensor3d<float>* row, Tensor3d<float>* dest);

	int output_bit;
	QuantMode quant_mode;
	QuantAct* act;
	float x0;
	int n;
	float coef[3];
};
#endif
