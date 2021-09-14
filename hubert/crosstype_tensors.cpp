//crosstype_tensors.cpp
//A batch of functions that does operations between Tensor and TensorXL.
//Which I did not want to clutter either class with
//created by Hunter Messner on 8/5/2021

#include "HLS/hls.h"
#include "HLS/math.h"
#include "HLS/stdio.h"
#include "crosstype_tensors.h"
#include "tensorXL.h"
#include "tensors.h"
#include "tensor3dXL.h"
#include "tensor3d.h"

Tensor3d newB;
Tensor3d* crosstype::transformFromXL(Tensor3dXL &A, Tensor3d &space)
{
	//the 22x1x768 -> 22x12x64 -> transpose into 12x22x64 transform
	//q.contiguous().view(tgt_len, bsz * self.num_heads, self.head_dim).transpose(0, 1)
	//
	unsigned i, j, d;
	//hardcoded constants, change if size of input matrix changes
	int l = 22;
	int m = 12;
	int n = 64;
	int rowTrack = 0;
	//assert(Tensor3d::getDepth(space) == l && Tensor3d::getRows(space) == m && Tensor3d::getCols(space) == n);
	for (d = 0; d < Tensor3d::getDepth(space); d++)
	{
		rowTrack = 0;
		for (i = 0; i < Tensor3d::getRows(space); i++)
		{
			for (j = 0; j < Tensor3d::getCols(space); j++)
			{
				Tensor3d::set(space, i, j, d, Tensor3dXL::get(A, 0, rowTrack, d));
				rowTrack++;
			}
		}
	}
	//Now space is 22x12x64, and I will transpose to 12x22x64

	newB = Tensor3d(12,22,64, 0.f);
	for (d = 0; d < Tensor3d::getDepth(space); d++)
	{
		for (i = 0; i < Tensor3d::getRows(space); i++)
		{
			for (j = 0; j < Tensor3d::getCols(space); j++)
			{
				Tensor3d::set(newB, d, j, i, Tensor3d::get(space, i, j, d));
			}
		}
	}

	return &newB;
}

Tensor3dXL exL;
Tensor3dXL* crosstype::transformToXL(Tensor3d &A, Tensor3d &space)
{
	//the 12x22x64-> 22x12x64 -> 22x1x768 transform 
	//attn = attn.transpose(0,1).contiguous(). view(tgt_len, bsz, embed dim)
	// Just undoing the previous function
	unsigned i, j, d;
	//hardcoded constants, change if size of input matrix changes
	int l = 22;
	int m = 12;
	int n = 64;
	int rowTrack = 0;
	
	assert(Tensor3d::getDepth(space) == l && Tensor3d::getRows(space) == m && Tensor3d::getCols(space) == n);

	
	for (d = 0; d < Tensor3d::getDepth(A); d++)
	{
		for (i = 0; i < Tensor3d::getRows(A); i++)
		{
			for (j = 0; j < Tensor3d::getCols(A); j++)
			{
				Tensor3d::set(space, d, j, i, Tensor3d::get(A, i, j, d));
			}
		}
	}
	//Now space is 22x12x64, and I will stretch to 22x1x768
	exL = Tensor3dXL(22, 1, 768, 0.0f);

	for (d = 0; d < Tensor3d::getDepth(space); d++)
	{
		rowTrack = 0;
		for (i = 0; i < Tensor3d::getRows(space); i++)
		{
			for (j = 0; j < Tensor3d::getCols(space); j++)
			{
				Tensor3dXL::set(exL, 0, rowTrack, d, Tensor3d::get(space, i, j, d));
				rowTrack++;
			}
		}
	}
	
	return &exL;
}


bool crosstype::sameSize(Tensor &A, TensorXL &B)
{
	return Tensor::getRows(A) == TensorXL::getRows(B) && Tensor::getCols(A) == TensorXL::getCols(B);
}

bool crosstype::sameRows(Tensor &A, TensorXL &B)
{
	return Tensor::getRows(A) == TensorXL::getRows(B);
}

bool crosstype::sameCols(Tensor &A, TensorXL &B)
{
	return Tensor::getCols(A) == TensorXL::getCols(B);
}

void crosstype::mul_type(Tensor &A, TensorXL &B, Tensor &C)
{
	int rowMod;
	int colMod;
	Tensor* larger = &A; //more rows or cols
	TensorXL* smaller = &B; //one row or one col
	if (sameSize(A, B))
	{//exactly the same size.
		rowMod = Tensor::getRows(A) + 1; //these mods do NOT affect the iterator
		colMod = Tensor::getCols(A) + 1;
	} //larger smaller does matter now
	else if (sameRows(A, B))
	{
		rowMod = Tensor::getRows(A) + 1;
		colMod = 1; //the column is always the 0th index.
	}
	else if (sameCols(A, B))
	{
		rowMod = 1; //the row is always the 0th index.
		colMod = Tensor::getCols(A) + 1;;
	}
	else if (TensorXL::getRows(B) == 1 && TensorXL::getCols(B) == 1)
	{
		Tensor::mul_scalar(A, TensorXL::one(B), C);
		return;
	}
	else
	{
		printf("incompatible dimenions\n");
		assert(false);
	}

	//now for the actual math
	unsigned i, j;
	for (i = 0; i < Tensor::getRows(*larger); i++)
	{
		for (j = 0; j < Tensor::getCols(*larger); j++)
		{
			Tensor::set(C, i, j, Tensor::get(*larger, i, j) * TensorXL::get(*smaller, i % rowMod, j % colMod));
		}
	}
}

void crosstype::div_type(Tensor &A, TensorXL &B, Tensor &C)
{
	int rowMod;
	int colMod;
	Tensor* larger = &A; //more rows or cols
	TensorXL* smaller = &B; //one row or one col
	if (sameSize(A, B))
	{//exactly the same size.
		rowMod = Tensor::getRows(A) + 1; //these mods do NOT affect the iterator
		colMod = Tensor::getCols(A) + 1;
	} //larger smaller does matter now
	else if (sameRows(A, B))
	{
		rowMod = Tensor::getRows(A) + 1;
		colMod = 1; //the column is always the 0th index.
	}
	else if (sameCols(A, B))
	{
		rowMod = 1; //the row is always the 0th index.
		colMod = Tensor::getCols(A) + 1;;
	}
	else if (TensorXL::getRows(B) == 1 && TensorXL::getCols(B) == 1)
	{
		Tensor::div_scalar(A, TensorXL::one(B), C);
		return;
	}
	else
	{
		printf("incompatible dimenions\n");
		assert(false);
	}

	//now for the actual math
	unsigned i, j;
	for (i = 0; i < Tensor::getRows(*larger); i++)
	{
		for (j = 0; j < Tensor::getCols(*larger); j++)
		{
			Tensor::set(C, i, j, Tensor::get(*larger, i, j) / TensorXL::get(*smaller, i % rowMod, j % colMod));
		}
	}
}

void crosstype::mul_type(Tensor3d &A, TensorXL &B, Tensor3d &C)//3d ops
{
	for (int d = 0; d < Tensor3d::getDepth(A); d++)
	{
		mul_type(Tensor3d::get(A, d), B, Tensor3d::get(C, d));
	}
}

void crosstype::div_type(Tensor3d &A, TensorXL &B, Tensor3d &C)
{
	for (int d = 0; d < Tensor3d::getDepth(A); d++)
	{
		div_type(Tensor3d::get(A, d), B, Tensor3d::get(C, d));
	}
}