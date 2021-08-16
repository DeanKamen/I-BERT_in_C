#ifndef __HUBERT_LOADTENSOR_H__
#define __HUBERT_LOADTENSOR_H__

#include "tensorXL.hpp"
#include "tensor3dXL.hpp"
#include "tensors.hpp"
#include "tensor3d.hpp"
#include "hubertEnums.h"
//currently only loads float tensors, easy customization to int
TensorXL<float>* loadTensorXL(preload);
Tensor<float>* loadTensor(preload);
Tensor3dXL<float>* loadGeneric3dXL(const char* fname);
Tensor3d<float>* loadGeneric3d(const char* fname);
TensorXL<float>* loadGeneric2d(const char* fname);

#endif