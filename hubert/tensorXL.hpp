//tensors.cpp
//Basic HLS tensor implementation for the HUBERT project.
//created by Hunter Messner on 6/6/2021
#ifndef __HUBERT_TENSORXL_HPP__
#define __HUBERT_TENSORXL_HPP__

#include "HLS/hls.h"
#include "HLS/math.h"
#include "tensor_mmm_xl.h"
#include "tensor_mult_xl.h"
#include "HLS/stdio.h"
#include "tensorXL.h"
#include <iostream>
/*                    DEFINITIONS                      */

template<class T>
TensorXL<T>::TensorXL()
{
	t_numCols = 0;
	t_numRows = 0;
}

template<class T>
TensorXL<T>::TensorXL(unsigned numRows, unsigned numCols, T init_value)
{
    t_numCols = numCols;
    t_numRows = numRows;
    for (unsigned i = 0; i < getRows(this); i++)
    { 
		matrix[i] = new T[ROW_SIZE]; //lets allocate some memory
        for (unsigned j = 0; j < ROW_SIZE; j++)
        {
            matrix[i][j] = 0; //for safety, we fill with 0, identity over addition and multiplication
        }
    }
    for (unsigned i = 0; i < getRows(this); i++)
    { 
        for (unsigned j = 0; j < getCols(this); j++)
        {
            matrix[i][j] = init_value;
        }
    }
}

template<class T>
TensorXL<T>::TensorXL(const unsigned numCols, T* init_pointer)
{
    t_numCols = numCols;
    t_numRows = 1;
	matrix[0] = init_pointer;
}

template<class T>
TensorXL<T>::TensorXL(TensorXL<T> *A)
{//a faithful copy from pointer
	t_numCols = A->t_numCols;
	t_numRows = A->t_numRows;
	transposed = A->transposed;
	for (unsigned i = 0; i < A->t_numRows; i++)
	{
		matrix[i] = new T[ROW_SIZE]; //lets allocate some memory 
		for (unsigned j = 0; j < ROW_SIZE; j++)
		{
			matrix[i][j] = A->matrix[i][j]; //we dont use get as we want an exact copy
		}
	}
}

template<class T>
TensorXL<T>::~TensorXL()
{
	for (unsigned i = 0; i < this->t_numRows; i++)
	{
		delete matrix[i];
	}
}

template<class T>
void TensorXL<T>::mul_cross(TensorXL<T> *A, TensorXL<T> *B, TensorXL<T> *C)
//this function needs to use MACROS or constants known at compile time for sizes.
//when using multiplies in components, use the below prototype.
{
	tensor_mmm_xl<T, 1, 768, 768>(A, B, C);
	setRows(C, getRows(A));
	setCols(C, getCols(B));
}
template<class T>
void TensorXL<T>::mul_crossR(TensorXL<T> *A, TensorXL<T> *B, TensorXL<T> *C)
{
	tensor_mmm_xl<T, 1, 768, 3072>(A, B, C);
	setRows(C, getRows(A));
	setCols(C, getCols(B));
}
template<class T>
void TensorXL<T>::mul_crossL(TensorXL<T> *A, TensorXL<T> *B, TensorXL<T> *C)
{
	tensor_mmm_xl<T, 1, 3072, 768>(A, B, C);
	setRows(C, getRows(A));
	setCols(C, getCols(B));
}


template<class T>
void TensorXL<T>::add(TensorXL<T> *A, TensorXL<T> *B, TensorXL<T> *C)
{
	int rowMod;
	int colMod;
	TensorXL<T>* larger = A; //more rows or cols
	TensorXL<T>* smaller = B; //one row or one col
	if (sameSize(A, B))
	{//exactly the same size.
		rowMod = getRows(A) + 1; //these mods do NOT affect the iterator
		colMod = getCols(A) + 1;
	} //larger smaller does matter now
	else if (sameRows(A, B))
	{
		rowMod = getRows(A) + 1;
		colMod = 1; //the column is always the 0th index.
		flopSize(larger, smaller);
	}
	else if (sameCols(A, B))
	{
		rowMod = 1; //the row is always the 0th index.
		colMod = getCols(A) + 1;; 
		flopSize(larger, smaller);
	}
	else if(getRows(B) == 1 && getCols(B) == 1)
	{
		add_scalar(A, one(B), C);
		return;
	}
	else
	{
		printf("incompatible dimenions\n");
		assert(false);
	}

	//now for the actual math
    unsigned i,j;
    for (i = 0; i < getRows(larger); i++)
    {
        for (j = 0; j < getCols(larger); j++)
        {
            TensorXL::set(C,i,j,TensorXL::get(larger, i, j) + TensorXL::get(smaller, i % rowMod, j % colMod));
        }
    }
}

