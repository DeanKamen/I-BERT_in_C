//quantact_xl.cpp, created by Hunter Messner for the HUBERT project
#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensorXL.hpp" 
#include "tensor3dXL.hpp" 
#include "tensor_mult.h"
#include "quantact_xl.h"
#include "loadTensors.h"
#include "hubertEnums.h"
#include <iostream>

typedef Tensor3dXL<float> T3d;
typedef TensorXL<float> T2d;
typedef scaled_tuple3dXL tuple;

TensorXL<float> x_min_xl;//This is only ever of size one during inference at least
TensorXL<float> x_max_xl;
TensorXL<float> act_scaling_factor_xl;

QuantAct_XL::QuantAct_XL(int activation_bit_i, 
             float act_range_momentum_i,
             bool running_stat_i,
             bool per_channel_i,
             int channel_len,
             QuantMode quant_mode_i)
{
    activation_bit = activation_bit_i;
    act_range_momentum= act_range_momentum_i;
    running_stat = running_stat_i;
    quant_mode = quant_mode_i;
    per_channel = per_channel_i;

    if(per_channel)
    {
		//assert(channel_len > 0);
		x_min_xl = T2d(1, channel_len, 0.0f);
		x_max_xl = T2d(1, channel_len, 0.0f);
		act_scaling_factor_xl = T2d(1, channel_len, 0.0f);

    }
	//loading xmin and xmax is done by the set param function
}

QuantAct_XL::~QuantAct_XL()
{
	//delete x_min;
	//delete x_max;
	//delete act_scaling_factor;
}

 component tuple QuantAct_XL::QuantAct_forward(
	QuantAct_XL &self,
	T3d &x, 
	T2d &pre_act_scaling_factor,
	T3d &identity,
	T2d &identity_scaling_factor,
	T2d &specified_min,
	T2d &specified_max,
	bool testing)
{
	//identity and x are 22x1x768 or 12x22x22.
	//pre_act_scaling factor is 1x768
	//identity scaling factor is 1x1
#ifndef HLS_SYNTHESIS
    T3d* x_actp = new T3d(&x);
	T3d x_act = *x_actp;
#else
	T3d x_act(x);
#endif
	
    if(identity.null)
    {
        x_act = x;
    }
    else
    {
        T3d::add(x, identity, x_act);
    }

	T2d local_xmin(1, 1, 0.f);
	T2d local_xmax(1, 1, 0.f);

	if (self.running_stat)
	{
		if (!self.per_channel)
		{
			T3d temp(x_act);
			T3d::min(temp, temp);
			T3d::toTwoD(temp, local_xmin);

			T3d temp2(x_act);
			T3d::max(temp2, temp2);
			T3d::toTwoD(temp2, local_xmax);
		}
		else
		{
			//assert(false);
		}

		//Initialization 
		if (T2d::eq(x_min_xl, x_max_xl))
		{
			T2d::add(x_min_xl, local_xmin, x_min_xl);
			T2d::add(x_max_xl, local_xmax, x_max_xl);
		}
		else if (self.act_range_momentum == -1)
		{
			float obj_min = T2d::one(x_min_xl);
			float obj_max = T2d::one(x_max_xl);
			float localmin = T2d::one(local_xmin);
			float localmax = T2d::one(local_xmax);

			if (localmax > obj_max)
			{
				T2d::set(x_max_xl, 0, 0, localmax);
			}
			if (localmin < obj_min)
			{
				T2d::set(x_min_xl, 0, 0, localmin);
			}
		}
		else
		{
			//here I am assuming xmin and xmax are 1x1
			float objmin = T2d::one(x_min_xl);
			float localmin = T2d::one(local_xmin);
			T2d::set(x_min_xl, 0, 0, objmin*self.act_range_momentum + localmin * (1 - self.act_range_momentum));

			float objmax = T2d::one(x_max_xl);
			float localmax = T2d::one(local_xmax);
			T2d::set(x_max_xl, 0, 0, objmax*self.act_range_momentum + localmax * (1 - self.act_range_momentum));
		}
	}

    if(self.quant_mode == QuantMode::none)
    {
        tuple returnme;
        returnme.matrix = &x_act;
        returnme.scaling_factor=nullptr; 
        return returnme;
    }

    if(!specified_min.null) 
		x_min_xl = specified_min;
    if(!specified_max.null) 
		x_min_xl = specified_max;

	act_scaling_factor_xl = *QuantAct_XL::symmetric_linear_quantization_params(self.activation_bit, x_min_xl, x_max_xl, self.per_channel);
    
	if (testing)
	{
		//TensorXL<float>* actsf_v = loadGeneric2d("bin/actsf_verification.bin");
		//TensorXL<float>::eq_verbose(actsf_v, act_scaling_factor);
	}

    T3d* quant_act_int = nullptr;
    if(pre_act_scaling_factor.null)
    {
        quant_act_int = QuantAct_XL::symmetric_quant_forward(x, self.activation_bit, act_scaling_factor_xl);
    }
    else
    {
        quant_act_int = fixedpoint_mul(x, pre_act_scaling_factor, self.activation_bit, self.quant_mode, act_scaling_factor_xl, identity, identity_scaling_factor);
    }

	if (testing)
	{
		//Tensor3dXL<float>* qai_v = loadGeneric3dXL("bin/qai_verification.bin");
		//Tensor3dXL<float>::eq(qai_v, quant_act_int);
	}

    T2d correct_output_scale(act_scaling_factor_xl);
	//correct output scale has just one element while quant act int has 2
    T3d::mul_scalar(*quant_act_int, T2d::one(correct_output_scale), *quant_act_int);
    tuple returnme;
	if (testing)
	{
		//Tensor3dXL<float>* qai_v = loadGeneric3dXL("bin/out_verification.bin");
		//Tensor3dXL<float>::eq(qai_v, quant_act_int);
	}
    returnme.matrix = quant_act_int;
    returnme.scaling_factor = &act_scaling_factor_xl; //global variables persist outside this function
    return returnme;
}

