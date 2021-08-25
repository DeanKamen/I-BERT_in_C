//quantact_xl.h, created by Hunter Messner for the HUBERT project
#ifndef __HUBERT_QUANTACT_XL_H__
#define __HUBERT_QUANTACT_XL_H__

#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensorXL.hpp"
#include "tensor3dXL.hpp"
#include "tensor_mult.h"
#include <iostream>
#include "hubertEnums.h"
//no typedefs in headers
class QuantAct_XL
{
    public:
    //initializer
    QuantAct_XL(int activation_bit, 
             float act_range_momentum=0.95f,
             bool running_stat=true,
             bool per_channel=false,
             int channel_len= -1,
             QuantMode quant_mode = QuantMode::none);

	~QuantAct_XL();

    //other functions
	scaled_tuple3dXL QuantAct_forward(Tensor3dXL<float>* x,
        TensorXL<float>* pre_act_scaling_factor = nullptr,
        Tensor3dXL<float>* identity = nullptr,
        TensorXL<float>* identity_scaling_factor = nullptr,
        TensorXL<float>* specified_min = nullptr,
        TensorXL<float>* specified_max = nullptr,
		bool testing = false);

    void fix();
    void unfix();

    static TensorXL<float>* symmetric_linear_quantization_params(unsigned num_bits,
                                        TensorXL<float>* saturation_min,
                                        TensorXL<float>* saturation_max,
                                        bool per_channel=false);

    Tensor3dXL<float>* symmetric_quant_forward(Tensor3dXL<float>* x, int k, TensorXL<float>* specified_scale);
    static Tensor3dXL<float>* linear_quantize(Tensor3dXL<float> *x, TensorXL<float>* scale, TensorXL<float>* zero_point);
    Tensor3dXL<float>* fixedpoint_mul(
        Tensor3dXL<float>* pre_act,
        TensorXL<float>* pre_act_scaling_factor,
        int bit_num,
        QuantMode quant_mode,
        TensorXL<float>* z_scaling_factor,
        Tensor3dXL<float>* identity = nullptr,
        TensorXL<float>* identity_scaling_factor = nullptr
    );
	void set_param(preload x_min_n, preload x_max_n, preload act_scaling_factor_n);

    //members
    int activation_bit;
    float act_range_momentum;
    bool running_stat;
    QuantMode quant_mode;
    bool per_channel;

    TensorXL<float>* x_min;//This is only ever of size one during inference at least
    TensorXL<float>* x_max;
    TensorXL<float>* act_scaling_factor;
};

#endif