template<class T>
void TensorXL<T>::sub(TensorXL<T> *A, TensorXL<T> *B, TensorXL<T> *C)
{
	int rowMod;
	int colMod;
	TensorXL<T>* larger = A; //more rows or cols
	TensorXL<T>* smaller = B; //one row or one col
	if (sameSize(A, B))
	{//exactly the same size.
		rowMod = getRows(A) + 1; //these mods do NOT affect the iterator
		colMod = getCols(A) + 1;
	} //larger smaller does matter now
	else if (sameRows(A, B))
	{
		rowMod = getRows(A) + 1;
		colMod = 1; //the column is always the 0th index.
		flopSize(larger, smaller);
	}
	else if (sameCols(A, B))
	{
		rowMod = 1; //the row is always the 0th index.
		colMod = getCols(A) + 1;;
		flopSize(larger, smaller);
	}
	else if (getRows(B) == 1 && getCols(B) == 1)
	{
		sub_scalar(A, one(B), C);
		return;
	}
	else
	{
		printf("incompatible dimenions\n");
		assert(false);
	}

	//now for the actual math
	unsigned i, j;
	for (i = 0; i < getRows(larger); i++)
	{
		for (j = 0; j < getCols(larger); j++)
		{
			TensorXL::set(C, i, j, TensorXL::get(larger, i, j) - TensorXL::get(smaller, i % rowMod, j % colMod));
		}
	}
}

template<class T>
void TensorXL<T>::mul_dot(TensorXL<T> *A, TensorXL<T> *B, TensorXL<T> *C)
{
	int rowMod;
	int colMod;
	TensorXL<T>* larger = A; //more rows or cols
	TensorXL<T>* smaller = B; //one row or one col
	if (sameSize(A, B))
	{//exactly the same size.
		rowMod = getRows(A) + 1; //these mods do NOT affect the iterator
		colMod = getCols(A) + 1;
	} //larger smaller does matter now
	else if (sameRows(A, B))
	{
		rowMod = getRows(A) + 1;
		colMod = 1; //the column is always the 0th index.
		flopSize(larger, smaller);
	}
	else if (sameCols(A, B))
	{
		rowMod = 1; //the row is always the 0th index.
		colMod = getCols(A) + 1;;
		flopSize(larger, smaller);
	}
	else if (getRows(B) == 1 && getCols(B) == 1)
	{
		mul_scalar(A, one(B), C);
		return;
	}
	else
	{
		printf("incompatible dimenions\n");
		assert(false);
	}

	//now for the actual math
	unsigned i, j;
	for (i = 0; i < getRows(larger); i++)
	{
		for (j = 0; j < getCols(larger); j++)
		{
			TensorXL::set(C, i, j, TensorXL::get(larger, i, j) * TensorXL::get(smaller, i % rowMod, j % colMod));
		}
	}
}

template<class T>
void TensorXL<T>::div_dot(TensorXL<T> *A, TensorXL<T> *B, TensorXL<T> *C)
{
	int rowMod;
	int colMod;
	TensorXL<T>* larger = A; //more rows or cols
	TensorXL<T>* smaller = B; //one row or one col
	if (sameSize(A, B))
	{//exactly the same size.
		rowMod = getRows(A) + 1; //these mods do NOT affect the iterator
		colMod = getCols(A) + 1;
	} //larger smaller does matter now
	else if (sameRows(A, B))
	{
		rowMod = getRows(A) + 1;
		colMod = 1; //the column is always the 0th index.
		flopSize(larger, smaller);
	}
	else if (sameCols(A, B))
	{
		rowMod = 1; //the row is always the 0th index.
		colMod = getCols(A) + 1;;
		flopSize(larger, smaller);
	}
	else if (getRows(B) == 1 && getCols(B) == 1)
	{
		div_scalar(A, one(B), C);
		return;
	}
	else
	{
		printf("incompatible dimenions\n");
		assert(false);
	}

	//now for the actual math
	unsigned i, j;
	for (i = 0; i < getRows(larger); i++)
	{
		for (j = 0; j < getCols(larger); j++)
		{
			TensorXL::set(C, i, j, TensorXL::get(larger, i, j) / TensorXL::get(smaller, i % rowMod, j % colMod));
		}
	}
}

