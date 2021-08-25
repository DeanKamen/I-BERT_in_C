//Tensor3dXL.hpp
// 3d HLS tensor implementation for the HUBERT project.
//created by Hunter Messner on 7/19/2021

#ifndef __HUBERT_TENSOR3DXL_HPP__
#define __HUBERT_TENSOR3DXL_HPP__

#include "HLS/hls.h"
#include "HLS/math.h"
#include "HLS/stdio.h"
#include "tensorXL.hpp"
#include "tensor3dXL.h"
#include <iostream>

/*                    DEFINITIONS                     */

template<class T>
Tensor3dXL<T>::Tensor3dXL(Tensor3dXL<T> *A) //Takes 2d matrixes from the pointer and creates new Tensors based on them
{
	t_numCols = getCols(A); 
	t_numRows = getRows(A);
	t_depth = getDepth(A);
	for (unsigned d = 0; d < t_depth; d++)
	{
		TensorXL<float>* layer = new TensorXL<float>(get(A, d));
		matrix[d] = layer;
	}
	null = false;
}

template<class T>
Tensor3dXL<T>::Tensor3dXL(Tensor3dXL<T> &A)
{
	t_numCols = getCols(A);
	t_numRows = getRows(A);
	t_depth = getDepth(A);
	for (unsigned d = 0; d < t_depth; d++)
	{
		TensorXL<float>* layer = new TensorXL<float>(get(A, d));
		matrix[d] = layer;
	}
	null = false;
}

template<class T>
Tensor3dXL<T>::Tensor3dXL(TensorXL<T> *A) //Takes a 2d matrix and copies it into the first layer.
{
	t_numCols = TensorXL<T>::getCols(*A);
	t_numRows = TensorXL<T>::getRows(*A);
	t_depth = 1;
	matrix[0] = A;
	null = false;
}

template<class T>
Tensor3dXL<T>::Tensor3dXL(int dep, int row, int col, T init)
{
	t_numCols = col;
	t_numRows = row;
	t_depth = dep;
	for (unsigned d = 0; d < dep; d++)
	{
		matrix[d] = new TensorXL<T>(row, col, init);
	}
	null = false;
}

template<class T>
Tensor3dXL<T>::Tensor3dXL(void)
{ //if using this in conjuction with append(), make sure to setCols and setRows
	t_numCols = 0;
	t_numRows = 0;
	t_depth = 0;
	null = true;
}

template<class T>
Tensor3dXL<T>::~Tensor3dXL()
{
	/*
	for (unsigned d = 0; d < t_depth; d++)
	{
		if (nullptr != matrix[d]) { delete matrix[d]; }
	}
	*/
	null = true;
}

//special multiply
template<class T> void Tensor3dXL<T>::linear_mul(Tensor3dXL<T> *A, TensorXL<T> *B, Tensor3dXL<T> *C)
{
	TensorXL<T>::transpose(B);
	if (getCols(A) > 768)
	{
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			TensorXL<T>::mul_crossL(*get(A, d), B, *get(C, d));
		}
	}
	else if (TensorXL<T>::getCols(B) > 768)
	{
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			TensorXL<T>::mul_crossR(*get(A, d), B, *get(C, d));
		}
	}
	else
	{
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			TensorXL<T>::mul_cross(*get(A, d), B, *get(C, d));
		}
	}

	setCols(C, TensorXL<T>::getCols(B));
	setRows(C, getRows(A));
	TensorXL<T>::transpose(B);
}

template<class T> void Tensor3dXL<T>::bmm(Tensor3dXL<T> *A, Tensor3dXL<T> *B, Tensor3dXL<T> *C)
{ //for when they both have the same size
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T> *rhs = *get(B, d);
		TensorXL<T>::transpose(rhs);
		TensorXL<T>::mul_cross(*get(A, d), rhs, *get(C, d));
		TensorXL<T>::transpose(rhs);
	}
	setCols(C, getCols(B));
	setRows(C, getRows(A));
}

