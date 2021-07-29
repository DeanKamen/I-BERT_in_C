//created by Hunter Messner (messn036) on 7/22/21

#ifndef __HUBERT_INTGELU_H__
#define __HUBERT_INTGELU_H__

#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensor3d.hpp"
#include "hubertEnums.h"

//IntGELU.h implements the GELU layer. 

class IntGELU
{
public:
	//initializer
	IntGELU(QuantMode quant_mode = QuantMode::none, ForceDequantMode force_dequant = ForceDequantMode::none);
	//member functions
	scaled_tuple3d int_erf(Tensor3d<float>* x_int, Tensor<float>* scaling_factor);
	scaled_tuple3d intgelu_forward(Tensor3d<float>* x, Tensor<float>* scaling_factor = nullptr);
	void normal_gelu(Tensor3d<float>* x_in, Tensor3d<float>* x_out);

	QuantMode quant_mode;
	float k;
	int n;
	float coeff[3];
};
#endif
