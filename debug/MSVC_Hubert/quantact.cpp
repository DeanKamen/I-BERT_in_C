#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensor_mult.h"
#include <iostream>
#include "quantact.h"
#include "loadTensors.h"
#include "hubertEnums.h"

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
		x_min = new Tensor<float>(1, channel_len, 0.0f);
		x_max = new Tensor<float>(1, channel_len, 0.0f);
		act_scaling_factor = new Tensor<float>(1, channel_len, 0.0f);

    }
	//loading xmin and xmax is done by the set param function
}

void QuantAct::fix()
{
    running_stat = false;
}
void QuantAct::unfix()
{
    running_stat=true;
}

scaled_tuple3d QuantAct::QuantAct_forward(Tensor3d<float>* x, 
                              Tensor<float>* pre_act_scaling_factor,
                              Tensor<float>* identity,
                              Tensor<float>* identity_scaling_factor,
                              Tensor<float>* specified_min,
                              Tensor<float>* specified_max)
{
    Tensor3d<float>* x_act = new Tensor3d(x);
    if(identity == nullptr)
    {
        x_act = x;
    }
    else
    {
        Tensor3d<float>::add(x, identity, x_act);
    }

	Tensor<float>* local_xmin = new Tensor<float>(1, 1, 0.f);
	Tensor<float>* local_xmax = new Tensor<float>(1, 1, 0.f);

	if (running_stat)
	{
		if (!per_channel)
		{
			Tensor3d<float>* temp = new Tensor3d<float>(x_act);
			Tensor3d<float>::min(temp, temp);
			Tensor3d<float>::toTwoD(temp, local_xmin);
			delete temp;

			temp = new Tensor3d<float>(x_act);
			Tensor3d<float>::max(temp, temp);
			Tensor3d<float>::toTwoD(temp, local_xmax);
			delete temp;
		}
		else
		{
			//TODO: 3d matrix support
			assert(false);
		}

		//Initialization 
		if (Tensor<float>::eq(x_min, x_max))
		{
			Tensor<float>::add(x_min, local_xmin, x_min);
			Tensor<float>::add(x_max, local_xmax, x_max);
		}
		else if (act_range_momentum == -1)
		{
			float obj_min = Tensor<float>::one(x_min);
			float obj_max = Tensor<float>::one(x_max);
			float localmin = Tensor<float>::one(local_xmin);
			float localmax = Tensor<float>::one(local_xmax);

			if (localmax > obj_max)
			{
				Tensor<float>::set(x_max, 0, 0, localmax);
			}
			if (localmin < obj_min)
			{
				Tensor<float>::set(x_min, 0, 0, localmin);
			}
		}
		else
		{
			//here I am assuming xmin and xmax are 1x1
			float objmin = Tensor<float>::one(x_min);
			float localmin = Tensor<float>::one(local_xmin);
			Tensor<float>::set(x_min, 0, 0, objmin*act_range_momentum + localmin * (1 - act_range_momentum));

			float objmax = Tensor<float>::one(x_max);
			float localmax = Tensor<float>::one(local_xmax);
			Tensor<float>::set(x_max, 0, 0, objmax*act_range_momentum + localmax * (1 - act_range_momentum));
		}
	}

    if(quant_mode == QuantMode::none)
    {
        scaled_tuple3d returnme;
        returnme.matrix = x_act;
        returnme.scaling_factor=nullptr; 
        return returnme;
    }

    if(specified_min != nullptr) 
    x_min = specified_min;
    if(specified_max != nullptr) 
    x_min = specified_max;

    act_scaling_factor = QuantAct::symmetric_linear_quantization_params(activation_bit, x_min, x_max, per_channel);
    
    Tensor3d<float>* quant_act_int = nullptr;
    if(pre_act_scaling_factor == nullptr)
    {
        quant_act_int = QuantAct::symmetric_quant_forward(x, activation_bit, act_scaling_factor);
    }
    else
    {
        quant_act_int = fixedpoint_mul(x, pre_act_scaling_factor, activation_bit, quant_mode, act_scaling_factor, identity, identity_scaling_factor);
    }

    Tensor<float>* space = new Tensor<float>(1,1, 0.f);
    Tensor<float>* correct_output_scale = new Tensor<float>(act_scaling_factor);
    Tensor<float>::view(correct_output_scale, -1, 1, space);
	//correct output scale has just one element while quant act int has 2
    Tensor3d<float>::mul_scalar(quant_act_int, Tensor<float>::one(correct_output_scale), quant_act_int);
    scaled_tuple3d returnme;
    returnme.matrix = quant_act_int;
    returnme.scaling_factor = act_scaling_factor;
    return returnme;
}

