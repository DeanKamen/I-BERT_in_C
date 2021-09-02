//crosstype_tensors.h
//A batch of functions that does operations between Tensor and TensorXL.
//Which I did not want to clutter either class with
//created by Hunter Messner on 8/5/2021

#ifndef __HUBERT_CROSSTPYE_TENSORS_H__
#define __HUBERT_CROSSTYPE_TENSORS_H__

#include "tensorXL.hpp"
#include "tensors.hpp"
#include "tensor3dXL.hpp"
#include "tensor3d.hpp"

Tensor3d<float>* transformFromXL(Tensor3dXL<float> &A, Tensor3d<float> &space);
Tensor3dXL<float>* transformToXL(Tensor3d<float> &A, Tensor3d<float> &space);
bool sameSize(Tensor<float> &A, TensorXL<float> &B);
bool sameRows(Tensor<float> &A, TensorXL<float> &B);
bool sameCols(Tensor<float> &A, TensorXL<float> &B);
void mul_type(Tensor<float> &A, TensorXL<float> &B, Tensor<float> &C);//2d ops
void div_type(Tensor<float> &A, TensorXL<float> &B, Tensor<float> &C);

void mul_type(Tensor3d<float> &A, TensorXL<float> &B, Tensor3d<float> &C);//3d ops
void div_type(Tensor3d<float> &A, TensorXL<float> &B, Tensor3d<float> &C);

#endif