//2d broadcasting across 3d
template<class T> void Tensor3dXL<T>::add(Tensor3dXL<T> *A, TensorXL<T> *B, Tensor3dXL<T> *C)
{
	//defer error checking to a layer by layer basis. 
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::add(*get(A, d), *B, *get(C, d));
	}
}

template<class T> void Tensor3dXL<T>::sub(Tensor3dXL<T> *A, TensorXL<T> *B, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::sub(*get(A, d), *B, *get(C, d));
	}
}
template<class T> void Tensor3dXL<T>::mul_dot(Tensor3dXL<T> *A, TensorXL<T> *B, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::mul_dot(*get(A, d), *B, *get(C, d));
	}
}

template<class T> void Tensor3dXL<T>::div_dot(Tensor3dXL<T> *A, TensorXL<T> *B, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::div_dot(*get(A, d), *B, *get(C, d));
	}
}

template<class T> void Tensor3dXL<T>::pow_dot(Tensor3dXL<T> *A, TensorXL<T> *B, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::pow_dot(*get(A, d), *B, *get(C, d));
	}
}

//3d and 3d.
template<class T> void Tensor3dXL<T>::add(Tensor3dXL<T> *A, Tensor3dXL<T> *B, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::add(*get(A, d), *get(B, d), *get(C, d));
	}
}
template<class T> void Tensor3dXL<T>::sub(Tensor3dXL<T> *A, Tensor3dXL<T> *B, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::sub(*get(A, d), *get(B, d), *get(C, d));
	}
}
template<class T> void Tensor3dXL<T>::mul_dot(Tensor3dXL<T> *A, Tensor3dXL<T> *B, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::mul_dot(*get(A, d), *get(B, d), *get(C, d));
	}
}
template<class T> void Tensor3dXL<T>::div_dot(Tensor3dXL<T> *A, Tensor3dXL<T> *B, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::div_dot(*get(A, d), *get(B, d), *get(C, d));
	}
}
template<class T> void Tensor3dXL<T>::pow_dot(Tensor3dXL<T> *A, Tensor3dXL<T> *B, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::pow_dot(*get(A, d), *get(B, d), *get(C, d));
	}
}

//scalar type
template<class T> void Tensor3dXL<T>::add_scalar(Tensor3dXL<T> *A, T B, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::add_scalar(*get(A, d), B, *get(C, d));
	}
}

template<class T> void Tensor3dXL<T>::mul_scalar(Tensor3dXL<T> *A, T B, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::mul_scalar(*get(A, d), B, *get(C, d));
	}
}
template<class T> void Tensor3dXL<T>::sub_scalar(Tensor3dXL<T> *A, T B, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::sub_scalar(*get(A, d), *B, *get(C, d));
	}
}
template<class T> void Tensor3dXL<T>::sub_scalar(T B, Tensor3dXL<T> *A, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::sub_scalar(*B, *get(A, d), *get(C, d));
	}
}
template<class T> void Tensor3dXL<T>::div_scalar(Tensor3dXL<T> *A, T B, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::div_scalar(*get(A, d), *B, *get(C, d));
	}
}
template<class T> void Tensor3dXL<T>::pow_scalar(Tensor3dXL<T> *A, T B, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::pow_scalar(*get(A, d), *B, *get(C, d));
	}
}
template<class T> void Tensor3dXL<T>::max(Tensor3dXL<T>* A, int dim, Tensor3dXL<T> *C)
{
	if (dim == 0 || dim == 1)
	{
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			TensorXL<T>::max(*get(A, d), dim, *get(C, d));
		}
		setCols(C, TensorXL<T>::getCols(*get(C, 0))); // the rows and cols of the layers were updated
		setRows(C, TensorXL<T>::getRows(*get(C, 0))); // but we still need to update the 3d matrix's
	}
	else //dim ==2
	{
		unsigned i, j;
		T largest;
		bool first = true;
		for (i = 0; i < A->t_numCols; i++)
		{
			for (j = 0; j < A->t_numRows; j++)
			{
				for (unsigned d = 0; d < A->t_depth; d++)
				{
					if (first)
					{
						largest = Tensor3dXL<T>::get(A, i, j, d);
						first = false;
					}
					else {
						if (largest < Tensor3dXL<T>::get(A, j, i, d))
						{
							largest = Tensor3dXL<T>::get(A, j, i, d);
						}
					}
				}
				Tensor3dXL<T>::set(C, i, j, 0, largest);
				first = true;
			}
		}
		//i know the dimentions of C, so i set them for safety
		setDepth(C, 1);
		setCols(C, A->t_numCols);
		setRows(C, A->t_numRows);
	}
}
template<class T> void Tensor3dXL<T>::min(Tensor3dXL<T>* A, int dim, Tensor3dXL<T> *C)
{
	if (dim == 0 || dim == 1)
	{
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			TensorXL<T>::min(*get(A, d), dim, *get(C, d));
		}
		setCols(C, TensorXL<T>::getCols(*get(C, 0))); // the rows and cols of the layers were updated
		setRows(C, TensorXL<T>::getRows(*get(C, 0))); // but we still need to update the 3d matrix's
	}
	else //dim ==2
	{
		unsigned i, j;
		T smallest;
		bool first = true;
		for (i = 0; i < A->t_numCols; i++)
		{
			for (j = 0; j < A->t_numRows; j++)
			{
				for (unsigned d = 0; d < A->t_depth; d++)
				{
					if (first)
					{
						smallest = Tensor3dXL<T>::get(A, i, j, d);
						first = false;
					}
					else {
						if (smallest > Tensor3dXL<T>::get(A, j, i, d))
						{
							smallest = Tensor3dXL<T>::get(A, j, i, d);
						}
					}
				}
				Tensor3dXL<T>::set(C, i, j, 0, smallest);
				first = true;
			}
		}
		//i know the dimentions of C, so i set them for safety
		setDepth(C, 1);
		setCols(C, A->t_numCols);
		setRows(C, A->t_numRows);
	}
}

