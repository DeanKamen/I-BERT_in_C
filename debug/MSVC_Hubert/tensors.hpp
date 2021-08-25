//tensors.cpp
//Basic HLS tensor implementation for the HUBERT project.
//created by Hunter Messner on 6/6/2021
#ifndef __HUBERT_TENSORS_HPP__
#define __HUBERT_TENSORS_HPP__

#include "HLS/hls.h"
#include "HLS/math.h"
#include "tensor_mmm.h"
#include "tensor_mult.h"
#include "HLS/stdio.h"
#include "tensors.h"
#include <iostream>

/*                    DEFINITIONS                      */

template<class T>
Tensor<T>::Tensor()
{
	t_numCols = 0;
	t_numRows = 0;
	for (unsigned i = 0; i < MAX_ROWS; i++)
	{
		for (unsigned j = 0; j < MAX_COLS; j++)
		{
			t_tensor[i][j] = 0; //for safety, we fill with 0, identity over addition and multiplication
		}
	}
}

template<class T>
Tensor<T>::Tensor(unsigned numRows, unsigned numCols, T init_value)
{
    t_numCols = numCols;
    t_numRows = numRows;
    for (unsigned i = 0; i < MAX_ROWS; i++)
    { 
        for (unsigned j = 0; j < MAX_COLS; j++)
        {
            t_tensor[i][j] = 0; //for safety, we fill with 0, identity over addition and multiplication
        }
    }
    for (unsigned i = 0; i < numRows; i++)
    { 
        for (unsigned j = 0; j < numCols; j++)
        {
            t_tensor[i][j] = init_value;
        }
    }
}
template<class T>
Tensor<T>::Tensor(const unsigned numRows, const unsigned numCols, T** init_pointer)
{
    t_numCols = numCols;
    t_numRows = numRows;
    for (unsigned i = 0; i < MAX_ROWS; i++)
    { 
        for (unsigned j = 0; j < MAX_COLS; j++)
        {
            t_tensor[i][j] = 0; //for safety, we fill with 0, identity over addition and multiplication
        }
    }
    for (unsigned i = 0; i < numRows; i++)
    { 
        for (unsigned j = 0; j < numCols; j++)
        {
            t_tensor[i][j] = init_pointer[i][j];
        }
    }
}

template<class T>
Tensor<T>::Tensor(Tensor<T> *A)
{//a faithful copy from pointer
	t_numCols = A->t_numCols;
	t_numRows = A->t_numRows;
	transposed = A->transposed;
	for (unsigned i = 0; i < MAX_ROWS; i++)
	{
		for (unsigned j = 0; j < MAX_COLS; j++)
		{
			t_tensor[i][j] = A->t_tensor[i][j]; //we dont use get as we want an exact copy
		}
	}
}

template<class T>
void Tensor<T>::mul_cross(Tensor<T> *A, Tensor<T> *B, Tensor<T> *C)
//this function needs to use MACROS or constants known at compile time for sizes.
//when using multiplies in components, use the below prototype.
{
	tensor_mmm<T, 22, 64, 22>(A, B, C);
	setRows(C, getRows(A));
	setCols(C, getCols(B));
}

template<class T>
void Tensor<T>::mul_cross_secondary(Tensor<T> *A, Tensor<T> *B, Tensor<T> *C)
//this function needs to use MACROS or constants known at compile time for sizes.
//when using multiplies in components, use the below prototype.
{
	tensor_mmm<T, 22, 22, 64>(A, B, C);
	setRows(C, getRows(A));
	setCols(C, getCols(B));
}

template<class T>
void Tensor<T>::add(Tensor<T> *A, Tensor<T> *B, Tensor<T> *C)
{
	int rowMod;
	int colMod;
	Tensor<T>* larger = A; //more rows or cols
	Tensor<T>* smaller = B; //one row or one col
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
            Tensor::set(C,i,j,Tensor::get(larger, i, j) + Tensor::get(smaller, i % rowMod, j % colMod));
        }
    }
}

template<class T>
void Tensor<T>::sub(Tensor<T> *A, Tensor<T> *B, Tensor<T> *C)
{
	int rowMod;
	int colMod;
	Tensor<T>* larger = A; //more rows or cols
	Tensor<T>* smaller = B; //one row or one col
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
			Tensor::set(C, i, j, Tensor::get(larger, i, j) - Tensor::get(smaller, i % rowMod, j % colMod));
		}
	}
}

template<class T>
void Tensor<T>::mul_dot(Tensor<T> *A, Tensor<T> *B, Tensor<T> *C)
{
	int rowMod;
	int colMod;
	Tensor<T>* larger = A; //more rows or cols
	Tensor<T>* smaller = B; //one row or one col
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
			Tensor::set(C, i, j, Tensor::get(larger, i, j) * Tensor::get(smaller, i % rowMod, j % colMod));
		}
	}
}

