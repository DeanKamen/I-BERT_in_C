//loadTensors.h, created by Hunter Messner for the HUBERT project
#ifndef __HUBERT_LOADTENSOR_H__
#define __HUBERT_LOADTENSOR_H__

#include "tensorXL.h"
#include "tensor3dXL.h"
#include "tensors.h"
#include "tensor3d.h"
#include "hubertEnums.h"
//currently only loads float tensors, easy customization to int
TensorXL* loadTensorXL(preload);
Tensor* loadTensor(preload);
Tensor3dXL* loadGeneric3dXL(const char* fname);
Tensor3d* loadGeneric3d(const char* fname);
TensorXL* loadGeneric2d(const char* fname);

#endif