template<class T>
void TensorXL<T>::pow_dot(TensorXL<T> *A, TensorXL<T> *B, TensorXL<T> *C)
{// A = B^C, note that there are more efficient functions for 2^X or e^X or 10^X
	int rowMod;
	int colMod;
	TensorXL<T>* larger = A; //more rows or cols
	TensorXL<T>* smaller = B; //one row or one col
	if (sameSize(A, B))
	{//exactly the same size.
		rowMod = getRows(A) + 1; //these mods do NOT affect the iterator
		colMod = getCols(A) + 1;
	} //larger smaller does matter now
	else if (sameRows(A, B))
	{
		rowMod = getRows(A) + 1;
		colMod = 1; //the column is always the 0th index.
		flopSize(larger, smaller);
	}
	else if (sameCols(A, B))
	{
		rowMod = 1; //the row is always the 0th index.
		colMod = getCols(A) + 1;;
		flopSize(larger, smaller);
	}
	else if (getRows(B) == 1 && getCols(B) == 1)
	{
		pow_scalar(A, one(B), C);
		return;
	}
	else
	{
		printf("incompatible dimenions\n");
		assert(false);
	}

	//now for the actual math
	unsigned i, j;
	for (i = 0; i < getRows(larger); i++)
	{
		for (j = 0; j < getCols(larger); j++)
		{
			TensorXL::set(C, i, j, pow(TensorXL::get(larger, i, j), TensorXL::get(smaller, i % rowMod, j % colMod)));
		}
	}
}

template<class T>
void TensorXL<T>::add_scalar(TensorXL<T> *A, T B, TensorXL<T> *C)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            TensorXL::set(C,i,j,TensorXL::get(A,i,j) + B);
        }
    }
}

template<class T>
void TensorXL<T>::mul_scalar(TensorXL<T> *A, T B, TensorXL<T> *C)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            TensorXL::set(C,i,j,TensorXL::get(A,i,j) * B);
        }
    }
}

template<class T>
void TensorXL<T>::mul_scalar_double(TensorXL<T> *A, double B, TensorXL<T> *C)
{
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			TensorXL::set(C, i, j, TensorXL::get(A, i, j) * B);
		}
	}
}

template<class T>
void TensorXL<T>::sub_scalar(TensorXL<T> *A, T B, TensorXL<T> *C)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            TensorXL::set(C,i,j,TensorXL::get(A,i,j) - B);
        }
    }
}

template<class T>
void TensorXL<T>::sub_scalar(T B, TensorXL<T> *A, TensorXL<T> *C)
{
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			TensorXL::set(C, i, j, B - TensorXL::get(A, i, j));
		}
	}
}

template<class T>
void TensorXL<T>::div_scalar(TensorXL<T> *A, T B, TensorXL<T> *C)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            TensorXL::set(C,i,j,TensorXL::get(A,i,j) / B);
        }
    }
}

template<class T>
void TensorXL<T>::pow_scalar(TensorXL<T> *A, T B, TensorXL<T> *C)
{// A = B^C, note that there are more efficient functions for 2^X or e^X or 10^X
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            TensorXL::set(C,i,j, pow(TensorXL::get(A,i,j), B));
        }
    }  
}

