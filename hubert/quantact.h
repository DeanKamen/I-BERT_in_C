//quantact.h, created by Hunter Messner for the HUBERT project
#ifndef __HUBERT_QUANTACT_H__
#define __HUBERT_QUANTACT_H__

#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensorXL.hpp"
#include "tensor3dXL.hpp"
#include "tensor_mult.h"
#include <iostream>
#include "hubertEnums.h"

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

	~QuantAct();

    //other functions
	static scaled_tuple3d QuantAct_forward(
		QuantAct &self,
		Tensor3d<float>& x,
        TensorXL<float>& pre_act_scaling_factor,
        Tensor3d<float>& identity,
        TensorXL<float>& identity_scaling_factor,
        Tensor<float>& specified_min,
        Tensor<float>& specified_max);

    void fix();
    void unfix();

    static TensorXL<float>* symmetric_linear_quantization_params(
		unsigned num_bits,
        Tensor<float>& saturation_min,
        Tensor<float>& saturation_max,
        bool per_channel=false);

    static Tensor3d<float>* symmetric_quant_forward(QuantAct &self, Tensor3d<float>& x, int k, TensorXL<float>& specified_scale);
    static Tensor3d<float>* linear_quantize(Tensor3d<float>& x, TensorXL<float>& scale, TensorXL<float>& zero_point);
    static Tensor3d<float>* fixedpoint_mul(
        Tensor3d<float>& pre_act,
        TensorXL<float>& pre_act_scaling_factor,
        int bit_num,
        QuantMode quant_mode,
        TensorXL<float>& z_scaling_factor,
        Tensor3d<float>& identity,
        TensorXL<float>& identity_scaling_factor
    );
	void set_param(preload x_min_n, preload x_max_n, preload act_scaling_factor_n);

    //members
    int activation_bit;
    float act_range_momentum;
    bool running_stat;
    QuantMode quant_mode;
    bool per_channel; //must be false, true implies 3d matrixes
};

#endif