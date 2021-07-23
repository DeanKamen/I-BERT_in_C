//created by Hunter Messner (messn036) on 7/23/21

#ifndef __HUBERT_INTLAYERNORM_H__
#define __HUBERT_INTLAYERNORM_H__

#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensor3d.hpp"
#include "hubertEnums.h"

//IntGELU.h implements the GELU layer. 


//TODO: There is a branch in the code that requires much more work to write, but it doesnt seem used.
//commeneted elements and functions would be used in that branch.
class IntLayerNorm
{
public:
	//initializer
	IntLayerNorm(int output_bit, bool overflow_handling = true, QuantMode quant_mode = QuantMode::none, ForceDequantMode force_dequant = ForceDequantMode::none);
	//member functions
	//void set_shift(Tensor3d<float>* y_int); 
	//void overflow_fallback(Tensor3d<float>* y_int);
	scaled_tuple3d intlayernorm_forward(Tensor3d<float>* x, Tensor<float>* scaling_factor = nullptr);

	QuantMode quant_mode;
	Tensor<float>* shift;
	Tensor<float>* weight;
	Tensor<float>* bias;
	bool overflow_handling;
	int output_bit;
	//Tensor<float>* dim_sqrt;
	QuantAct* activation;
	float eps = 1e-5f;
};
#endif
