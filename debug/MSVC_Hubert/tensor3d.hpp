//tensor3d.hpp
// 3d HLS tensor implementation for the HUBERT project.
//created by Hunter Messner on 7/19/2021

#ifndef __HUBERT_TENSOR3D_HPP__
#define __HUBERT_TENSOR3D_HPP__

#include "HLS/hls.h"
#include "HLS/math.h"
#include "HLS/stdio.h"
#include "tensors.hpp"
#include "tensor3d.h"
#include <iostream>

/*                    DEFINITIONS                      */
template<class T>
Tensor3d<T>::Tensor3d(Tensor3d<T> *A) //Takes 2d matrixes from the pointer and creates new Tensors based on them
{
	t_numCols = getCols(A); 
	t_numRows = getRows(A);
	t_depth = getDepth(A);
	for (unsigned d = 0; d < MAX_DEPTH; d++)
	{
		set(this, d, nullptr);
	}
	for (unsigned d = 0; d < t_depth; d++)
	{
		Tensor<float>* layer = new Tensor<float>(get(A, d));
		set(this, d, layer);
	}
}

template<class T>
Tensor3d<T>::Tensor3d(Tensor<T> *A) //Takes a 2d matrix and copies it into the first layer.
{
	t_numCols = Tensor<T>::getCols(A);
	t_numRows = Tensor<T>::getRows(A);
	t_depth = 1;
	for (unsigned d = 0; d < MAX_DEPTH; d++)
	{
		set(this, d, nullptr);
	}
	set(this, 0, A);
}

template<class T>
Tensor3d<T>::Tensor3d(void)
{ //if using this in conjuction with append(), make sure to setCols and setRows
	t_numCols = 0;
	t_numRows = 0;
	t_depth = 0;
	for (unsigned d = 0; d < MAX_DEPTH; d++)
	{
		set(this, d, nullptr);
	}
}

//special multiply
template<class T> void Tensor3d<T>::linear_mul(Tensor3d<T> *A, Tensor<T> *B, Tensor3d<T> *C)
{
	Tensor<T>::transpose(B);
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::mul_cross(get(A, d), B, get(C, d));
	}
	setCols(C, Tensor<T>::getCols(B));
	setRows(C, getRows(A));
	Tensor<T>::transpose(B);
}

//2d broadcasting across 3d
template<class T> void Tensor3d<T>::add(Tensor3d<T> *A, Tensor<T> *B, Tensor3d<T> *C)
{
	//defer error checking to a layer by layer basis. 
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::add(get(A, d), B, get(C, d));
	}
}

template<class T> void Tensor3d<T>::sub(Tensor3d<T> *A, Tensor<T> *B, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::sub(get(A, d), B, get(C, d));
	}
}
template<class T> void Tensor3d<T>::mul_dot(Tensor3d<T> *A, Tensor<T> *B, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::mul_dot(get(A, d), B, get(C, d));
	}
}

template<class T> void Tensor3d<T>::div_dot(Tensor3d<T> *A, Tensor<T> *B, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::div_dot(get(A, d), B, get(C, d));
	}
}

template<class T> void Tensor3d<T>::pow_dot(Tensor3d<T> *A, Tensor<T> *B, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::pow_dot(get(A, d), B, get(C, d));
	}
}

//3d and 3d. TODO: implement broadcasting for 1 depth 3d arrays.
template<class T> void Tensor3d<T>::add(Tensor3d<T> *A, Tensor3d<T> *B, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::add(get(A, d), get(B, d), get(C, d));
	}
}
template<class T> void Tensor3d<T>::sub(Tensor3d<T> *A, Tensor3d<T> *B, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::sub(get(A, d), get(B, d), get(C, d));
	}
}
template<class T> void Tensor3d<T>::mul_dot(Tensor3d<T> *A, Tensor3d<T> *B, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::mul_dot(get(A, d), get(B, d), get(C, d));
	}
}
template<class T> void Tensor3d<T>::div_dot(Tensor3d<T> *A, Tensor3d<T> *B, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::div_dot(get(A, d), get(B, d), get(C, d));
	}
}
template<class T> void Tensor3d<T>::pow_dot(Tensor3d<T> *A, Tensor3d<T> *B, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::pow_dot(get(A, d), get(B, d), get(C, d));
	}
}