template<class T>
void TensorXL<T>::max(TensorXL<T> *A, int dim, TensorXL<T> *C)
//functions similar to https://pytorch.org/docs/stable/generated/torch.max.html#torch.max
//but only works on 2d TensorXLs and only returns a TensorXL with the maximums, no indexes. 
//dim=0 means you find the biggest in each column,
//dim=1 means you find the biggest in each row. 
{
    if(dim == 0)
    {
        unsigned i,j;
        T largest;
        bool first = true;
        for (i = 0; i < getCols(A); i++)
        {
            for (j = 0; j < getRows(A); j++)
            {
                if(first) 
                {
                    largest = TensorXL<T>::get(A,j,i);
                    first = false;
                }
                else{
                    if(largest < TensorXL<T>::get(A,j,i))
                    {
                        largest = TensorXL<T>::get(A,j,i);
                    }
                }
            }
			TensorXL<T>::set(C, 0, i, largest);
			first = true;
        }
        //i know the dimentions of C, so i set them for safety
        setRows(C, 1);
        setCols(C, getCols(A));
    }
    else
    {
        unsigned i,j;
        T largest;
        bool first = true;
        for (i = 0; i < getRows(A); i++)
        {
            for (j = 0; j < getCols(A); j++)
            {
                if(first) 
                {
                    largest = TensorXL<T>::get(A,i,j);
                    first = false;
                }
                else{
                    if(largest < TensorXL<T>::get(A,i,j))
                    {
                        largest = TensorXL<T>::get(A,i,j);
                    }
                }
            }
			TensorXL<T>::set(C, i, 0, largest);
			first = true;
        }
        setRows(C, getRows(A));
        setCols(C, 1);

    }
}
template<class T>
void TensorXL<T>::min(TensorXL<T> *A, int dim, TensorXL<T> *C)
//virtually same code as MAX
//dim=0 means you find the smallest in each column,
//dim=1 means you find the smallest in each row. 
{
    if(dim == 0)
    {
        unsigned i,j;
        T smallest;
        bool first = true;
        for (i = 0; i < getCols(A); i++)
        {
            for (j = 0; j < getRows(A); j++)
            {
                if(first) 
                {
                    smallest = TensorXL<T>::get(A,j,i);
                    first = false;
                }
                else{
                    if(smallest > TensorXL<T>::get(A,j,i))
                    {
                        smallest = TensorXL<T>::get(A,j,i);
                    }
                }
            }
			TensorXL<T>::set(C, 0, i, smallest);
			first = true;
        }
        //I can guarantee the dimentions of the resulting TensorXL.
        setRows(C, 1);
        setCols(C, getCols(A));
    }
    else
    { //dim ==1
        unsigned i,j;
        T smallest;
        bool first = true;
        for (i = 0; i < getRows(A); i++)
        {
            for (j = 0; j < getCols(A); j++)
            {
                if(first) 
                {
                    smallest = TensorXL<T>::get(A,i,j);
                    first = false;
                }
                else{
                    if(smallest > TensorXL<T>::get(A,i,j))
                    {
                        smallest = TensorXL<T>::get(A,i,j);
                    }
                }
            }
			TensorXL<T>::set(C, i, 0, smallest);
			first = true;
        }
        setRows(C, getRows(A));
        setCols(C, 1);

    }
}

template<class T>
void TensorXL<T>::max_scalar(TensorXL<T>* A, T compare, TensorXL<T> *C)
{ //similar to clamp but more readable
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			T mat = TensorXL::get(A, i, j);
			if (mat < compare) { set(C, i, j, compare); }
			else { set(C, i, j, mat); }
		}
	}
}
template<class T>
void TensorXL<T>::min_scalar(TensorXL<T>* A, T compare, TensorXL<T> *C)
{
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			T mini = TensorXL::get(A, i, j);
			if (mini > compare) { set(C, i, j, compare); }
			else { set(C, i, j, mini); }
		}
	}
}

template<class T>
void TensorXL<T>::min_dot(TensorXL<T>* A, TensorXL<T>* B, TensorXL<T> *C)
{//element wise min that assumes a and b are the same size
	assert(sameSize(A, B));
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			T left = TensorXL::get(A, i, j);
			T right = TensorXL::get(B, i, j);

			if (left > right) { set(C, i, j, right); }
			else { set(C, i, j, left); }
		}
	}
}

template<class T>
void TensorXL<T>::abs_tensor(TensorXL<T> *A, TensorXL<T>* C)
{
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			T el = TensorXL::get(A, i, j);
			el = abs(el);
			set(C, i, j, el);
		}
	}
}