template<class T>
void Tensor<T>::div_dot(Tensor<T> *A, Tensor<T> *B, Tensor<T> *C)
{
	int rowMod;
	int colMod;
	Tensor<T>* larger = A; //more rows or cols
	Tensor<T>* smaller = B; //one row or one col
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
			Tensor::set(C, i, j, Tensor::get(larger, i, j) / Tensor::get(smaller, i % rowMod, j % colMod));
		}
	}
}

template<class T>
void Tensor<T>::pow_dot(Tensor<T> *A, Tensor<T> *B, Tensor<T> *C)
{// A = B^C, note that there are more efficient functions for 2^X or e^X or 10^X
	int rowMod;
	int colMod;
	Tensor<T>* larger = A; //more rows or cols
	Tensor<T>* smaller = B; //one row or one col
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
			Tensor::set(C, i, j, pow(Tensor::get(larger, i, j), Tensor::get(smaller, i % rowMod, j % colMod)));
		}
	}
}

template<class T>
void Tensor<T>::add_scalar(Tensor<T> *A, T B, Tensor<T> *C)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            Tensor::set(C,i,j,Tensor::get(A,i,j) + B);
        }
    }
}

template<class T>
void Tensor<T>::mul_scalar(Tensor<T> *A, T B, Tensor<T> *C)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            Tensor::set(C,i,j,Tensor::get(A,i,j) * B);
        }
    }
}

template<class T>
void Tensor<T>::sub_scalar(Tensor<T> *A, T B, Tensor<T> *C)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            Tensor::set(C,i,j,Tensor::get(A,i,j) - B);
        }
    }
}

template<class T>
void Tensor<T>::sub_scalar(T B, Tensor<T> *A, Tensor<T> *C)
{
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			Tensor::set(C, i, j, B - Tensor::get(A, i, j));
		}
	}
}

template<class T>
void Tensor<T>::div_scalar(Tensor<T> *A, T B, Tensor<T> *C)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            Tensor::set(C,i,j,Tensor::get(A,i,j) / B);
        }
    }
}

template<class T>
void Tensor<T>::pow_scalar(Tensor<T> *A, T B, Tensor<T> *C)
{// A = B^C, note that there are more efficient functions for 2^X or e^X or 10^X
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            Tensor::set(C,i,j, pow(Tensor::get(A,i,j), B));
        }
    }  
}

template<class T>
void Tensor<T>::max(Tensor<T> *A, int dim, Tensor<T> *C)
//functions similar to https://pytorch.org/docs/stable/generated/torch.max.html#torch.max
//but only works on 2d tensors and only returns a tensor with the maximums, no indexes. 
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
                    largest = Tensor<T>::get(A,j,i);
                    first = false;
                }
                else{
                    if(largest < Tensor<T>::get(A,j,i))
                    {
                        largest = Tensor<T>::get(A,j,i);
                    }
                }
            }
			Tensor<T>::set(C, 0, i, largest);
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
                    largest = Tensor<T>::get(A,i,j);
                    first = false;
                }
                else{
                    if(largest < Tensor<T>::get(A,i,j))
                    {
                        largest = Tensor<T>::get(A,i,j);
                    }
                }
            }
			Tensor<T>::set(C, i, 0, largest);
			first = true;
        }
        setRows(C, getRows(A));
        setCols(C, 1);

    }
}
template<class T>
void Tensor<T>::min(Tensor<T> *A, int dim, Tensor<T> *C)
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
                    smallest = Tensor<T>::get(A,j,i);
                    first = false;
                }
                else{
                    if(smallest > Tensor<T>::get(A,j,i))
                    {
                        smallest = Tensor<T>::get(A,j,i);
                    }
                }
            }
			Tensor<T>::set(C, 0, i, smallest);
			first = true;
        }
        //I can guarantee the dimentions of the resulting tensor.
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
                    smallest = Tensor<T>::get(A,i,j);
                    first = false;
                }
                else{
                    if(smallest > Tensor<T>::get(A,i,j))
                    {
                        smallest = Tensor<T>::get(A,i,j);
                    }
                }
            }
			Tensor<T>::set(C, i, 0, smallest);
			first = true;
        }
        setRows(C, getRows(A));
        setCols(C, 1);

    }
}

template<class T>
void Tensor<T>::max_scalar(Tensor<T>* A, T compare, Tensor<T> *C)
{ //similar to clamp but more readable
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			T mat = Tensor::get(A, i, j);
			if (mat < compare) { set(C, i, j, compare); }
			else { set(C, i, j, mat); }
		}
	}
}
template<class T>
void Tensor<T>::min_scalar(Tensor<T>* A, T compare, Tensor<T> *C)
{
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			T mini = Tensor::get(A, i, j);
			if (mini > compare) { set(C, i, j, compare); }
			else { set(C, i, j, mini); }
		}
	}
}

