//created by Hunter Messner (messn036) on 7/22/21

#ifndef __HUBERT_INTGELU_H__
#define __HUBERT_INTGELU_H__

#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.h" 
#include "tensor3d.h"
#include "hubertEnums.h"

//IntGELU.h implements the GELU layer. 

class IntGELU
{
public:
	//initializer
	IntGELU(QuantMode quant_mode = QuantMode::none, ForceDequantMode force_dequant = ForceDequantMode::none);
	//member functions
	static scaled_tuple3dXL int_erf(IntGELU& self, Tensor3dXL& x_int, TensorXL& scaling_factor);
	static scaled_tuple3dXL intgelu_forward(IntGELU& self, Tensor3dXL& x, TensorXL& scaling_factor);
	static void normal_gelu(Tensor3dXL& x_in, Tensor3dXL& x_out);

	QuantMode quant_mode;
	float k;
	int n;
	double coeff[3];
};
#endif
