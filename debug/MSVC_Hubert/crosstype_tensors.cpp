//crosstype_tensors.cpp
//A batch of functions that does operations between Tensor and TensorXL.
//Which I did not want to clutter either class with
//created by Hunter Messner on 8/5/2021

#include "HLS/hls.h"
#include "HLS/math.h"
#include "HLS/stdio.h"
#include "crosstype_tensors.h"
#include "tensorXL.hpp"
#include "tensors.hpp"
#include "tensor3dXL.hpp"
#include "tensor3d.hpp"

Tensor3d<float>* transformFromXL(Tensor3dXL<float> *A, Tensor3d<float> *space)
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
	assert(Tensor3d<float>::getDepth(space) == l && Tensor3d<float>::getRows(space) == m && Tensor3d<float>::getCols(space) == n);
	for (d = 0; d < Tensor3d<float>::getDepth(space); d++)
	{
		rowTrack = 0;
		for (i = 0; i < Tensor3d<float>::getRows(space); i++)
		{
			for (j = 0; j < Tensor3d<float>::getCols(space); j++)
			{
				Tensor3d<float>::set(space, i, j, d, Tensor3dXL<float>::get(A, 0, rowTrack, d));
				rowTrack++;
			}
		}
	}
	//Now space is 22x12x64, and I will transpose to 12x22x64

	Tensor3d<float>* newB = new Tensor3d<float>(12,22,64, 0.f);
	for (d = 0; d < Tensor3d<float>::getDepth(space); d++)
	{
		for (i = 0; i < Tensor3d<float>::getRows(space); i++)
		{
			for (j = 0; j < Tensor3d<float>::getCols(space); j++)
			{
				Tensor3d<float>::set(newB, d, j, i, Tensor3d<float>::get(space, i, j, d));
			}
		}
	}

	return newB;
}
Tensor3dXL<float>* transformToXL(Tensor3d<float> *A, Tensor3d<float> *space)
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
	
	assert(Tensor3d<float>::getDepth(space) == l && Tensor3d<float>::getRows(space) == m && Tensor3d<float>::getCols(space) == n);

	
	for (d = 0; d < Tensor3d<float>::getDepth(A); d++)
	{
		for (i = 0; i < Tensor3d<float>::getRows(A); i++)
		{
			for (j = 0; j < Tensor3d<float>::getCols(A); j++)
			{
				Tensor3d<float>::set(space, d, j, i, Tensor3d<float>::get(A, i, j, d));
			}
		}
	}
	//Now space is 22x12x64, and I will stretch to 22x1x768
	Tensor3dXL<float>* exL = new Tensor3dXL<float>(22, 1, 768, 0.0f);

	for (d = 0; d < Tensor3d<float>::getDepth(space); d++)
	{
		rowTrack = 0;
		for (i = 0; i < Tensor3d<float>::getRows(space); i++)
		{
			for (j = 0; j < Tensor3d<float>::getCols(space); j++)
			{
				Tensor3dXL<float>::set(exL, 0, rowTrack, d, Tensor3d<float>::get(space, i, j, d));
				rowTrack++;
			}
		}
	}
	
	return exL;
}


bool sameSize(Tensor<float> *A, TensorXL<float> *B)
{
	return Tensor<float>::getRows(A) == TensorXL<float>::getRows(B) && Tensor<float>::getCols(A) == TensorXL<float>::getCols(B);
}

bool sameRows(Tensor<float> *A, TensorXL<float> *B)
{
	return Tensor<float>::getRows(A) == TensorXL<float>::getRows(B);
}

bool sameCols(Tensor<float> *A, TensorXL<float> *B)
{
	return Tensor<float>::getCols(A) == TensorXL<float>::getCols(B);
}

void mul_type(Tensor<float> *A, TensorXL<float> *B, Tensor<float> *C)
{
	int rowMod;
	int colMod;
	Tensor<float>* larger = A; //more rows or cols
	TensorXL<float>* smaller = B; //one row or one col
	if (sameSize(A, B))
	{//exactly the same size.
		rowMod = Tensor<float>::getRows(A) + 1; //these mods do NOT affect the iterator
		colMod = Tensor<float>::getCols(A) + 1;
	} //larger smaller does matter now
	else if (sameRows(A, B))
	{
		rowMod = Tensor<float>::getRows(A) + 1;
		colMod = 1; //the column is always the 0th index.
	}
	else if (sameCols(A, B))
	{
		rowMod = 1; //the row is always the 0th index.
		colMod = Tensor<float>::getCols(A) + 1;;
	}
	else if (TensorXL<float>::getRows(B) == 1 && TensorXL<float>::getCols(B) == 1)
	{
		Tensor<float>::mul_scalar(A, TensorXL<float>::one(B), C);
		return;
	}
	else
	{
		printf("incompatible dimenions\n");
		assert(false);
	}

	//now for the actual math
	unsigned i, j;
	for (i = 0; i < Tensor<float>::getRows(larger); i++)
	{
		for (j = 0; j < Tensor<float>::getCols(larger); j++)
		{
			Tensor<float>::set(C, i, j, Tensor<float>::get(larger, i, j) * TensorXL<float>::get(smaller, i % rowMod, j % colMod));
		}
	}
}

void div_type(Tensor<float> *A, TensorXL<float> *B, Tensor<float> *C)
{
	int rowMod;
	int colMod;
	Tensor<float>* larger = A; //more rows or cols
	TensorXL<float>* smaller = B; //one row or one col
	if (sameSize(A, B))
	{//exactly the same size.
		rowMod = Tensor<float>::getRows(A) + 1; //these mods do NOT affect the iterator
		colMod = Tensor<float>::getCols(A) + 1;
	} //larger smaller does matter now
	else if (sameRows(A, B))
	{
		rowMod = Tensor<float>::getRows(A) + 1;
		colMod = 1; //the column is always the 0th index.
	}
	else if (sameCols(A, B))
	{
		rowMod = 1; //the row is always the 0th index.
		colMod = Tensor<float>::getCols(A) + 1;;
	}
	else if (TensorXL<float>::getRows(B) == 1 && TensorXL<float>::getCols(B) == 1)
	{
		Tensor<float>::div_scalar(A, TensorXL<float>::one(B), C);
		return;
	}
	else
	{
		printf("incompatible dimenions\n");
		assert(false);
	}

	//now for the actual math
	unsigned i, j;
	for (i = 0; i < Tensor<float>::getRows(larger); i++)
	{
		for (j = 0; j < Tensor<float>::getCols(larger); j++)
		{
			Tensor<float>::set(C, i, j, Tensor<float>::get(larger, i, j) / TensorXL<float>::get(smaller, i % rowMod, j % colMod));
		}
	}
}

void mul_type(Tensor3d<float> *A, TensorXL<float> *B, Tensor3d<float> *C)//3d ops
{
	for (int d = 0; d < Tensor3d<float>::getDepth(A); d++)
	{
		mul_type(Tensor3d<float>::get(A, d), B, Tensor3d<float>::get(C, d));
	}
}

void div_type(Tensor3d<float> *A, TensorXL<float> *B, Tensor3d<float> *C)
{
	for (int d = 0; d < Tensor3d<float>::getDepth(A); d++)
	{
		div_type(Tensor3d<float>::get(A, d), B, Tensor3d<float>::get(C, d));
	}
}