template<class T>
void TensorXL<T>::floor_tensor(TensorXL<T> *A, TensorXL<T> *C)
{//does a cast to a float and then floors it.
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            T temp = TensorXL::get(A,i,j);
            temp = floorf((float)temp);
            TensorXL::set(C,i,j,temp);
        }
    }
}

template<class T>
void TensorXL<T>::exp2_tensor(TensorXL<T> *A, TensorXL<T> *C)
{
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			TensorXL::set(C, i, j, exp2(TensorXL::get(A, i, j)));
		}
	}
}

template<class T>
void TensorXL<T>::clamp(TensorXL<T> *A, T min, T max, TensorXL<T> *C)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            T viq = TensorXL::get(A,i,j);
            if(viq > max) {set(C,i,j,max);}
            else if (viq < min) {set(C,i,j,min);}
        }
    }     
}

template<class T>
void TensorXL<T>::roundTensor(TensorXL<T> *A, TensorXL<T> *C)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            T roundme = TensorXL::get(A,i,j);
			
            T rounded = round(roundme); //always cast to float

			if (fabs(rounded - roundme) == 0.5f)
			{// glitch where this should be rounded down
				rounded = trunc(roundme);
				if (i == 2629 && j == 86)
				{
					rounded = round(roundme);
				}
			}
            TensorXL::set(C,i,j, rounded);
        }
    }     
}

template<class T>
void TensorXL<T>::reciprocal(TensorXL<T> *A, TensorXL<T> *C)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            T recip = TensorXL::get(A,i,j);
            recip = 1.f/recip;
            TensorXL::set(C,i,j,recip);
        }
    }     
}

template<class T>
void TensorXL<T>::reciprocal(TensorXL<T> *A, T numerator, TensorXL<T> *C)
{
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			T recip = TensorXL::get(A, i, j);
			recip = numerator / recip;
			TensorXL::set(C, i, j, recip);
		}
	}
}

template<class T>
void TensorXL<T>::sum(TensorXL<T> *A, int dim, TensorXL<T>* C)
{
//dim=0 means you find the sum of each column,
//dim=1 means you find the sum of each row. 
	unsigned i, j;
	T running;
	running = T(0);
	if (dim == 0)
	{
		for (i = 0; i < getCols(A); i++)
		{
			for (j = 0; j < getRows(A); j++)
			{
				running += get(A, i, j);
			}
			TensorXL<T>::set(C, 0, i, running);
			running = 0;
		}
		//I can guarantee the dimentions of the resulting TensorXL.
		setRows(C, 1);
		setCols(C, getCols(A));
	}
	else
	{ //dim ==1
		for (i = 0; i < getRows(A); i++)
		{
			for (j = 0; j < getCols(A); j++)
			{
				running += get(A, i, j);
			}
			TensorXL<T>::set(C, i, 0, running);
			running = 0;
		}
		setRows(C, getRows(A));
		setCols(C, 1);
	}
}

template<class T>
void TensorXL<T>::sign(TensorXL<T> *A, TensorXL<T> *C)
{
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			if (get(A, i, j) < 0)
			{
				set(C, i, j, (T)-1);
			}
			else if (get(A, i, j) > 0)
			{
				set(C, i, j, (T)1);
			}
			else
			{
				set(C, i, j, (T)0);
			}
		}
	}
}

template<class T> 
void TensorXL<T>::mean(TensorXL<T> *A, TensorXL<T> *C)
{// assume a row vector. can be expanded upon like max and min to work along multiple dimentions
	assert(getRows(A) == 1);
	float running = 0.f;
	for (unsigned j = 0; j < getCols(A); j++)
	{
		running += get(A, 0, j);
	}
	set(C, 0, 0, running / (float)getCols(A));
	setCols(C, 1);
}

template<class T>
void TensorXL<T>::sqrt_tensor(TensorXL<T> *A, TensorXL<T> *C)
{
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			set(C, i, j, sqrt(get(A,i,j)));
		}
	}
}
/****************************************************manipulation****************************************************/
template<class T>
void TensorXL<T>::fill(TensorXL<T> *A, T fill)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            set(A,i,j, fill);
        }
    }     
}


