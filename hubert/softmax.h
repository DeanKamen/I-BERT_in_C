//softmax.h, created by Hunter Messner for the HUBERT project
#ifndef __HUBERT_SOFTMAX_H__
#define __HUBERT_SOFTMAX_H__

#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.h" 
#include "tensor3d.h"
#include "hubertEnums.h"

//softmax.h implements the softmax function

class Softmax
{
public:
	//initializer
	Softmax(int output_bit, QuantMode quant_mode = QuantMode::none, ForceDequantMode force_dequant = ForceDequantMode::none);
	~Softmax();
	//member functions
	static scaled_tuple3d int_polynomial(Softmax &self, Tensor3d& x_int, TensorXL& scaling_factor);
	static scaled_tuple3d int_exp(Softmax &self, Tensor3d& x_int, TensorXL& scaling_factor);
	static scaled_tuple3d softmax_forward(Softmax &self, Tensor3d& x_int, TensorXL& scaling_factor);
	void set_param(preload x_min_n, preload x_max_n, preload act_scaling_factor_n);

	static void normal_softmax(Softmax &self, Tensor3d& row, Tensor3d& dest);

	int output_bit;
	QuantMode quant_mode;
	QuantAct* act;
	float x0;
	int n;
	float coef[3];
};
#endif
