//quantact_xl.h, created by Hunter Messner for the HUBERT project
#ifndef __HUBERT_QUANTACT_XL_H__
#define __HUBERT_QUANTACT_XL_H__

#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensorXL.h"
#include "tensor3dXL.h"
#include <iostream>
#include "hubertEnums.h"
//no typedefs in headers
class QuantAct_XL
{
    public:
    //initializer
    QuantAct_XL(
		int activation_bit, 
		float act_range_momentum=0.95f,
		bool running_stat=true,
		bool per_channel=false,
		int channel_len= -1,
		QuantMode quant_mode = QuantMode::none);

	~QuantAct_XL();

    //other functions
	static scaled_tuple3dXL QuantAct_forward(
		QuantAct_XL &self,
		Tensor3dXL &x,
        TensorXL &pre_act_scaling_factor,
        Tensor3dXL &identity,
        TensorXL &identity_scaling_factor,
        TensorXL &specified_min,
        TensorXL &specified_max,
		bool testing = false);

    static TensorXL* symmetric_linear_quantization_params(
		unsigned num_bits,
        TensorXL &saturation_min,
        TensorXL &saturation_max,
        bool per_channel=false);

    static Tensor3dXL* symmetric_quant_forward(Tensor3dXL &x, int k, TensorXL &specified_scale);
    static Tensor3dXL* linear_quantize(Tensor3dXL &x, TensorXL &scale, TensorXL &zero_point);
    static Tensor3dXL* fixedpoint_mul(
        Tensor3dXL &pre_act,
        TensorXL &pre_act_scaling_factor,
        int bit_num,
        QuantMode quant_mode,
        TensorXL &z_scaling_factor,
        Tensor3dXL &identity,
        TensorXL &identity_scaling_factor
    );
	static void set_param(QuantAct_XL &self, preload x_min_n, preload x_max_n, preload act_scaling_factor_n);

    //members
    int activation_bit;
    float act_range_momentum;
    bool running_stat;
    QuantMode quant_mode;
    bool per_channel;
};

#endif