template<class T>
void Tensor<T>::min_dot(Tensor<T>* A, Tensor<T>* B, Tensor<T> *C)
{//element wise min that assumes a and b are the same size
	assert(sameSize(A, B));
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			T left = Tensor::get(A, i, j);
			T right = Tensor::get(B, i, j);

			if (left > right) { set(C, i, j, right); }
			else { set(C, i, j, left); }
		}
	}
}

template<class T>
void Tensor<T>::abs_tensor(Tensor<T> *A, Tensor<T>* C)
{
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			T el = Tensor::get(A, i, j);
			el = abs(el);
			set(C, i, j, el);
		}
	}
}

template<class T>
void Tensor<T>::floor_tensor(Tensor<T> *A, Tensor<T> *C)
{//does a cast to a float and then floors it.
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            T temp = Tensor::get(A,i,j);
            temp = floorf((float)temp);
            Tensor::set(C,i,j,temp);
        }
    }
}

template<class T>
void Tensor<T>::exp2_tensor(Tensor<T> *A, Tensor<T> *C)
{
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			Tensor::set(C, i, j, exp2(Tensor::get(A, i, j)));
		}
	}
}

template<class T>
void Tensor<T>::clamp(Tensor<T> *A, T min, T max, Tensor<T> *C)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            T viq = Tensor::get(A,i,j);
            if(viq > max) {set(C,i,j,max);}
            else if (viq < min) {set(C,i,j,min);}
        }
    }     
}

template<class T>
void Tensor<T>::roundTensor(Tensor<T> *A, Tensor<T> *C)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            T roundme = Tensor::get(A,i,j);
            T rounded = round(roundme); //always cast to float
			if (fabs(rounded - roundme) == 0.5f)
			{// glitch where this should be rounded down
				rounded = trunc(roundme);
			}
            Tensor::set(C,i,j, rounded);
        }
    }     
}

template<class T>
void Tensor<T>::reciprocal(Tensor<T> *A, Tensor<T> *C)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            T recip = Tensor::get(A,i,j);
            recip = 1.f/recip;
            Tensor::set(C,i,j,recip);
        }
    }     
}

template<class T>
void Tensor<T>::sum(Tensor<T> *A, int dim, Tensor<T>* C)
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
			Tensor<T>::set(C, 0, i, running);
			running = 0;
		}
		//I can guarantee the dimentions of the resulting tensor.
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
			Tensor<T>::set(C, i, 0, running);
			running = 0;
		}
		setRows(C, getRows(A));
		setCols(C, 1);
	}
}

template<class T>
void Tensor<T>::sign(Tensor<T> *A, Tensor<T> *C)
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
void Tensor<T>::mean(Tensor<T> *A, Tensor<T> *C)
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
void Tensor<T>::sqrt_tensor(Tensor<T> *A, Tensor<T> *C)
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
void Tensor<T>::fill(Tensor<T> *A, T fill)
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
void Tensor<T>::view(Tensor<T> *A, const int rows, const int cols, Tensor<T> *space)
{// a PRIMITIVE implementation of https://pytorch.org/docs/stable/generated/torch.Tensor.view.html?highlight=view#torch.Tensor.view
 // currentely only supports (rows, cols) where row and col go from -1 to 3072.
 // reshapes the tensor so that its values fit in a new shape. BE SMART when using this, because the function is dumb
    
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            set(space,i,j, get(A,i,j)); //copy to local tensor space
        }
    }
    //now we are going to copy to the new space. If we calculate inferred dimentions first
    int numElements = getRows(A)*getCols(A);
    int newRows = rows;
    int newCols = cols;
    //you can see how this will go bad if total elements doesnt neatly fit into the new shape
    if(newRows == -1)
    {
        newRows = numElements/newCols;
    }
    else if(newCols == -1)
    {
        newCols = numElements/newRows;
    }
    unsigned curNewRow = 0;
    unsigned curNewCol = 0;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            set(A, curNewRow, curNewCol, get(space,i,j)); //copy from local tensor space
            curNewCol++;
            curNewCol = curNewCol % newCols;
            //now if the modulus reset us, increment the row.
            if(curNewCol == 0) curNewRow++; //only supports a stride of 1.
        }
    }
    setRows(A, newRows);
    setCols(A, newCols);
}