//scalar type
template<class T> void Tensor3d<T>::add_scalar(Tensor3d<T> *A, T B, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::add_scalar(get(A, d), B, get(C, d));
	}
}

template<class T> void Tensor3d<T>::mul_scalar(Tensor3d<T> *A, T B, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::mul_scalar(get(A, d), B, get(C, d));
	}
}
template<class T> void Tensor3d<T>::sub_scalar(Tensor3d<T> *A, T B, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::sub_scalar(get(A, d), B, get(C, d));
	}
}
template<class T> void Tensor3d<T>::sub_scalar(T B, Tensor3d<T> *A, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::sub_scalar(B, get(A, d), get(C, d));
	}
}
template<class T> void Tensor3d<T>::div_scalar(Tensor3d<T> *A, T B, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::div_scalar(get(A, d), B, get(C, d));
	}
}
template<class T> void Tensor3d<T>::pow_scalar(Tensor3d<T> *A, T B, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::pow_scalar(get(A, d), B, get(C, d));
	}
}
template<class T> void Tensor3d<T>::max(Tensor3d<T>* A, int dim, Tensor3d<T> *C)
{
	if (dim == 0 || dim == 1)
	{
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			Tensor<T>::max(get(A, d), dim, get(C, d));
		}
		setCols(C, Tensor<T>::getCols(get(C, 0))); // the rows and cols of the layers were updated
		setRows(C, Tensor<T>::getRows(get(C, 0))); // but we still need to update the 3d matrix's
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
						largest = Tensor3d<T>::get(A, i, j, d);
						first = false;
					}
					else {
						if (largest < Tensor3d<T>::get(A, j, i, d))
						{
							largest = Tensor3d<T>::get(A, j, i, d);
						}
					}
				}
				Tensor3d<T>::set(C, i, j, 0, largest);
				first = true;
			}
		}
		//i know the dimentions of C, so i set them for safety
		setDepth(C, 1);
		setCols(C, A->t_numCols);
		setRows(C, A->t_numRows);
	}
}
template<class T> void Tensor3d<T>::min(Tensor3d<T>* A, int dim, Tensor3d<T> *C)
{
	if (dim == 0 || dim == 1)
	{
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			Tensor<T>::min(get(A, d), dim, get(C, d));
		}
		setCols(C, Tensor<T>::getCols(get(C, 0))); // the rows and cols of the layers were updated
		setRows(C, Tensor<T>::getRows(get(C, 0))); // but we still need to update the 3d matrix's
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
						smallest = Tensor3d<T>::get(A, i, j, d);
						first = false;
					}
					else {
						if (smallest > Tensor3d<T>::get(A, j, i, d))
						{
							smallest = Tensor3d<T>::get(A, j, i, d);
						}
					}
				}
				Tensor3d<T>::set(C, i, j, 0, smallest);
				first = true;
			}
		}
		//i know the dimentions of C, so i set them for safety
		setDepth(C, 1);
		setCols(C, A->t_numCols);
		setRows(C, A->t_numRows);
	}
}

template<class T> void Tensor3d<T>::max(Tensor3d<T>* A, Tensor3d<T> *C) // full collapse
{
	Tensor3d<T>::max(A, 0, A);
	Tensor3d<T>::max(A, 1, A);
	Tensor3d<T>::max(A, 2, A);
}

template<class T> void Tensor3d<T>::min(Tensor3d<T>* A, Tensor3d<T> *C)
{
	Tensor3d<T>::min(A, 0, A);
	Tensor3d<T>::min(A, 1, A);
	Tensor3d<T>::min(A, 2, A);
}

template<class T> void Tensor3d<T>::max_scalar(Tensor3d<T>* A, T compare, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::max_scalar(get(A, d), compare, get(C, d));
	}
}