T2d scale_xl;
T2d* QuantAct_XL::symmetric_linear_quantization_params(unsigned num_bits,
                                        T2d& saturation_min,
                                        T2d& saturation_max,
                                        bool per_channel)
{
    /*
    Compute the scaling factor with the given quantization range for symmetric quantization.

    Parameters:
    ----------
    saturation_min: lower bound for quantization range
    saturation_max: upper bound for quantization range
    
    */

    scale_xl = T2d(saturation_min);
    unsigned n =  (unsigned int)exp2( num_bits - 1 ) - 1;
    if (per_channel)
    { // saturation min and max are Rows
		for (unsigned i = 0; i < T2d::getCols(saturation_min); i++)
		{//custom max loop
			float x = fabs(T2d::get(saturation_min, 0, i)); 
			float y = fabs(T2d::get(saturation_max, 0, i));
			if (x > y)
			{
				T2d::set(scale_xl, 0, i, x);
			}
			else
			{
				T2d::set(scale_xl, 0, i, y);
			}
		}
		T2d::clamp(scale_xl, 1e-8f, FLT_MAX, scale_xl);
		T2d::div_scalar(scale_xl, (float)n, scale_xl);
    }
    else
    {//saturation min and max are one element tensors
        T2d::set(scale_xl,0,0, fmax(fabs(T2d::one(saturation_min)), fabs((T2d::one(saturation_max)))));
        T2d::clamp(scale_xl, 1e-8f, FLT_MAX, scale_xl);
        T2d::div_scalar(scale_xl, (float)n, scale_xl);
    }
    return &scale_xl;
}

T3d* QuantAct_XL::symmetric_quant_forward(T3d &x, int k, T2d& specified_scale)
{
    T2d* scale = nullptr;
    if(!specified_scale.null)
    {
        scale = &specified_scale;
    }
    T2d zero_point = T2d(1,1,0.f);

    float n = exp2f(float(k - 1)) - 1;

    T3d* new_quant_x = QuantAct_XL::linear_quantize(x, *scale, zero_point);
    T3d::clamp(*new_quant_x, -n, n-1, *new_quant_x);
    return new_quant_x;
}

