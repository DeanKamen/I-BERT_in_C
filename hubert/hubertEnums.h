//hubert_enums.h, created by Hunter Messner for the HUBERT project

#ifndef __HUBERT_ENUMS_H__
#define __HUBERT_ENUMS_H__

#include "tensorXL.h"
#include "tensor3dXL.h"
#include "tensors.h"
#include "tensor3d.h"

//enum to desribe all preloaded Tensors
enum class QuantMode {none, symmetric};

enum class ForceDequantMode{none, nonlinear, softmax, gelu, layernorm};

struct scaled_tupleXL
{//to get the most fidelity out of the translation, I make
 //a struct that emulates the returned tuple of most forwards
	TensorXL* matrix;
	TensorXL* scaling_factor;
};

struct scaled_tuple3dXL
{//same as scaled_tuple but 3d
	Tensor3dXL* matrix;
	TensorXL* scaling_factor;
};

struct scaled_tuple
{//to get the most fidelity out of the translation, I make
 //a struct that emulates the returned tuple of most forwards
	Tensor* matrix;
	TensorXL* scaling_factor;
};

struct scaled_tuple3d
{//same as scaled_tuple but 3d
	Tensor3d* matrix;
	TensorXL* scaling_factor;
};

enum class preload
{ //same name but with double underscore as word seperators instead of dots
    activation_fn_approx__input_scaling_factor=0,
    input_act__x_min,
    input_act__x_max,
    input_act__act_scaling_factor,
    self_attn__k_proj__weight,
    self_attn__k_proj__bias,
    self_attn__k_proj__fc_scaling_factor,
    self_attn__k_proj__weight_integer,
    self_attn__k_proj__bias_integer,
    self_attn__v_proj__weight,
    self_attn__v_proj__bias,
    self_attn__v_proj__fc_scaling_factor,
    self_attn__v_proj__weight_integer,
    self_attn__v_proj__bias_integer,
    self_attn__q_proj__weight,
    self_attn__q_proj__bias,
    self_attn__q_proj__fc_scaling_factor,
    self_attn__q_proj__weight_integer,
    self_attn__q_proj__bias_integer,
    self_attn__k_proj_act__x_min,
    self_attn__k_proj_act__x_max,
    self_attn__k_proj_act__act_scaling_factor,
    self_attn__v_proj_act__x_min,
    self_attn__v_proj_act__x_max,
    self_attn__v_proj_act__act_scaling_factor,
    self_attn__q_proj_act__x_min,
    self_attn__q_proj_act__x_max,
    self_attn__q_proj_act__act_scaling_factor,
    self_attn__softmax__act__x_min,
    self_attn__softmax__act__x_max,
    self_attn__softmax__act__act_scaling_factor,
    self_attn__attn_probs_act__x_min,
    self_attn__attn_probs_act__x_max,
    self_attn__attn_probs_act__act_scaling_factor,
    self_attn__attn_act__x_min,
    self_attn__attn_act__x_max,
    self_attn__attn_act__act_scaling_factor,
    self_attn__out_proj__weight,
    self_attn__out_proj__bias,
    self_attn__out_proj__fc_scaling_factor,
    self_attn__out_proj__weight_integer,
    self_attn__out_proj__bias_integer,
    pre_self_attn_layer_norm_act__x_min,
    pre_self_attn_layer_norm_act__x_max,
    pre_self_attn_layer_norm_act__act_scaling_factor,
    self_attn_layer_norm__weight,
    self_attn_layer_norm__bias,
    self_attn_layer_norm__shift,
    self_attn_layer_norm__activation__x_min,
    self_attn_layer_norm__activation__x_max,
    self_attn_layer_norm__activation__act_scaling_factor,
    fc1_act__x_min,
    fc1_act__x_max,
    fc1_act__act_scaling_factor,
    fc2_act__x_min,
    fc2_act__x_max,
    fc2_act__act_scaling_factor,
    fc1__weight,
    fc1__bias,
    fc1__fc_scaling_factor,
    fc1__weight_integer,
    fc1__bias_integer,
    fc2__weight,
    fc2__bias,
    fc2__fc_scaling_factor,
    fc2__weight_integer,
    fc2__bias_integer,
    pre_final_layer_norm_act__x_min,
    pre_final_layer_norm_act__x_max,
    pre_final_layer_norm_act__act_scaling_factor,
    final_layer_norm__weight,
    final_layer_norm__bias,
    final_layer_norm__shift,
    final_layer_norm__activation__x_min,
    final_layer_norm__activation__x_max,
    final_layer_norm__activation__act_scaling_factor
};

#endif