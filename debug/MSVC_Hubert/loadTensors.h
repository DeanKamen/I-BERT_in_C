#ifndef __HUBERT_LOADTENSOR_H__
#define __HUBERT_LOADTENSOR_H__

#include "tensors.hpp"
#include "tensor3d.hpp"
#include "hubertEnums.h"
//currently only loads float tensors, easy customization to int
Tensor<float>* loadTensor(preload);
Tensor3d<float>* loadGeneric3d(const char* fname);
Tensor<float>* loadGeneric2d(const char* fname);

#endif