#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensor_mult.h"
#include "quantact.h"
#include <iostream>
#include "loadTensors.h"
#include "hubertEnums.h"
#include "softmax.h"
#include "testglobals.h"
#include "tensor3d.hpp"
#include "QuantLinear.h"
#include "IntLayerNorm.h"
#include "IntGELU.h"

int main()
{

	
    scaled_tuple3d result1;
	/* //QuantAct + softmax verification
	Tensor3d<float>* matrix3d_testdata = loadGeneric3d("bin/softmax_layer0.bin");
	Tensor<float>* softmax_scaling_factor = new Tensor<float>(1,1, 0.0011662f);
    Softmax testSoftmax (8, QuantMode::symmetric, ForceDequantMode::layernorm);
	testSoftmax.set_param(preload::self_attn__softmax__act__x_min,
		preload::self_attn__softmax__act__x_max,
		preload::self_attn__softmax__act__act_scaling_factor);
    result1 = testSoftmax.softmax_forward(matrix3d_testdata, softmax_scaling_factor);
	*/
	/* //QuantLinear verification
	int thirtytwo = 32;
	Tensor3d<float>* matrix3d_testdata = loadGeneric3d("bin/quantlinear_layer0.bin");
	Tensor<float>* quantlinear_scaling_factor = new Tensor<float>(1, 1, 0.04931505f);
	QuantLinear testQuantLinear(8, &thirtytwo, true, QuantMode::symmetric);
	testQuantLinear.set_param(preload::self_attn__q_proj__fc_scaling_factor, 
		preload::self_attn__q_proj__weight, 
		preload::self_attn__q_proj__bias,
		preload::self_attn__q_proj__bias_integer);
	result1 = testQuantLinear.quantlinear_forward(matrix3d_testdata, quantlinear_scaling_factor);
	*/
	/* //IntLayerNorm Verification
	Tensor3d<float>* matrix3d_testdata = loadGeneric3d("bin/intlayernorm_layer0.bin");
	Tensor<float>* intlayernorm_scaling_factor = new Tensor<float>(1, 1, 7.685552e-06f);
	IntLayerNorm testIntLayerNorm(32, true, QuantMode::symmetric, ForceDequantMode::layernorm);
	testIntLayerNorm.set_param(preload::self_attn_layer_norm__shift, preload::self_attn_layer_norm__weight, preload::self_attn_layer_norm__bias);
	result1 = testIntLayerNorm.intlayernorm_forward(matrix3d_testdata, intlayernorm_scaling_factor);
	printf("RESTULTS START\n");
    Tensor3d<float>::print(result1.matrix);
    Tensor<float>::print(result1.scaling_factor);
	*/
	//IntGELU Verification
	Tensor3d<float>* matrix3d_testdata = loadGeneric3d("bin/intgelu_layer0.bin");
	Tensor<float>* intgelu_scaling_factor = loadGeneric2d("bin/intgelu_sf_layer0.bin");
	IntGELU testintgelu(QuantMode::symmetric, ForceDequantMode::layernorm);
	result1 = testintgelu.intgelu_forward(matrix3d_testdata, intgelu_scaling_factor);
	printf("RESTULTS START\n");
	Tensor3d<float>::print(result1.matrix);
	Tensor<float>::print(result1.scaling_factor);

}