#ifndef __HUBERT_QUANTACT_H__
#define __HUBERT_QUANTACT_H__

#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensor_mult.h"
#include <iostream>

struct scaled_tuple
{//to get the most fidelity out of the translation, I make
 //a struct that emulates the returned tuple of most forwards
    Tensor<float>* matrix;
    Tensor<float>* scaling_factor;
};

enum class QuantMode {none, symmetric};


class QuantAct
{
    public:
    //initializer
    QuantAct(int activation_bit, 
             float act_range_momentum=0.95f,
             bool running_stat=true,
             bool per_channel=false,
             int channel_len= -1,
             QuantMode quant_mode = QuantMode::none);

    //other functions
    scaled_tuple QuantAct_forward(Tensor<float> x, 
                              Tensor<float>* pre_act_scaling_factor = nullptr,
                              Tensor<float>* identity = nullptr,
                              Tensor<float>* identity_scaling_factor = nullptr,
                              Tensor<float>* specified_min = nullptr,
                              Tensor<float>* specified_max = nullptr);
    void fix();
    void unfix();
    Tensor<float>* symmetric_linear_quantization_params(unsigned num_bits,
                                        float saturation_min,
                                        float saturation_max,
                                        bool per_channel=false);

    Tensor<float>* symmetric_quant_forward(Tensor<float> x, int k, Tensor<float>* specified_scale);
    Tensor<float>* linear_quantize(Tensor<float> *x, Tensor<float>* scale, Tensor<float>* zero_point);
    Tensor<float>* fixedpoint_mul(
        Tensor<float> pre_act,
        Tensor<float>* pre_act_scaling_factor,
        int bit_num,
        QuantMode quant_mode,
        Tensor<float>* z_scaling_factor,
        Tensor<float>* identity = nullptr,
        Tensor<float>* identity_scaling_factor = nullptr
    );
    Tensor<float>* batch_frexp(Tensor<float> x, int max_bit=31);

    //members
    int activation_bit;
    float act_range_momentum;
    bool running_stat;
    QuantMode quant_mode;
    bool per_channel; //must be false, true implies 3d matrixes

    //TODO: convert to float
    Tensor<float>* x_min;//This is only ever of size one during inference at least
    Tensor<float>* x_max;
    Tensor<float>* act_scaling_factor;
};

#endif