template<class T> void Tensor3dXL<T>::max(Tensor3dXL<T>* A, Tensor3dXL<T> *C) // full collapse
{
	Tensor3dXL<T>::max(A, 0, A);
	Tensor3dXL<T>::max(A, 1, A);
	Tensor3dXL<T>::max(A, 2, A);
}

template<class T> void Tensor3dXL<T>::min(Tensor3dXL<T>* A, Tensor3dXL<T> *C)
{
	Tensor3dXL<T>::min(A, 0, A);
	Tensor3dXL<T>::min(A, 1, A);
	Tensor3dXL<T>::min(A, 2, A);
}

template<class T> void Tensor3dXL<T>::max_scalar(Tensor3dXL<T>* A, T compare, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::max_scalar(*get(A, d), compare, *get(C, d));
	}
}

template<class T> void Tensor3dXL<T>::min_scalar(Tensor3dXL<T>* A, T compare, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::min_scalar(*get(A, d), compare, *get(C, d));
	}
}

template<class T> void Tensor3dXL<T>::min_dot(Tensor3dXL<T>* A, TensorXL<T> *B, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::min_dot(*get(A, d), B, *get(C, d));
	}
}

template<class T> void Tensor3dXL<T>::abs_tensor(Tensor3dXL<T> *A, Tensor3dXL<T>* C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::abs_tensor(*get(A, d), *get(C, d));
	}
}

template<class T> void Tensor3dXL<T>::floor_tensor(Tensor3dXL<T> *A, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::floor_tensor(*get(A, d), *get(C, d));
	}
}

template<class T> void Tensor3dXL<T>::exp2_tensor(Tensor3dXL<T> *A, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::exp2_tensor(*get(A, d), *get(C, d));
	}
}

template<class T> void Tensor3dXL<T>::clamp(Tensor3dXL<T> *A, T min, T max, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::clamp(*get(A, d), min, max, *get(C, d));
	}
}

template<class T> void Tensor3dXL<T>::roundTensor(Tensor3dXL<T> *A, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::roundTensor(*get(A, d), *get(C, d));
	}
}