Tensor<float>* QuantAct::symmetric_linear_quantization_params(unsigned num_bits,
                                        Tensor<float>* saturation_min,
                                        Tensor<float>* saturation_max,
                                        bool per_channel)
{
    /*
    Compute the scaling factor with the given quantization range for symmetric quantization.

    Parameters:
    ----------
    saturation_min: lower bound for quantization range
    saturation_max: upper bound for quantization range
    
    */
    Tensor<float>* scale = new Tensor<float>(saturation_min); 
    unsigned n =  (unsigned int)exp2( num_bits - 1 ) - 1;
    if (per_channel)
    { // saturation min and max are columns
		for (unsigned i = 0; i < Tensor<float>::getRows(saturation_min); i++)
		{//custom max loop
			float x = fabs(Tensor<float>::get(saturation_min, i, 0)); 
			float y = fabs(Tensor<float>::get(saturation_max, i, 0));
			if (x > y)
			{
				Tensor<float>::set(scale, i, 0, x);
			}
			else
			{
				Tensor<float>::set(scale, i, 0, y);
			}
		}
		Tensor<float>::clamp(scale, 1e-8f, FLT_MAX, scale);
		Tensor<float>::div_scalar(scale, (float)n, scale);
    }
    else
    {//saturation min and max are one element tensors
        Tensor<float>::set(scale,0,0, fmax(fabs(Tensor<float>::one(saturation_min)), fabs((Tensor<float>::one(saturation_max)))));
        Tensor<float>::clamp(scale, 1e-8f, FLT_MAX, scale); 
        Tensor<float>::div_scalar(scale, (float)n, scale);
    }
    return scale;
}

Tensor3d<float>* QuantAct::symmetric_quant_forward(Tensor3d<float>* x, int k, Tensor<float>* specified_scale)
{
    Tensor<float>* scale = nullptr;
    if(specified_scale != nullptr)
    {
        scale = specified_scale;
    }
    Tensor<float>* zero_point = new Tensor<float>(1,1,0.f);

    float n = exp2f(float(k - 1)) - 1;

    Tensor3d<float>* new_quant_x = QuantAct::linear_quantize(x, scale, zero_point);
    Tensor3d<float>::clamp(new_quant_x, -n, n-1, new_quant_x);
    return new_quant_x;
}

Tensor3d<float>* QuantAct::linear_quantize(Tensor3d<float>* x, Tensor<float>* scale_c, Tensor<float>* zero_point)
{
    //scale is 1 when x is truely 3d. When x is 2d, scale is also 2d (or at least broadcastable.)
	Tensor<float>* scale = new Tensor(scale_c);
    Tensor<float>::reciprocal(scale, scale);
	if (Tensor3d<float>::getDepth(x) != 1)
	{
		Tensor3d<float>::mul_scalar(x, Tensor<float>::one(scale), x);
	}
	else
	{
		Tensor3d<float>::mul_dot(x, scale, x);
	}
    Tensor3d<float>::add_scalar(x, Tensor<float>::one(zero_point), x);
    Tensor3d<float>::roundTensor(x, x);
    return x;
}

