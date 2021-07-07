#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" 
#include "tensor_mult.h"
#include <iostream>
#include "quantact.h"

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

    if(!per_channel)
    {
        x_min = new Tensor<float>(1, 1, 0.0f);
        x_max = new Tensor<float>(1, 1, 0.0f);
        act_scaling_factor = new Tensor(1, 1, 0.0f);
    }
    else
    {
        assert(channel_len > 0);
        x_min = new Tensor<float>(1,channel_len, 0.0f);
        x_max = new Tensor<float>(1,channel_len, 0.0f);
        act_scaling_factor = new Tensor(1,channel_len, 0.0f);
    }
}

void QuantAct::fix()
{
    running_stat = false;
}
void QuantAct::unfix()
{
    running_stat=true;
}

scaled_tuple QuantAct::QuantAct_forward(Tensor<float> x, 
                              Tensor<float>* pre_act_scaling_factor,
                              Tensor<float>* identity,
                              Tensor<float>* identity_scaling_factor,
                              Tensor<float>* specified_min,
                              Tensor<float>* specified_max)
{
    Tensor<float> x_act = x;
    if(identity == nullptr)
    {
        x_act = x;
    }
    else
    {
        Tensor<float>::add(x, *identity, x_act);
    }

    if(running_stat)
    {
        if(!per_channel)
        {
            Tensor<float>::min(x_act, 0, *x_min);
            Tensor<float>::max(x_act, 0, *x_max);
        }
        else
        {
            //TODO: 3d matrix support
            assert(false);
        }
    }

    //Initialization 
    if(Tensor<float>::eq(*x_min, *x_max))
    {
        Tensor<float>::mul_scalar(*x_min,2,*x_min);
        Tensor<float>::mul_scalar(*x_max,2,*x_max);
    }
    else if(act_range_momentum == -1)
    {
        //a bit confusing on why this exists
        Tensor<float>::min(x_act, 0, *x_min);
        Tensor<float>::max(x_act, 0, *x_max);
    }
    else
    {
        //here I am assuming xmin and xmax are 1x1
        float temp = Tensor<float>::get(*x_min, 0,0);
        Tensor<float>::set(*x_min, 0,0, 
            temp*act_range_momentum + temp*(1-act_range_momentum));
        float temp2 = Tensor<float>::get(*x_max, 0,0);
        Tensor<float>::set(*x_max, 0,0, 
            temp*act_range_momentum + temp*(1-act_range_momentum));
    }

    if(quant_mode == QuantMode::none)
    {
        scaled_tuple returnme;
        returnme.matrix = &x_act;
        returnme.scaling_factor=nullptr; 
        return returnme;
    }

    if(specified_min != nullptr) 
    x_min = specified_min;
    if(specified_max != nullptr) 
    x_min = specified_max;

    float min = Tensor<float>::get(*x_min,0,0); 
    float max = Tensor<float>::get(*x_max,0,0);
    act_scaling_factor = QuantAct::symmetric_linear_quantization_params(activation_bit, min, max, per_channel);
    
    Tensor<float>* quant_act_int = nullptr;
    if(pre_act_scaling_factor == nullptr)
    {
        quant_act_int = QuantAct::symmetric_quant_forward(x, activation_bit, act_scaling_factor);
    }
    else
    {
        quant_act_int = fixedpoint_mul(x, pre_act_scaling_factor, activation_bit, quant_mode, act_scaling_factor, identity, identity_scaling_factor);
    }

    Tensor<float> space (1,1, 0.f);
    Tensor<float>* correct_output_scale = new Tensor<float>(*act_scaling_factor);
    Tensor<float>::view(*correct_output_scale, -1, 1, space);
    Tensor<float>::mul_dot(*quant_act_int, *correct_output_scale, *correct_output_scale);
    scaled_tuple returnme;
    returnme.matrix = correct_output_scale;
    returnme.scaling_factor = act_scaling_factor;
    return returnme;
}

Tensor<float>* QuantAct::symmetric_linear_quantization_params(unsigned num_bits,
                                        float saturation_min,
                                        float saturation_max,
                                        bool per_channel)
{
    /*
    Compute the scaling factor with the given quantization range for symmetric quantization.

    Parameters:
    ----------
    saturation_min: lower bound for quantization range
    saturation_max: upper bound for quantization range
    
    */
    Tensor<float>* scale = new Tensor<float>(1,1,0.f); 
    unsigned n =  exp2( num_bits - 1 ) - 1;
    if (per_channel)
    {
        assert(false);
    }
    else
    {
        Tensor<float>::set(*scale,0,0, fmax(fabs(saturation_min), fabs(saturation_max)));
        Tensor<float>::clamp(*scale, 1e-8, FLT_MAX, *scale); 
        Tensor<float>::div_scalar(*scale, n, *scale);
    }
    return scale;
}