template<class T> void Tensor3dXL<T>::reciprocal(Tensor3dXL<T> *A, Tensor3dXL<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::reciprocal(*get(A, d), *get(C, d));
	}
}
template<class T> void Tensor3dXL<T>::sum(Tensor3dXL<T> *A, int dim, Tensor3dXL<T>* C)
{
	if (dim == 0 || dim == 1)
	{
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			TensorXL<T>::sum(*get(A, d), dim, *get(C, d));
		}
		setCols(C, TensorXL<T>::getCols(get(C, 0))); // the rows and cols of the layers were updated
		setRows(C, TensorXL<T>::getRows(get(C, 0))); // but we still need to update the 3d matrix's
	}

	else
	{
		T running;
		running = T(0);
		for (unsigned i = 0; i < A->t_numCols; i++)
		{
			for (unsigned j = 0; j < A->t_numRows; j++)
			{
				for (unsigned d = 0; d < A->t_depth; d++)
				{
					running += get(A, j, i, d);
				}
				set(C, i, j, 0, running);
				running = 0;
			}
		}
		setDepth(C, 1);
		setCols(C, A->t_numCols);
		setRows(C, A->t_numRows);
	}
}

template<class T> void Tensor3dXL<T>::sign(Tensor3dXL<T> *A, Tensor3dXL<T>* C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::sign(*get(A, d), *get(C, d));
	}
}

template<class T> void Tensor3dXL<T>::mean(Tensor3dXL<T> *A, Tensor3dXL<T>* C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::mean(*get(A, d), *get(C, d));
		setRows(C, TensorXL<T>::getRows(*get(C, d))); //propogate the row change up to the 3d level
		setCols(C, TensorXL<T>::getCols(*get(C, d))); // and col change
	}
}

template<class T> void Tensor3dXL<T>::sqrt_tensor(Tensor3dXL<T> *A, Tensor3dXL<T>* C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::sqrt_tensor(*get(A, d), *get(C, d));
	}
}

//adressing methods where dep is depth and select the 2d array you want.
template<class T> T Tensor3dXL<T>::get(Tensor3dXL<T> *tensor, const unsigned &row, const unsigned &col, const unsigned &dep)
{
	if (dep < getDepth(tensor))
	{
		return TensorXL<T>::get(tensor->matrix[dep], row, col);
	}
	else
	{
		//assert(false);
		return 0;
	}
}

template<class T> void Tensor3dXL<T>::set(Tensor3dXL<T> *tensor, const unsigned &row, const unsigned &col, const unsigned &dep, T val)
{
	if (dep < getDepth(tensor))
	{
		TensorXL<T>::set(tensor->matrix[dep], row, col, val);
	}
}

template<class T> TensorXL<T>* Tensor3dXL<T>::get(Tensor3dXL<T> *tensor, const unsigned &dep)
{
	if (dep < getDepth(tensor))
	{
		return &tensor->matrix[dep];
	}
	else
	{
		//assert(false);
		return nullptr;
	}
}

template<class T> TensorXL<T>* Tensor3dXL<T>::get(Tensor3dXL<T> &tensor, const unsigned &dep)
{
	if (dep < getDepth(tensor))
	{
		return &tensor.matrix[dep];
	}
	else
	{
		//assert(false);
		return nullptr;
	}
}

template<class T> void Tensor3dXL<T>::set(Tensor3dXL<T> *tensor, const unsigned &dep, TensorXL<T>* slice)
{//does a copy operation from slice to tensor
	if (dep < getDepth(tensor))
	{
		if (slice != nullptr)
		{
			tensor->matrix[dep] = slice; // synthesis uses objects. DOES copy
		}
		else
		{
			tensor->matrix[dep] = nullptr;
		}
	}
}

template<class T> TensorXL<T>* Tensor3dXL<T>::twoD(Tensor3dXL<T> *A) //analog to one for 2d Tensors, but checks for ONE layer 
{
	if (getDepth(A) == 1)
	{
		return get(A,0);
	}
	else
	{
		//printf("faulty assumption");
		//assert(false);
		return nullptr;
	}
}

