//crosstype_tensors.h
//A batch of functions that does operations between Tensor and TensorXL.
//Which I did not want to clutter either class with
//created by Hunter Messner on 8/5/2021

#ifndef __HUBERT_CROSSTPYE_TENSORS_H__
#define __HUBERT_CROSSTYPE_TENSORS_H__

#include "tensorXL.h"
#include "tensors.h"
#include "tensor3dXL.h"
#include "tensor3d.h"

namespace crosstype
{
	Tensor3d* transformFromXL(Tensor3dXL &A, Tensor3d &space);
	Tensor3dXL* transformToXL(Tensor3d &A, Tensor3d &space);
	bool sameSize(Tensor &A, TensorXL &B);
	bool sameRows(Tensor &A, TensorXL &B);
	bool sameCols(Tensor &A, TensorXL &B);
	void mul_type(Tensor &A, TensorXL &B, Tensor &C);//2d ops
	void div_type(Tensor &A, TensorXL &B, Tensor &C);

	void mul_type(Tensor3d &A, TensorXL &B, Tensor3d &C);//3d ops
	void div_type(Tensor3d &A, TensorXL &B, Tensor3d &C);
}
#endif