Tensor<float>* QuantAct::symmetric_quant_forward(Tensor<float> x, int k, Tensor<float>* specified_scale)
{
    Tensor<float>* scale = nullptr;
    if(specified_scale != nullptr)
    {
        scale = specified_scale;
    }
    Tensor<float>* zero_point = new Tensor<float>(1,1,0.f);

    float n = exp2(k - 1) - 1;

    Tensor<float>* new_quant_x = QuantAct::linear_quantize(&x, scale, zero_point);
    Tensor<float>::clamp(*new_quant_x, -n, n-1, *new_quant_x);
    return new_quant_x;
}

Tensor<float>* QuantAct::linear_quantize(Tensor<float>* x, Tensor<float>* scale, Tensor<float>* zero_point)
{
    //TODO: there will be overflow as max size in one direction is currently 3072
    Tensor<float> space (1,1,0.f);
    Tensor<float>::view(*x, -1, 1, space);
    Tensor<float>::view(*zero_point, -1, 1, space);
    Tensor<float>::reciprocal(*scale, *scale);
    Tensor<float>::mul_dot(*scale, *x, *x);
    Tensor<float>::add(*x,*zero_point, *x);
    Tensor<float>::round(*x, *x);
    return x;
}

Tensor<float>* QuantAct::fixedpoint_mul(
        Tensor<float> pre_act,
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
        n = exp2(bit_num - 1) -1;
    }
    else{
        n = exp2(bit_num) - 1;
    }
    Tensor<float> space(1,1,0.f);
    Tensor<float>::view(*pre_act_scaling_factor, -1,1, space);
    if(identity != nullptr)
    {
        Tensor<float>::view(*identity_scaling_factor, -1, 1, space);
    }
    Tensor<float>* z_int = new Tensor<float>(pre_act);
    Tensor<float>::div_dot(pre_act, *pre_act_scaling_factor, *z_int);
    Tensor<float>::round(*z_int, *z_int);
    //the following is in double precision in the code, but I did not make it double precision here
    Tensor<float>* _A = new Tensor<float>(*identity_scaling_factor);
    Tensor<float>* _B = new Tensor<float>(*z_scaling_factor);
    Tensor<float>* new_scale = new Tensor<float>(*_A);
    Tensor<float>::div_dot(*_A,*_B,*new_scale);
    Tensor<float>::view(*new_scale, -1, 1, space);
    
    Tensor<float>* m = new Tensor<float>(*new_scale);
    Tensor<float>* e = new Tensor<float>(*new_scale);
    Tensor<float>::tensor_frexp(*new_scale, m, e);
    Tensor<float>* output = new Tensor<float>(*z_int);
    Tensor<float>::mul_dot(*z_int, *m, *output);
    Tensor<float>* twos = new Tensor(Tensor<float>::getRows(*output), Tensor<float>::getCols(*output), 2.0f);
    Tensor<float>::pow_dot(*twos, *e, *e); //use e as temp storage
    Tensor<float>::div_dot(*output, *e, *output);
    Tensor<float>::round(*output, *output);

    if(identity != nullptr)
    {
        Tensor<float>* wx_int = new Tensor<float>(*identity);
        Tensor<float>::div_dot(*identity, *identity_scaling_factor, *identity);
        Tensor<float>::round(*identity, *wx_int);
        //edit below
        delete _A;
        delete _B;
        delete new_scale;

        _A = new Tensor<float>(*identity_scaling_factor);
        _B = new Tensor<float>(*z_scaling_factor);
        new_scale = new Tensor<float>(*_A);
        Tensor<float>::div_dot(*_A,*_B,*new_scale);
        Tensor<float>::view(*new_scale, -1, 1, space);

        Tensor<float>* m1 = new Tensor<float>(*new_scale);
        Tensor<float>* e1 = new Tensor<float>(*new_scale);
        Tensor<float>::tensor_frexp(*new_scale, m1, e1);

        Tensor<float>* output1 = new Tensor<float>(*wx_int);
        Tensor<float>::mul_dot(*wx_int, *m1, *output1);

        Tensor<float>::pow_dot(*twos, *e1, *e1); //use e as temp storage
        Tensor<float>::div_dot(*output1, *e, *output1);
        Tensor<float>::round(*output1, *output1);

        Tensor<float>::add(*output1, *output, *output);
    }

    if( bit_num == 4 || bit_num == 8 || bit_num == 16)
    {
        if(quant_mode == QuantMode::symmetric)
        {
            Tensor<float>::clamp(*output, -n-1, n, *output);
            return output;
        }
        else{
            Tensor<float>::clamp(*output, 0, n, *output);
            return output;
        }
    }
    else{
        return output;
    }
}


