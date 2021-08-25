//quantact_testbench.cpp, created by Hunter Messner for the HUBERT project
//actually a testbench for all of the modules
#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensor_mult.h"
#include "quantact_xl.h"
#include "loadTensors.h"
#include "hubertEnums.h"
#include "tensors.hpp" 
#include "tensor3d.hpp"
#include "tensorXL.hpp"
#include "tensor3dXL.hpp"
//#include "softmax.h"
//#include "quantact.h"
//#include "QuantLinear.h"
//#include "IntLayerNorm.h"
//#include "IntGELU.h"
//#include "multiheadAttention.h"
//#include "sentence_encoder_layer.h"

class exampleclass
{
public:
	exampleclass(int init);
	static void setme(exampleclass* inst, TensorXL<float> &x_max, Tensor3dXL<float> &x_min, int set);
	int member_var;
	QuantMode quant_mode;
	//TensorXL<float> x_min; //will throw errors
};

void exampleclass::setme(exampleclass* inst, TensorXL<float> &x_max, Tensor3dXL<float> &x_min, int set)
{
	inst->member_var = set;
	TensorXL<float>::set(x_max, 0, 0, 0.f);
	Tensor3dXL<float>::set(&x_min, 0, 0, 0, 0.f);
}

exampleclass::exampleclass(int init)
{
	member_var = init;
}

component void example_forward(exampleclass* inst)
{
	Tensor3dXL<float> x_min;
	TensorXL<float> x_max;
	exampleclass::setme(inst, x_max, x_min,10);
}

int main()
{   
	exampleclass* instance = new exampleclass(5);
	int matrix[1][32];
	matrix[0][0] = 5;
	//example_forward(instance);
	printf("%d", instance->member_var);
	scaled_tuple3dXL result1;
	
	
	//QuantAct_XL verification
	Tensor3dXL<float>* matrix3d_testdata = loadGeneric3dXL("bin/quantact_layer0.bin");
	TensorXL<float>* quantact_scaling_factor = loadGeneric2d("bin/quantact_sf_layer0.bin");
	QuantAct_XL testQuantAct(8, 0.95f, true, false, -1, QuantMode::symmetric);
	QuantAct_XL::set_param(testQuantAct, preload::self_attn__q_proj_act__x_min,
		preload::self_attn__q_proj_act__x_max,
		preload::self_attn__q_proj_act__act_scaling_factor);
	TensorXL<float> nullb;
	Tensor3dXL<float> null3;
	result1 = QuantAct_XL::QuantAct_forward(testQuantAct, *matrix3d_testdata, *quantact_scaling_factor, null3, nullb, nullb, nullb);
	Tensor3dXL<float>::print(result1.matrix);
	delete matrix3d_testdata, quantact_scaling_factor;

	//QuantAct + softmax verification
	/*
	scaled_tuple3d softmax_result;
	Tensor3d<float>* matrix3d_testdata = loadGeneric3d("bin/softmax_layer0.bin");
	TensorXL<float>* softmax_scaling_factor = new TensorXL<float>(1,1, 0.0011662f);
    Softmax testSoftmax (8, QuantMode::symmetric, ForceDequantMode::layernorm);
	testSoftmax.set_param(preload::self_attn__softmax__act__x_min,
		preload::self_attn__softmax__act__x_max,
		preload::self_attn__softmax__act__act_scaling_factor);
    softmax_result = testSoftmax.softmax_forward(matrix3d_testdata, softmax_scaling_factor);
	delete matrix3d_testdata, softmax_scaling_factor;
	*/
	/*
	 //QuantLinear verification
	int thirtytwo = 32;
	Tensor3dXL<float>* matrix3d_testdata = loadGeneric3dXL("bin/quantlinear_layer0.bin");
	TensorXL<float>* quantlinear_scaling_factor = new TensorXL<float>(1, 1, 0.04931505f);
	QuantLinear testQuantLinear(8, &thirtytwo, true, QuantMode::symmetric);
	testQuantLinear.set_param(preload::self_attn__q_proj__fc_scaling_factor, 
		preload::self_attn__q_proj__weight, 
		preload::self_attn__q_proj__bias);
	result1 = testQuantLinear.quantlinear_forward(matrix3d_testdata, quantlinear_scaling_factor);
	*/
	/*
	//IntLayerNorm Verification
	Tensor3dXL<float>* matrix3d_testdata = loadGeneric3dXL("bin/intlayernorm_layer0.bin");
	TensorXL<float>* intlayernorm_scaling_factor = new TensorXL<float>(1, 1, 7.685552e-06f);
	IntLayerNorm testIntLayerNorm(32, true, QuantMode::symmetric, ForceDequantMode::layernorm);
	testIntLayerNorm.set_param(preload::self_attn_layer_norm__shift, preload::self_attn_layer_norm__weight, preload::self_attn_layer_norm__bias);
	result1 = testIntLayerNorm.intlayernorm_forward(matrix3d_testdata, intlayernorm_scaling_factor);
	printf("RESTULTS START\n");
    Tensor3dXL<float>::print(result1.matrix);
    TensorXL<float>::print(result1.scaling_factor);
	*/
	/*
	//IntGELU Verification
	Tensor3dXL<float>* matrix3d_testdata = loadGeneric3dXL("bin/intgelu_layer0.bin");
	TensorXL<float>* intgelu_scaling_factor = loadGeneric2d("bin/intgelu_sf_layer0.bin");
	IntGELU testintgelu(QuantMode::symmetric, ForceDequantMode::layernorm);
	result1 = testintgelu.intgelu_forward(matrix3d_testdata, intgelu_scaling_factor);
	printf("RESTULTS START\n");
	Tensor3dXL<float>::print(result1.matrix);
	TensorXL<float>::print(result1.scaling_factor);
	*/
	
	/*
	Tensor3dXL<float>* q_testdata = loadGeneric3dXL("bin/q_multihead0.bin");
	Tensor3dXL<float>* k_testdata = loadGeneric3dXL("bin/k_multihead0.bin");
	Tensor3dXL<float>* v_testdata = loadGeneric3dXL("bin/v_multihead0.bin");
	TensorXL<float>* q_scaling_factor = loadGeneric2d("bin/qsf_multihead0.bin");
	TensorXL<float>* k_scaling_factor = loadGeneric2d("bin/vsf_multihead0.bin");
	TensorXL<float>* v_scaling_factor = loadGeneric2d("bin/ksf_multihead0.bin");
	multiheadAttention testMULTIHEAD(768, 12, -1, -1, 0.1f, true, false, false, true, 
		false, 0, 8, QuantMode::symmetric, ForceDequantMode::layernorm, true);
	result1 = testMULTIHEAD.multiheadAttention_forward(q_testdata, k_testdata, v_testdata, nullptr, nullptr, false, false, nullptr, false, false,
		q_scaling_factor, k_scaling_factor, v_scaling_factor);
	*/

	/*
	//SEL Verification
	Tensor3dXL<float>* matrix3d_testdata = loadGeneric3dXL("bin/tsel_input.bin");
	sentenceEncoderLayer testSEL(768, 3072, 12, 0.1f, 0.1f, 0.f, nullptr, false, 0.0f, 8, QuantMode::symmetric, ForceDequantMode::layernorm, false);
	result1 = testSEL.sel_forward(matrix3d_testdata, nullptr);
	printf("RESTULTS START\n");
	Tensor3dXL<float>::print(result1.matrix);
	TensorXL<float>::print(result1.scaling_factor);
	*/

}