template<class T> void Tensor3dXL<T>::toTwoD(Tensor3dXL<T>* A, TensorXL<T>* C)
{
	if (getDepth(A) == 1)
	{
		TensorXL<T>::copy(*twoD(A), *C);
	}
	else if (getRows(A) == 1)
	{// Here we transform depth into rows. depth 0 being the first row
		TensorXL<T>::setRows(*C, getDepth(A));
		TensorXL<T>::setCols(*C, getCols(A));
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			for (unsigned c = 0; c < getCols(A); c++)
			{
				TensorXL<T>::set(*C, d, c, get(A, 0, c, d));
			}
		}
	}
	else if (getCols(A) == 1)
	{// Here we transform depth into cols. depth 0 being the first column
		TensorXL<T>::setCols(*C, getDepth(A));
		TensorXL<T>::setRows(*C, getRows(A));
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			for (unsigned r = 0; r < getRows(A); r++)
			{
				TensorXL<T>::set(*C, r, d, get(A, r, 0, d));
			}
		}
	}
	else
	{
		//printf("array cannot be reduced\n");
		//assert(false);
	}
}

template<class T> void Tensor3dXL<T>::append(Tensor3dXL<T> *tensor, TensorXL<T>* slice)
{
	setDepth(tensor, getDepth(tensor)+1);
	set(tensor, getDepth(tensor)-1 , slice);
	tensor->null = false;
}

//helper functions
template<class T>  void  Tensor3dXL<T>::print(Tensor3dXL<T> *A)
{
	printf("Tensor3dXL\n[");
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL<T>::print(*(get(A,d)));
		printf(",\n");
	}
	printf("] End Tensor3dXL\n");
}

template<class T> inline unsigned Tensor3dXL<T>::getRows(Tensor3dXL<T>* a)
{
	return a->t_numRows;
}

template<class T> inline unsigned Tensor3dXL<T>::getCols(Tensor3dXL<T>* a)
{
	return a->t_numCols;
}

template<class T> inline unsigned Tensor3dXL<T>::getDepth(Tensor3dXL<T>* a)
{
	return a->t_depth;
}
template<class T> inline unsigned Tensor3dXL<T>::getRows(const Tensor3dXL<T> &a)
{
	return a.t_numRows;
}

template<class T> inline unsigned Tensor3dXL<T>::getCols(const Tensor3dXL<T> &a)
{
	return a.t_numCols;
}

template<class T> inline unsigned Tensor3dXL<T>::getDepth(const Tensor3dXL<T> &a)
{
	return a.t_depth;
}

template<class T> bool Tensor3dXL<T>::eq(Tensor3dXL<T>* A, Tensor3dXL<T>* B)
{
	bool one = false;
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		if (!TensorXL<T>::eq_verbose(get(A,d), get(B,d)))
		{
			printf("depth %d", d);
			one = true;
		}
	}
	if (one)
	{
		return false;
	}
	else
	{
		return true;
	}
	
}

//private helper functions
template<class T> void Tensor3dXL<T>::setRows(Tensor3dXL<T>* a, int num)
{
	a->t_numRows = num;
}

template<class T> void Tensor3dXL<T>::setCols(Tensor3dXL<T>* a, int num) 
{
	a->t_numCols = num;
}

template<class T> void Tensor3dXL<T>::setDepth(Tensor3dXL<T>* a, int num)
{
	a->t_depth = num;
}

template<class T> bool Tensor3dXL<T>::sameSize(Tensor3dXL<T> *A, TensorXL<T> *B)
{
	return Tensor3dXL<T>::getRows(A) == TensorXL<T>::getRows(B) && Tensor3dXL<T>::getCols(A) == TensorXL<T>::getCols(B);
}

template<class T> bool Tensor3dXL<T>::sameSize(Tensor3dXL<T> *A, Tensor3dXL<T> *B) 
{
	return TensorXL<T>::getRows(A) == TensorXL<T>::getRows(B) && 
		TensorXL<T>::getCols(A) == TensorXL<T>::getCols(B) && 
		TensorXL<T>::getDepth(A) == TensorXL<T>::getDepth(B);
}

template<class T> bool Tensor3dXL<T>::sameDep(Tensor3dXL<T> *A, Tensor3dXL<T> *B)
{
	return TensorXL<T>::getDepth(A) == TensorXL<T>::getDepth(B);
}

#endif