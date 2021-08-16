#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensor_mult.h"
#include <iostream>
#include "quantact.h"
#include "loadTensors.h"
#include "hubertEnums.h"
#include "crosstype_tensors.h"

typedef Tensor3d<float> T3d;
typedef Tensor<float> T2d;
typedef TensorXL<float> scalar;
typedef scaled_tuple3d tuple;

QuantAct::QuantAct(int activation_bit_i, 
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
		assert(channel_len > 0);
		x_min = new T2d(1, channel_len, 0.0f);
		x_max = new T2d(1, channel_len, 0.0f);
		act_scaling_factor = new scalar(1, channel_len, 0.0f);

    }
	//loading xmin and xmax is done by the set param function
}

QuantAct::~QuantAct()
{
	delete x_min;
	delete x_max;
	delete act_scaling_factor;
}

void QuantAct::fix()
{
    running_stat = false;
}
void QuantAct::unfix()
{
    running_stat=true;
}

tuple QuantAct::QuantAct_forward(T3d* x, 
                              scalar* pre_act_scaling_factor,
                              T3d* identity,
                              scalar* identity_scaling_factor,
                              T2d* specified_min,
                              T2d* specified_max)
{
	//identity and x are 22x1x768 or 12x22x22. TODO:make seperte function for 12x22x22
	//pre_act_scaling factor is 1x768
	//identity scaling factor is 1x1
    T3d* x_act = new T3d(x);
    if(identity == nullptr)
    {
        x_act = x;
    }
    else
    {
        T3d::add(x, identity, x_act);
    }

	T2d* local_xmin = new T2d(1, 1, 0.f);
	T2d* local_xmax = new T2d(1, 1, 0.f);

	if (running_stat)
	{
		if (!per_channel)
		{
			T3d* temp = new T3d(x_act);
			T3d::min(temp, temp);
			T3d::toTwoD(temp, local_xmin);
			delete temp;

			temp = new T3d(x_act);
			T3d::max(temp, temp);
			T3d::toTwoD(temp, local_xmax);
			delete temp;
		}
		else
		{
			//TODO: 3d matrix support
			assert(false);
		}

		//Initialization 
		if (T2d::eq(x_min, x_max))
		{
			T2d::add(x_min, local_xmin, x_min);
			T2d::add(x_max, local_xmax, x_max);
		}
		else if (act_range_momentum == -1)
		{
			float obj_min = T2d::one(x_min);
			float obj_max = T2d::one(x_max);
			float localmin = T2d::one(local_xmin);
			float localmax = T2d::one(local_xmax);

			if (localmax > obj_max)
			{
				T2d::set(x_max, 0, 0, localmax);
			}
			if (localmin < obj_min)
			{
				T2d::set(x_min, 0, 0, localmin);
			}
		}
		else
		{
			//here I am assuming xmin and xmax are 1x1
			float objmin = T2d::one(x_min);
			float localmin = T2d::one(local_xmin);
			T2d::set(x_min, 0, 0, objmin*act_range_momentum + localmin * (1 - act_range_momentum));

			float objmax = T2d::one(x_max);
			float localmax = T2d::one(local_xmax);
			T2d::set(x_max, 0, 0, objmax*act_range_momentum + localmax * (1 - act_range_momentum));
		}
	}
	delete local_xmin;
	delete local_xmax;

    if(quant_mode == QuantMode::none)
    {
        tuple returnme;
        returnme.matrix = x_act;
        returnme.scaling_factor=nullptr; 
        return returnme;
    }

    if(specified_min != nullptr) 
    x_min = specified_min;
    if(specified_max != nullptr) 
    x_min = specified_max;

    act_scaling_factor = QuantAct::symmetric_linear_quantization_params(activation_bit, x_min, x_max, per_channel);
    
    T3d* quant_act_int = nullptr;
    if(pre_act_scaling_factor == nullptr)
    {
        quant_act_int = QuantAct::symmetric_quant_forward(x, activation_bit, act_scaling_factor);
    }
    else
    {
        quant_act_int = fixedpoint_mul(x, pre_act_scaling_factor, activation_bit, quant_mode, act_scaling_factor, identity, identity_scaling_factor);
    }

    scalar* space = new scalar(1,1, 0.f);
    scalar* correct_output_scale = new scalar(act_scaling_factor);
	delete space;
	//correct output scale has just one element while quant act int has 2
    T3d::mul_scalar(quant_act_int, scalar::one(correct_output_scale), quant_act_int);
	delete correct_output_scale;
    tuple returnme;
    returnme.matrix = quant_act_int;
    returnme.scaling_factor = act_scaling_factor;
    return returnme;
}