T3d x_xl;
T3d* QuantAct_XL::linear_quantize(T3d &x_c, T2d &scale_c, T2d &zero_point)
{
    //scale is 1 when x is truely 3d. When x is 2d, scale is also 2d (or at least broadcastable.)
	T2d scale(scale_c);
	x_xl = T3d(x_c);
	T2d::reciprocal(scale, scale);
	if (T3d::getDepth(x_xl) != 1)
	{
		T3d::mul_scalar(x_xl, T2d::one(scale), x_xl);
	}
	else
	{
		T3d::mul_dot(x_xl, scale, x_xl);
	}
    T3d::add_scalar(x_xl, T2d::one(zero_point), x_xl);
    T3d::roundTensor(x_xl, x_xl);
	
    return &x_xl;
}

T3d output_xl;
T3d* QuantAct_XL::fixedpoint_mul(
        T3d &pre_act,
        T2d &pre_act_scaling_factor,
        int bit_num,
        QuantMode quant_mode,
        T2d &z_scaling_factor,
        T3d &identity,
        T2d &identity_scaling_factor
    )
{
    float n ;
    if (quant_mode == QuantMode::symmetric)
    {
        n = (float)exp2(bit_num - 1) -1;
    }
    else{
        n = (float)exp2(bit_num) - 1;
    }
    T2d space = T2d(1,1,0.f);

    T3d z_int(pre_act);
    T3d::div_dot(pre_act, pre_act_scaling_factor, z_int); 
    T3d::roundTensor(z_int, z_int);

    //the following is in double precision in the code, but I did not make it double precision here
    T2d _A(pre_act_scaling_factor);
    T2d _B(z_scaling_factor);
    T2d new_scale(_A);
    T2d::div_dot(_A, _B, new_scale);
    
    T2d m(new_scale);
    T2d e(new_scale);
    T2d::tensor_frexp(new_scale, m, e);
    output_xl = T3d(z_int);
	
	T2d twos(T3d::getRows(output_xl), T3d::getCols(output_xl), 2.0f);
	T2d::pow_dot(twos, e, twos); //use twos as temp storage
	T3d::div_dot(output_xl, twos, output_xl);
    T3d::mul_dot(output_xl, m, output_xl);
    T3d::roundTensor(output_xl, output_xl);

    if(!identity.null)
    {
        T3d wx_int(identity);
        T3d::div_dot(identity, identity_scaling_factor, identity);
        T3d::roundTensor(identity, wx_int);

        _A = T2d(identity_scaling_factor);
        _B = T2d(z_scaling_factor);
        new_scale = T2d(_A);
        T2d::div_dot(_A, _B, new_scale);
        T2d m1 = T2d(new_scale);
        T2d e1 = T2d(new_scale);
        T2d::tensor_frexp(new_scale, m1, e1);

        T3d output1(wx_int);
        T3d::mul_dot(wx_int, m1, output1);
		twos = T2d(T3d::getRows(output1), T3d::getCols(output1), 2.0f);
        T2d::pow_dot(twos, e1, e1); //use e1 as temp storage
        T3d::div_dot(output1, e1, output1);
        T3d::roundTensor(output1, output1);
        T3d::add(output_xl, output1, output_xl);
    }

    if( bit_num == 4 || bit_num == 8 || bit_num == 16)
    {
        if(quant_mode == QuantMode::symmetric)
        {
            T3d::clamp(output_xl, -n-1, n, output_xl);
            return &output_xl;
        }
        else{
            T3d::clamp(output_xl, 0, n, output_xl);
            return &output_xl;
        }
    }
    else{
        return &output_xl;
    }
}


void QuantAct_XL::set_param(QuantAct_XL &self, preload x_min_n, preload x_max_n, preload act_scaling_factor_n)
{
	x_min_xl = *loadTensorXL(x_min_n);
	x_max_xl = *loadTensorXL(x_max_n);
	act_scaling_factor_xl = *loadTensorXL(act_scaling_factor_n);
}

