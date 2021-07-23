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

int main()
{
	Tensor<float>::print(loadTensor(preload::self_attn_layer_norm__weight));

    Tensor<float>* arg2 = new Tensor<float>(1,1, 0.00094321f);

	Tensor3d<float>* softmax_testdata = loadSoftmax();
    scaled_tuple3d result1;
    Softmax testSoftmax (16, QuantMode::symmetric, ForceDequantMode::layernorm);
    result1 = testSoftmax.softmax_forward(softmax_testdata, arg2);
	
	printf("RESTULTS START\n");
    Tensor3d<float>::print(result1.matrix);
    Tensor<float>::print(result1.scaling_factor);
}