template<class T>
void Tensor<T>::tensor_frexp(Tensor<float>* inputs, Tensor<float>* m, Tensor<float>* e)
{
    //I am writing this one myself as I dont have access to numpy
    //C has a function called frexp, so I am just applying it to ever element in a matrix.
    //used for the fixed point multiply function in quant_act 
    //reutrns the mantissas and then put the exponents in a seperate tensor.
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

/****************************************************adressing methods****************************************************/
template<class T>
T Tensor<T>::get(Tensor<T> *tensor, const unsigned &row, const unsigned &col)
{
    if(tensor->transposed)
    {//in this block everything is flipped because internally, we are treating the matrix as transposed 
        if(row < getRows(tensor) && col < getCols(tensor))
        {
            return tensor->t_tensor[col][row];
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
            return tensor->t_tensor[row][col];
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
void Tensor<T>::set(Tensor<T> *tensor, const unsigned &row, const unsigned &col, T val)
{
    //The safeguards for in range access are non fatal. The intel matrix multiply trips them for some reason
    if(tensor->transposed)
    {//in this block everything is flipped because internally, we are treating the matrix as transposed 
        if(row < getRows(tensor) && col < getCols(tensor))
        {
           tensor->t_tensor[col][row] = val;
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
            tensor->t_tensor[row][col] = val;
        }
        else
        {
            //printf("Tensor::set() index [%d][%d] out of range\n", row, col);
        }
    }
}

template<class T>
T Tensor<T>::one(Tensor<T> *A)
{//demotes a tensor to a primitive type (typically float)
	if (Tensor<float>::getRows(A) == 1 && Tensor<float>::getCols(A) == 1)
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
void Tensor<T>::transpose(Tensor<T> *a)
{
    //simply change a variable to address the matrix differently a[i][j] becomes a[j][i]
    //This requires the user to use get() rather than direct addressing
    a->transposed= !a->transposed;
}

template<class T>
void Tensor<T>::print(Tensor<T> *self)
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
            std::cout << "[" << Tensor::get(self,i,j) << "] ";
            #endif
        }
        #ifndef HLS_SYNTHESIS
        std::cout << std::endl;
        #endif
    }
}

template<class T>
void Tensor<T>::print_brief(Tensor<T> *self)
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
			std::cout << "[" << Tensor<T>::get(self, i, j) << "] ";
			#endif
			if (j == 2 && (getCols(self) - 4 != 1))
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
unsigned Tensor<T>::getRows(Tensor<T> *A)
{ 
    if(!A->transposed){
        return A->t_numRows;
    }else{
        return A->t_numCols;
    } 
}

template<class T>
unsigned Tensor<T>::getCols(Tensor<T> *A)
{ 
    if(!A->transposed){
        return A->t_numCols;
    }else{
        return A->t_numRows;
    } 
}

template<class T>
bool Tensor<T>::eq(Tensor<T> *A, Tensor<T> *B)
{//returns true if all elements are the same. No broadcasting.
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            if(get(A,i,j) == get(B,i,j)){continue;}
            else{return false;}
        }
    }
    return true;  
}

template<class T>
bool Tensor<T>::eq_verbose(Tensor<T> *A, Tensor<T> *B)
{//returns true if all elements are the same. No broadcasting.
	bool one = false;
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			if (fabs(get(A, i, j) - get(B, i, j)) > 0.001f)
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


//private helper functions
template<class T>
void Tensor<T>::setRows(Tensor<T> *A, int num)
{ 
    if(!A->transposed){
		A->t_numRows = num;
    }else{
		A->t_numCols = num;
    } 
}

template<class T>
void Tensor<T>::setCols(Tensor<T> *A, int num)
{ 
    if(!A->transposed){
		A->t_numCols = num;
    }else{
		A->t_numRows = num;
    } 
}

template<class T>
bool Tensor<T>::sameSize(Tensor<T> *A, Tensor<T> *B)
{
	return Tensor<float>::getRows(A) == Tensor<float>::getRows(B) && Tensor<float>::getCols(A) == Tensor<float>::getCols(B);
}

template<class T>
bool Tensor<T>::sameRows(Tensor<T> *A, Tensor<T> *B)
{
	return Tensor<float>::getRows(A) == Tensor<float>::getRows(B);
}

template<class T>
bool Tensor<T>::sameCols(Tensor<T> *A, Tensor<T> *B)
{
	return Tensor<float>::getCols(A) == Tensor<float>::getCols(B);
}

template<class T>
void Tensor<T>::flopSize(Tensor<T> *lhs, Tensor<T> *rhs)
{//At the end of this function lhs will always point to the larger of the two tensors
	assert(sameRows(lhs,rhs) || sameCols(lhs,rhs)); //we assume that the tensors share one dimention
	if (getCols(lhs) < getCols(rhs) || getRows(lhs) < getRows(rhs))
	{
		Tensor<T>* temp = lhs;
		lhs = rhs;
		rhs = temp;
	}
}

template<class T> void Tensor<T>::copy(Tensor<T> *A, Tensor<T> *C)
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