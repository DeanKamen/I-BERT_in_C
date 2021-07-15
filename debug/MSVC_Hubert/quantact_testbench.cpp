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

int main()
{
    float r1[3] = {1.f,2.f,3.f};
	float r2[3] = { 1.f,2.f,3.f };
	float r3[3] = { 1.f,2.f,3.f };
    float *test3[3] = {r1, r2, r3};
    Tensor<float>* ptest3 = new Tensor<float>(3,3,(float**)test3);
    Tensor<float>::print(ptest3);

	float tr1[3] = { 1.f, 1.f ,1.f };
	float *test1[1] = { tr1 };
	Tensor<float>* ptest1 = new Tensor<float>(1, 3, (float**)test1);
	Tensor<float>::print(ptest1);

	Tensor<float>::add(ptest3, ptest1, ptest3);
	Tensor<float>::print(ptest3);

    Tensor<float>* arg2 = new Tensor<float>(1,1, 0.0009f);

	Tensor<float>* softmax_testdata = new Tensor<float>(22, 22, (float**)psoftmax);
	Tensor<float>::print(softmax_testdata);

    scaled_tuple result1;
    Softmax testSoftmax (16, QuantMode::symmetric, ForceDequantMode::layernorm);
    result1 = testSoftmax.softmax_forward(softmax_testdata, arg2);
	
	printf("RESTULTS START\n");
    Tensor<float>::print(result1.matrix);
    Tensor<float>::print(result1.scaling_factor);
}