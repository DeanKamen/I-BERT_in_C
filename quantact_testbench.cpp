#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensor_mult.h"
#include "quantact.h"
#include <iostream>

int main()
{
    float arg1[3] = {5.0533e14f, 1.1046e15f, 2.9980e15f};
    //float *arg1[1] = {arg1};
    Tensor<float>* arg1_t1 = new Tensor(1,3,(float**)arg1);
    Tensor<float>::print(arg1_t1);

    Tensor<float>* arg2 = new Tensor(1,1, 3.3355e-16f);

    scaled_tuple result1;
    QuantAct symmetric (16, 0.95, true, false, -1, QuantMode::symmetric);
    result1 = symmetric.QuantAct_forward(*arg1_t1, arg2, nullptr, nullptr, nullptr, nullptr);
    Tensor<float>::print(result1.matrix);
    Tensor<float>::print(result1.scaling_factor);
}