template<class T> void Tensor3d<T>::min_scalar(Tensor3d<T>* A, T compare, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::min_scalar(get(A, d), compare, get(C, d));
	}
}

template<class T> void Tensor3d<T>::min_dot(Tensor3d<T>* A, Tensor<T> *B, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::min_dot(get(A, d), B, get(C, d));
	}
}

template<class T> void Tensor3d<T>::abs_tensor(Tensor3d<T> *A, Tensor3d<T>* C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::abs_tensor(get(A, d), get(C, d));
	}
}

template<class T> void Tensor3d<T>::floor_tensor(Tensor3d<T> *A, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::floor_tensor(get(A, d), get(C, d));
	}
}

template<class T> void Tensor3d<T>::exp2_tensor(Tensor3d<T> *A, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::exp2_tensor(get(A, d), get(C, d));
	}
}

template<class T> void Tensor3d<T>::clamp(Tensor3d<T> *A, T min, T max, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::clamp(get(A, d), min, max, get(C, d));
	}
}

template<class T> void Tensor3d<T>::roundTensor(Tensor3d<T> *A, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::roundTensor(get(A, d), get(C, d));
	}
}

template<class T> void Tensor3d<T>::reciprocal(Tensor3d<T> *A, Tensor3d<T> *C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::reciprocal(get(A, d), get(C, d));
	}
}
template<class T> void Tensor3d<T>::sum(Tensor3d<T> *A, int dim, Tensor3d<T>* C)
{
	if (dim == 0 || dim == 1)
	{
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			Tensor<T>::sum(get(A, d), dim, get(C, d));
		}
		setCols(C, Tensor<T>::getCols(get(C, 0))); // the rows and cols of the layers were updated
		setRows(C, Tensor<T>::getRows(get(C, 0))); // but we still need to update the 3d matrix's
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

template<class T> void Tensor3d<T>::sign(Tensor3d<T> *A, Tensor3d<T>* C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::sign(get(A, d), get(C, d));
	}
}

template<class T> void Tensor3d<T>::mean(Tensor3d<T> *A, Tensor3d<T>* C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::mean(get(A, d), get(C, d));
		setRows(C, Tensor<T>::getRows(get(C, d))); //propogate the row change up to the 3d level
		setCols(C, Tensor<T>::getCols(get(C, d))); // and col change
	}
}

template<class T> void Tensor3d<T>::sqrt_tensor(Tensor3d<T> *A, Tensor3d<T>* C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::sqrt_tensor(get(A, d), get(C, d));
	}
}

//manipulation
//TODO: only if necessary
//template<class T> Tensor3d<T>:: void tensor_frexp(Tensor<float>* inputs, Tensor<float>* m, Tensor<float>* e){}

//adressing methods where dep is depth and select the 2d array you want.
template<class T> T Tensor3d<T>::get(Tensor3d<T> *tensor, const unsigned &row, const unsigned &col, const unsigned &dep)
{
	if (dep < getDepth(tensor))
	{
		return Tensor<T>::get(tensor->matrix[dep], row, col);
	}
	else
	{
		assert(false);
		return 0;
	}
}

template<class T> void Tensor3d<T>::set(Tensor3d<T> *tensor, const unsigned &row, const unsigned &col, const unsigned &dep, T val)
{
	if (dep < getDepth(tensor))
	{
		Tensor<T>::set(tensor->matrix[dep], row, col, val);
	}
}

template<class T> Tensor<T>* Tensor3d<T>::get(Tensor3d<T> *tensor, const unsigned &dep)
{
	if (dep < getDepth(tensor))
	{
		return tensor->matrix[dep];
	}
	else
	{
		assert(false);
		return nullptr;
	}
}
template<class T> void Tensor3d<T>::set(Tensor3d<T> *tensor, const unsigned &dep, Tensor<T>* slice)
{//does a copy operation from slice to tensor
	if (dep < getDepth(tensor))
	{
		if (slice != nullptr)
		{
			tensor->matrix[dep] = slice; //does NOT COPY. simply points to already existing tensor
		}
		else
		{
			tensor->matrix[dep] = nullptr;
		}
	}
}