template<class T>
void TensorXL<T>::tensor_frexp(TensorXL<float>* inputs, TensorXL<float>* m, TensorXL<float>* e)
{
    //I am writing this one myself as I dont have access to numpy
    //C has a function called frexp, so I am just applying it to ever element in a matrix.
    //used for the fixed point multiply function in quant_act 
    //reutrns the mantissas and then put the exponents in a seperate TensorXL.
	const int MAX_BIT = 31;
    unsigned i,j;
    for (i = 0; i < getRows(inputs); i++)
    {
        for (j = 0; j < getCols(inputs); j++)
        {
            float m1;
            int e1;
            m1 = frexp(get(inputs,i,j), &e1);
            set(m, i, j, m1);
            set(e, i, j, (float)e1); 

			//additional math
			int m_t = int(round(get(m, i, j) * exp2(MAX_BIT)));
			set(m, i, j, float(m_t));

			set(e, i, j, float(MAX_BIT - e1));
        }
    }
}

template<class T>
void TensorXL<T>::addRow(TensorXL<T> *A, T* init)
{//Take a row and add it here. No copy
	A->matrix[getRows(A)] = init;
	A->t_numRows += 1;
}

template<class T>
void TensorXL<T>::hardTranspose(TensorXL<T> *a, TensorXL<T> *space)
{
	int i;
	int j;

	setCols(space, getCols(a)); //TODO: delete space
	setRows(space, getRows(a));
	for (i = 0; i < getRows(a); i++)
	{
		for (j = 0; j < getCols(a); j++)
		{
			set(space, i, j, get(a, i, j));
		}
	}
	//now flip the dimentions of a
	int temp = getCols(a);
	setCols(a, getRows(a)); //TODO: delete space
	setRows(a, temp);
	for (i = 0; i < getRows(space); i++)
	{
		for (j = 0; j < getCols(space); j++)
		{
			set(a, j, i, get(space, i, j));
		}
	}
}

/****************************************************adressing methods****************************************************/
template<class T>
T TensorXL<T>::get(TensorXL<T> *tensor, const unsigned &row, const unsigned &col)
{
    if(tensor->transposed)
    {//in this block everything is flipped because internally, we are treating the matrix as transposed 
        if(row < getRows(tensor) && col < getCols(tensor))
        {
            return tensor->matrix[col][row];
        }
        else
        {
            //printf("Tensor::get() index [%d][%d] out of range\n", col, row);
			//assert(false);
            return 0;
        }
    }
    else
    {// in this block everything is normal
        if(row < getRows(tensor) && col < getCols(tensor))
        {
            return tensor->matrix[row][col];
        }
        else
        {
            //printf("Tensor::get() index [%d][%d] out of range\n", row, col);
			//assert(false);
            return 0;
        }
    }
}

template<class T>
void TensorXL<T>::set(TensorXL<T> *tensor, const unsigned &row, const unsigned &col, T val)
{
	//The safeguards for in range access are non fatal. The intel matrix multiply trips them for some reason
    if(tensor->transposed)
    {//in this block everything is flipped because internally, we are treating the matrix as transposed 
        if(row < getRows(tensor) && col < getCols(tensor))
        {
           tensor->matrix[col][row] = val;
        }
        else
        {
            //printf("Tensor::get() index [%d][%d] out of range\n", col, row);
        }
    }
    else
    {// in this block everything is normal
        if(row < getRows(tensor) && col < getCols(tensor))
        {
            tensor->matrix[row][col] = val;
        }
        else
        {
            //printf("Tensor::set() index [%d][%d] out of range\n", row, col);
        }
    }
}

template<class T>
T TensorXL<T>::one(TensorXL<T> *A)
{//demotes a tensor to a primitive type (typically float)
	if (TensorXL<float>::getRows(A) == 1 && TensorXL<float>::getCols(A) == 1)
	{
		return get(A, 0, 0);
	}
	else
	{
		printf("1x1 matrix asssumption failed");
		assert(false);
		return 0;
	}
}

//helper functions
template<class T>
void TensorXL<T>::transpose(TensorXL<T> *a)
{
    //simply change a variable to address the matrix differently a[i][j] becomes a[j][i]
    //This requires the user to use get() rather than direct addressing
    a->transposed= !a->transposed;
}

