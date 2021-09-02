//softmax.h, created by Hunter Messner for the HUBERT project
#ifndef __HUBERT_SOFTMAX_H__
#define __HUBERT_SOFTMAX_H__

#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensor3d.hpp"
#include "hubertEnums.h"

//softmax.h implements the softmax function

class Softmax
{
public:
	//initializer
	Softmax(int output_bit, QuantMode quant_mode = QuantMode::none, ForceDequantMode force_dequant = ForceDequantMode::none);
	~Softmax();
	//member functions
	static scaled_tuple3d int_polynomial(Softmax &self, Tensor3d<float>& x_int, TensorXL<float>& scaling_factor);
	static scaled_tuple3d int_exp(Softmax &self, Tensor3d<float>& x_int, TensorXL<float>& scaling_factor);
	static scaled_tuple3d softmax_forward(Softmax &self, Tensor3d<float>& x_int, TensorXL<float>& scaling_factor);
	void set_param(preload x_min_n, preload x_max_n, preload act_scaling_factor_n);

	static void normal_softmax(Softmax &self, Tensor3d<float>& row, Tensor3d<float>& dest);

	int output_bit;
	QuantMode quant_mode;
	QuantAct* act;
	float x0;
	int n;
	float coef[3];
};
#endif