Tensor3d<float>* QuantAct::fixedpoint_mul(
        Tensor3d<float>* pre_act,
        Tensor<float>* pre_act_scaling_factor,
        int bit_num,
        QuantMode quant_mode,
        Tensor<float>* z_scaling_factor,
        Tensor<float>* identity,
        Tensor<float>* identity_scaling_factor
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
    Tensor<float>* space = new Tensor<float>(1,1,0.f);
    Tensor<float>::view(pre_act_scaling_factor, -1,1, space);
    if(identity != nullptr)
    {
        Tensor<float>::view(identity_scaling_factor, -1, 1, space);
    }

    Tensor3d<float>* z_int = new Tensor3d<float>(pre_act);
	//pre act is one dimentional
    Tensor3d<float>::div_scalar(pre_act, Tensor<float>::one(pre_act_scaling_factor), z_int); 
    Tensor3d<float>::roundTensor(z_int, z_int);

    //the following is in double precision in the code, but I did not make it double precision here
    Tensor<float>* _A = new Tensor<float>(pre_act_scaling_factor);
    Tensor<float>* _B = new Tensor<float>(z_scaling_factor);
    Tensor<float>* new_scale = new Tensor<float>(_A);
    Tensor<float>::div_dot(_A, _B, new_scale);
    Tensor<float>::view(new_scale, -1, 1, space);
	delete space;
    
    Tensor<float>* m = new Tensor<float>(new_scale);
    Tensor<float>* e = new Tensor<float>(new_scale);
    Tensor<float>::tensor_frexp(new_scale, m, e);
    Tensor3d<float>* output = new Tensor3d<float>(z_int);
	Tensor<float>* twos = new Tensor<float>(Tensor3d<float>::getRows(output), Tensor3d<float>::getCols(output), 2.0f);
	//additionally, e is one dimentional
	Tensor<float>::pow_scalar(twos, Tensor<float>::one(e), twos); //use twos as temp storage
	Tensor3d<float>::div_dot(output, twos, output);
	//m is sigular dimention while z int is multi-dimentional
    Tensor3d<float>::mul_scalar(output, Tensor<float>::one(m), output);
    Tensor3d<float>::roundTensor(output, output);

    if(identity != nullptr)
    {	//TODO: verify functionality, may have to make changes if identity scaling facor is not the correct dimention.
        Tensor<float>* wx_int = new Tensor<float>(identity);
        Tensor<float>::div_dot(identity, identity_scaling_factor, identity);
        Tensor<float>::roundTensor(identity, wx_int);
        //edit below
        delete _A;
        delete _B;
        delete new_scale;

        _A = new Tensor<float>(identity_scaling_factor);
        _B = new Tensor<float>(z_scaling_factor);
        new_scale = new Tensor<float>(_A);
        Tensor<float>::div_dot(_A, _B, new_scale);
        Tensor<float>::view(new_scale, -1, 1, space);

        Tensor<float>* m1 = new Tensor<float>(new_scale);
        Tensor<float>* e1 = new Tensor<float>(new_scale);
        Tensor<float>::tensor_frexp(new_scale, m1, e1);

        Tensor<float>* output1 = new Tensor<float>(wx_int);
        Tensor<float>::mul_dot(wx_int, m1, output1);

        Tensor<float>::pow_dot(twos, e1, e1); //use e1 as temp storage
        Tensor<float>::div_dot(output1, e1, output1);
        Tensor<float>::roundTensor(output1, output1);

        Tensor3d<float>::add(output, output1, output);
    }

    if( bit_num == 4 || bit_num == 8 || bit_num == 16)
    {
        if(quant_mode == QuantMode::symmetric)
        {
            Tensor3d<float>::clamp(output, -n-1, n, output);
            return output;
        }
        else{
            Tensor3d<float>::clamp(output, 0, n, output);
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
	act_scaling_factor = loadTensor(act_scaling_factor_n);
}