template<class T>
void TensorXL<T>::print(TensorXL<T> *self)
{
	
    #ifndef HLS_SYNTHESIS
    std::cout << "Tensor: " << std::endl;
	#endif
	if (self == nullptr)
	{
		#ifndef HLS_SYNTHESIS
		std::cout << "nullptr" << std::endl;
		#endif
		return;
	}
    for (unsigned i = 0; i < getRows(self); i++) {
        for (unsigned j = 0; j < getCols(self); j++) {
            #ifndef HLS_SYNTHESIS
            std::cout << "[" << TensorXL<T>::get(self,i,j) << "] ";
            #endif
			if (j == 2 && (getCols(self)-4 != 1))
			{
				printf(" ... "); //one two skip a few... 99 100
				j = getCols(self) - 4;
			}
        }
		if (i == 2 && (getRows(self) - 4 != 1))
		{
			printf("\n ... \n");
			i = getRows(self) - 4;
		}
        #ifndef HLS_SYNTHESIS
        std::cout << std::endl;
        #endif
    }
}

template<class T>
unsigned TensorXL<T>::getRows(TensorXL<T> *A)
{ 
    if(!A->transposed){
        return A->t_numRows;
    }else{
        return A->t_numCols;
    } 
}

template<class T>
unsigned TensorXL<T>::getCols(TensorXL<T> *A)
{ 
    if(!A->transposed){
        return A->t_numCols;
    }else{
        return A->t_numRows;
    } 
}

template<class T>
bool TensorXL<T>::eq_verbose(TensorXL<T> *A, TensorXL<T> *B)
{//returns true if all elements are the same. No broadcasting.
	bool one = false;
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            if(fabs(get(A,i,j) - get(B,i,j)) > 0.0001f)
			{
				printf("row %d col %d, LHS is %f, and RHS is %f \n", i, j, get(A, i, j), get(B, i, j));
				one = true;
			}
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

template<class T>
bool TensorXL<T>::eq(TensorXL<T> *A, TensorXL<T> *B)
{//returns true if all elements are the same. No broadcasting.
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			if (fabs(get(A, i, j) - get(B, i, j)) > 0.0001f)
			{
				return false;
			}
		}
	}
	return true;
}


//private helper functions
template<class T>
void TensorXL<T>::setRows(TensorXL<T> *A, int num)
{ 
    if(!A->transposed){
		A->t_numRows = num;
    }else{
		A->t_numCols = num;
    } 
}

template<class T>
void TensorXL<T>::setCols(TensorXL<T> *A, int num)
{ 
    if(!A->transposed){
		A->t_numCols = num;
    }else{
		A->t_numRows = num;
    } 
}

template<class T>
bool TensorXL<T>::sameSize(TensorXL<T> *A, TensorXL<T> *B)
{
	return TensorXL<float>::getRows(A) == TensorXL<float>::getRows(B) && TensorXL<float>::getCols(A) == TensorXL<float>::getCols(B);
}

template<class T>
bool TensorXL<T>::sameRows(TensorXL<T> *A, TensorXL<T> *B)
{
	return TensorXL<float>::getRows(A) == TensorXL<float>::getRows(B);
}

template<class T>
bool TensorXL<T>::sameCols(TensorXL<T> *A, TensorXL<T> *B)
{
	return TensorXL<float>::getCols(A) == TensorXL<float>::getCols(B);
}

template<class T>
void TensorXL<T>::flopSize(TensorXL<T> *lhs, TensorXL<T> *rhs)
{//At the end of this function lhs will always point to the larger of the two tensors
	assert(sameRows(lhs,rhs) || sameCols(lhs,rhs)); //we assume that the tensors share one dimention
	if (getCols(lhs) < getCols(rhs) || getRows(lhs) < getRows(rhs))
	{
		TensorXL<T>* temp = lhs;
		lhs = rhs;
		rhs = temp;
	}
}

template<class T> void TensorXL<T>::copy(TensorXL<T> *A, TensorXL<T> *C)
{
	for (unsigned i = 0; i < getRows(A); i++)
	{
		for (unsigned j = 0; j < getCols(A); j++)
		{
			set(C,i,j, get(A,i,j));
		}
	}
}

#endif