template<class T> Tensor<T>* Tensor3d<T>::twoD(Tensor3d<T> *A) //analog to one for 2d Tensors, but checks for ONE layer 
{
	if (getDepth(A) == 1)
	{
		return get(A,0);
	}
	else
	{
		printf("faulty assumption");
		assert(false);
		return nullptr;
	}
}

template<class T> void Tensor3d<T>::toTwoD(Tensor3d<T>* A, Tensor<T>* C)
{
	if (getDepth(A) == 1)
	{
		Tensor<T>::copy(twoD(A),C);
	}
	else if (getRows(A) == 1)
	{// Here we transform depth into rows. depth 0 being the first row
		Tensor<T>::setRows(C, getDepth(A));
		Tensor<T>::setCols(C, getCols(A));
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			for (unsigned c = 0; c < getCols(A); c++)
			{
				Tensor<T>::set(C, d, c, get(A, 0, c, d));
			}
		}
	}
	else if (getCols(A) == 1)
	{// Here we transform depth into cols. depth 0 being the first column
		Tensor<T>::setCols(C, getDepth(A));
		Tensor<T>::setRows(C, getRows(A));
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			for (unsigned r = 0; r < getRows(A); r++)
			{
				Tensor<T>::set(C, r, d, get(A, r, 0, d));
			}
		}
	}
	else
	{
		printf("array cannot be reduced\n");
		assert(false);
	}
}

template<class T> void Tensor3d<T>::append(Tensor3d<T> *tensor, Tensor<T>* slice)
{
	setDepth(tensor, getDepth(tensor)+1);
	set(tensor, getDepth(tensor)-1 , slice);
}

//helper functions
template<class T>  void  Tensor3d<T>::print(Tensor3d<T> *A)
{
	printf("Tensor3d\n[");
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor<T>::print(get(A,d));
		printf(",\n");
	}
	printf("] End Tensor3d\n");
}

template<class T> inline unsigned Tensor3d<T>::getRows(Tensor3d<T>* a)
{
	return a->t_numRows;
}

template<class T> inline unsigned Tensor3d<T>::getCols(Tensor3d<T>* a)
{
	return a->t_numCols;
}

template<class T> inline unsigned Tensor3d<T>::getDepth(Tensor3d<T>* a)
{
	return a->t_depth;
}

template<class T> bool Tensor3d<T>::eq(Tensor3d<T>* A, Tensor3d<T>* B)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		if (!eq(get(A,d), get(B,d)))
		{
			return false;
		}
	}
	return true;
}

//private helper functions
template<class T> void Tensor3d<T>::setRows(Tensor3d<T>* a, int num)
{
	a->t_numRows = num;
}

template<class T> void Tensor3d<T>::setCols(Tensor3d<T>* a, int num) 
{
	a->t_numCols = num;
}

template<class T> void Tensor3d<T>::setDepth(Tensor3d<T>* a, int num)
{
	a->t_depth = num;
}

template<class T> bool Tensor3d<T>::sameSize(Tensor3d<T> *A, Tensor<T> *B)
{
	return Tensor3d<T>::getRows(A) == Tensor<T>::getRows(B) && Tensor3d<T>::getCols(A) == Tensor<T>::getCols(B);
}

template<class T> bool Tensor3d<T>::sameSize(Tensor3d<T> *A, Tensor3d<T> *B) 
{
	return Tensor<T>::getRows(A) == Tensor<T>::getRows(B) && 
		Tensor<T>::getCols(A) == Tensor<T>::getCols(B) && 
		Tensor<T>::getDepth(A) == Tensor<T>::getDepth(B);
}

template<class T> bool Tensor3d<T>::sameDep(Tensor3d<T> *A, Tensor3d<T> *B)
{
	return Tensor<T>::getDepth(A) == Tensor<T>::getDepth(B);
}

#endif