scalar* QuantAct::symmetric_linear_quantization_params(unsigned num_bits,
                                        T2d* saturation_min,
                                        T2d* saturation_max,
                                        bool per_channel)
{
    /*
    Compute the scaling factor with the given quantization range for symmetric quantization.

    Parameters:
    ----------
    saturation_min: lower bound for quantization range
    saturation_max: upper bound for quantization range
    
    */
    scalar* scale = new scalar(T2d::getRows(saturation_min), T2d::getCols(saturation_min), 0.0f);
    unsigned n =  (unsigned int)exp2( num_bits - 1 ) - 1;
    if (per_channel)
    { // saturation min and max are columns
		for (unsigned i = 0; i < T2d::getCols(saturation_min); i++)
		{//custom max loop
			float x = fabs(T2d::get(saturation_min, 0, i)); 
			float y = fabs(T2d::get(saturation_max, 0, i));
			if (x > y)
			{
				scalar::set(scale, 0, i, x);
			}
			else
			{
				scalar::set(scale, 0, i, y);
			}
		}
		scalar::clamp(scale, 1e-8f, FLT_MAX, scale);
		scalar::div_scalar(scale, (float)n, scale);
    }
    else
    {//saturation min and max are one element tensors
        scalar::set(scale,0,0, fmax(fabs(T2d::one(saturation_min)), fabs((T2d::one(saturation_max)))));
        scalar::clamp(scale, 1e-8f, FLT_MAX, scale); 
        scalar::div_scalar(scale, (float)n, scale);
    }
    return scale;
}

T3d* QuantAct::symmetric_quant_forward(T3d* x, int k, scalar* specified_scale)
{
	scalar* scale = nullptr;
    if(specified_scale != nullptr)
    {
        scale = specified_scale;
    }
	scalar* zero_point = new scalar(1,1,0.f);

    float n = exp2f(float(k - 1)) - 1;

    T3d* new_quant_x = QuantAct::linear_quantize(x, scale, zero_point);
	delete zero_point;
    T3d::clamp(new_quant_x, -n, n-1, new_quant_x);
    return new_quant_x;
}

T3d* QuantAct::linear_quantize(T3d* x, scalar* scale_c, scalar* zero_point)
{
    //scale is 1 when x is truely 3d. When x is 2d, scale is also 2d (or at least broadcastable.)
	scalar* scale = new scalar(scale_c);
    scalar::reciprocal(scale, scale);
	if (T3d::getDepth(x) != 1)
	{
		T3d::mul_scalar(x, scalar::one(scale), x);
	}
	else
	{
		mul_type(x, scale, x);
	}
	delete scale;
    T3d::add_scalar(x, scalar::one(zero_point), x);
    T3d::roundTensor(x, x);
    return x;
}

T3d* QuantAct::fixedpoint_mul(
        T3d* pre_act,
        scalar* pre_act_scaling_factor,
        int bit_num,
        QuantMode quant_mode,
        scalar* z_scaling_factor,
        T3d* identity,
        scalar* identity_scaling_factor
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
    scalar* space = new scalar(1,1,0.f);

    T3d* z_int = new T3d(pre_act);
    div_type(pre_act, pre_act_scaling_factor, z_int); 
    T3d::roundTensor(z_int, z_int);

    //the following is in double precision in the code, but I did not make it double precision here
	scalar* _A = new scalar(pre_act_scaling_factor);
	scalar* _B = new scalar(z_scaling_factor);
	scalar* new_scale = new scalar(_A);
	scalar::div_dot(_A, _B, new_scale);
	delete space;
    
	scalar* m = new scalar(new_scale);
	scalar* e = new scalar(new_scale);
	scalar::tensor_frexp(new_scale, m, e);
    T3d* output = new T3d(z_int);
	delete z_int;
	scalar* twos = new scalar(T3d::getRows(output), T3d::getCols(output), 2.0f);
	scalar::pow_dot(twos, e, twos); //use twos as temp storage
	div_type(output, twos, output);
    mul_type(output, m, output);
    T3d::roundTensor(output, output);

	delete m;
	delete e;

    if(identity != nullptr)
    {	//TODO: verify functionality, may have to make changes if identity scaling facor is not the correct dimention.
        T3d* wx_int = new T3d(identity);
        div_type(identity, identity_scaling_factor, identity);
        T3d::roundTensor(identity, wx_int);
        //edit below
        delete _A;
        delete _B;
        delete new_scale;

        _A = new scalar(identity_scaling_factor);
        _B = new scalar(z_scaling_factor);
        new_scale = new scalar(_A);
        scalar::div_dot(_A, _B, new_scale);

        scalar* m1 = new scalar(new_scale);
        scalar* e1 = new scalar(new_scale);
        scalar::tensor_frexp(new_scale, m1, e1);

        T3d* output1 = new T3d(wx_int);
        mul_type(wx_int, m1, output1);

        scalar::pow_dot(twos, e1, e1); //use e1 as temp storage
        div_type(output1, e1, output1);
        T3d::roundTensor(output1, output1);

        T3d::add(output, output1, output);
		delete wx_int;
		delete m1;
		delete e1;
    }
	delete _A;
	delete _B;
	delete new_scale;
	delete twos;

    if( bit_num == 4 || bit_num == 8 || bit_num == 16)
    {
        if(quant_mode == QuantMode::symmetric)
        {
            T3d::clamp(output, -n-1, n, output);
            return output;
        }
        else{
            T3d::clamp(output, 0, n, output);
            return output;
        }
    }
    else{
        return output;
    }
}


void QuantAct::set_param(preload x_min_n, preload x_max_n, preload act_scaling_factor_n)
{
	x_min = loadTensor(x_min_n);
	x_max = loadTensor(x_max_n);
	act_scaling_factor = loadTensorXL(act_scaling_factor_n);
}

