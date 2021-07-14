//tensors.cpp
//Basic HLS tensor implementation for the HUBERT project.
//created by Hunter Messner on 6/6/2021
#ifndef __HUBERT_TENSORS_HPP__
#define __HUBERT_TENSORS_HPP__

#include "HLS/hls.h"
#include "HLS/math.h"
#include "HLS/matrix_mult.h"
#include "HLS/stdio.h"
#include "tensors.h"
#include <iostream>

/*                    DEFINITIONS                      */

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
void Tensor<T>::add(Tensor<T> *A, Tensor<T> *B, Tensor<T> *C)
{
	if (!sameSize(A, B))
	{
		printf("incompatible dimenions\n");
		assert(false);
	}
    unsigned i,j;
    for (i = 0; i < A->t_numRows; i++)
    {
        for (j = 0; j < A->t_numCols; j++)
        {
            Tensor::set(C,i,j,Tensor::get(A,i,j) + Tensor::get(B,i,j));
        }
    }
}

template<class T>
void Tensor<T>::mul(Tensor<T> *A, Tensor<T> *B, Tensor<T> *C)
//this function needs to use MACROS or constants known at compile time for sizes.
//when using multiplies in components, use the below prototype.
{
    matrix_multiply<T, MAX_ROWS, MAX_COLS, MAX_COLS, UNITS_PER_MULTIPLY>(A->t_tensor, B->t_tensor, C->t_tensor);
}

template<class T>
void Tensor<T>::sub(Tensor<T> *A, Tensor<T> *B, Tensor<T> *C)
{
	if (!sameSize(A, B))
	{
		printf("incompatible dimenions\n");
		assert(false);
	}
    unsigned i,j;
    for (i = 0; i < A->t_numRows; i++)
    {
        for (j = 0; j < A->t_numCols; j++)
        {
            Tensor::set(C,i,j,Tensor::get(A,i,j) - Tensor::get(B,i,j));
        }
    }
}


template<class T>
void Tensor<T>::add_scalar(Tensor<T> *A, T B, Tensor<T> *C)
{
    unsigned i,j;
    for (i = 0; i < A->t_numRows; i++)
    {
        for (j = 0; j < A->t_numCols; j++)
        {
            Tensor::set(C,i,j,Tensor::get(A,i,j) + B);
        }
    }
}

template<class T>
void Tensor<T>::mul_scalar(Tensor<T> *A, T B, Tensor<T> *C)
{
    unsigned i,j;
    for (i = 0; i < A->t_numRows; i++)
    {
        for (j = 0; j < A->t_numCols; j++)
        {
            Tensor::set(C,i,j,Tensor::get(A,i,j) * B);
        }
    }
}

template<class T>
void Tensor<T>::sub_scalar(Tensor<T> *A, T B, Tensor<T> *C)
{
    unsigned i,j;
    for (i = 0; i < A->t_numRows; i++)
    {
        for (j = 0; j < A->t_numCols; j++)
        {
            Tensor::set(C,i,j,Tensor::get(A,i,j) - B);
        }
    }
}

template<class T>
void Tensor<T>::sub_scalar(T B, Tensor<T> *A, Tensor<T> *C)
{
	unsigned i, j;
	for (i = 0; i < A->t_numRows; i++)
	{
		for (j = 0; j < A->t_numCols; j++)
		{
			Tensor::set(C, i, j, B - Tensor::get(A, i, j));
		}
	}
}

template<class T>
void Tensor<T>::div_scalar(Tensor<T> *A, T B, Tensor<T> *C)
{
    unsigned i,j;
    for (i = 0; i < A->t_numRows; i++)
    {
        for (j = 0; j < A->t_numCols; j++)
        {
            Tensor::set(C,i,j,Tensor::get(A,i,j) / B);
        }
    }
}

template<class T>
void Tensor<T>::pow_scalar(Tensor<T> *A, T B, Tensor<T> *C)
{// A = B^C, note that there are more efficient functions for 2^X or e^X or 10^X
    unsigned i,j;
    for (i = 0; i < A->t_numRows; i++)
    {
        for (j = 0; j < A->t_numCols; j++)
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
        for (i = 0; i < A->t_numCols; i++)
        {
            for (j = 0; j < A->t_numRows; j++)
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
                Tensor<T>::set(C, 0, i, largest);
            }
        }
        //i know the dimentions of C, so i set them for safety
        setRows(C, 1);
        setCols(C, A->t_numCols);
    }
    else
    {
        unsigned i,j;
        T largest;
        bool first = true;
        for (i = 0; i < A->t_numRows; i++)
        {
            for (j = 0; j < A->t_numCols; j++)
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
                Tensor<T>::set(C, i, 0, largest);
            }
        }
        setRows(C, A->t_numRows);
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
        for (i = 0; i < A->t_numCols; i++)
        {
            for (j = 0; j < A->t_numRows; j++)
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
                Tensor<T>::set(C, 0, i, smallest);
            }
        }
        //I can guarantee the dimentions of the resulting tensor.
        setRows(C, 1);
        setCols(C, A->t_numCols);
    }
    else
    { //dim ==1
        unsigned i,j;
        T smallest;
        bool first = true;
        for (i = 0; i < A->t_numRows; i++)
        {
            for (j = 0; j < A->t_numCols; j++)
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
                Tensor<T>::set(C, i, 0, smallest);
            }
        }
        setRows(C, A->t_numRows);
        setCols(C, 1);

    }
}

template<class T>
void Tensor<T>::max_scalar(Tensor<T>* A, T compare, Tensor<T> *C)
{ //similar to clamp but more readable
	unsigned i, j;
	for (i = 0; i < A->t_numRows; i++)
	{
		for (j = 0; j < A->t_numCols; j++)
		{
			T mat = Tensor::get(A, i, j);
			if (mat < compare) { set(C, i, j, compare); }
			else { set(C, i, j, mat); }
		}
	}
}

template<class T>
void Tensor<T>::floor_tensor(Tensor<T> *A, Tensor<T> *C)
{//does a cast to a float and then floors it.
    unsigned i,j;
    for (i = 0; i < A->t_numRows; i++)
    {
        for (j = 0; j < A->t_numCols; j++)
        {
            T temp = Tensor::get(A,i,j);
            temp = floorf((float)temp);
            Tensor::set(C,i,j,temp);
        }
    }
}

template<class T>
void Tensor<T>::mul_dot(Tensor<T> *A, Tensor<T> *B, Tensor<T> *C)
{
	if (!sameSize(A, B))
	{
		printf("incompatible dimenions\n");
		assert(false);
	}

    unsigned i,j;
    for (i = 0; i < A->t_numRows; i++)
    {
        for (j = 0; j < A->t_numCols; j++)
        {
            Tensor::set(C,i,j,Tensor::get(A,i,j) * Tensor::get(B,i,j));
        }
    }   
}

template<class T>
void Tensor<T>::div_dot(Tensor<T> *A, Tensor<T> *B, Tensor<T> *C)
{
    unsigned i,j;
	//error check
	if (!sameSize(A, B))
	{
		printf("incompatible dimenions\n");
		assert(false);
	}
	
    for (i = 0; i < A->t_numRows; i++)
    {
        for (j = 0; j < A->t_numCols; j++)
        {
            Tensor::set(C,i,j,Tensor::get(A,i,j) / Tensor::get(B,i,j));
        }
    }   
}

template<class T>
void Tensor<T>::pow_dot(Tensor<T> *A, Tensor<T> *B, Tensor<T> *C)
{// A = B^C, note that there are more efficient functions for 2^X or e^X or 10^X
	if (!sameSize(A, B))
	{
		printf("incompatible dimenions\n");
		assert(false);
	}

    unsigned i,j;
    for (i = 0; i < A->t_numRows; i++)
    {
        for (j = 0; j < A->t_numCols; j++)
        {
            Tensor::set(C,i,j, pow(Tensor::get(A,i,j), Tensor::get(B,i,j)));
        }
    }  
}

template<class T>
void exp2(Tensor<T> *A, Tensor<T> *C)
{
	unsigned i, j;
	for (i = 0; i < A->t_numRows; i++)
	{
		for (j = 0; j < A->t_numCols; j++)
		{
			Tensor::set(C, i, j, exp2(Tensor::get(A, i, j)));
		}
	}
}

template<class T>
void Tensor<T>::clamp(Tensor<T> *A, T min, T max, Tensor<T> *C)
{
    unsigned i,j;
    for (i = 0; i < A->t_numRows; i++)
    {
        for (j = 0; j < A->t_numCols; j++)
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
    for (i = 0; i < A->t_numRows; i++)
    {
        for (j = 0; j < A->t_numCols; j++)
        {
            T roundme = Tensor::get(A,i,j);
            T rounded = round(roundme); //always cast to float
            Tensor::set(C,i,j, rounded);
        }
    }     
}

template<class T>
void Tensor<T>::reciprocal(Tensor<T> *A, Tensor<T> *C)
{
    unsigned i,j;
    for (i = 0; i < A->t_numRows; i++)
    {
        for (j = 0; j < A->t_numCols; j++)
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
	if (dim == 0)
	{
		unsigned i, j;
		T runnning = 0;
		for (i = 0; i < A->t_numCols; i++)
		{
			for (j = 0; j < A->t_numRows; j++)
			{
				running += get(A, i, j);
			}
			Tensor<T>::set(C, 0, i, running);
			running = 0;
		}
		//I can guarantee the dimentions of the resulting tensor.
		setRows(C, 1);
		setCols(C, A->t_numCols);
	}
	else
	{ //dim ==1
		unsigned i, j;
		T runnning = 0;
		for (i = 0; i < A->t_numRows; i++)
		{
			for (j = 0; j < A->t_numCols; j++)
			{
				running += get(A, i, j);
			}
			Tensor<T>::set(C, i, 0, running);
		}
		setRows(C, A->t_numRows);
		setCols(C, 1);
	}
}


/****************************************************manipulation****************************************************/
template<class T>
void Tensor<T>::fill(Tensor<T> *A, T fill)
{
    unsigned i,j;
    for (i = 0; i < A->t_numRows; i++)
    {
        for (j = 0; j < A->t_numCols; j++)
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
    
    //I cant make a local TENSOR! TODO:find a way to make one,  
    unsigned i,j;
    for (i = 0; i < A->t_numRows; i++)
    {
        for (j = 0; j < A->t_numCols; j++)
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
    for (i = 0; i < A->t_numRows; i++)
    {
        for (j = 0; j < A->t_numCols; j++)
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
    for (i = 0; i < inputs->t_numRows; i++)
    {
        for (j = 0; j < inputs->t_numCols; j++)
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
    //TODO: add safeguards to check if IN RANGE
    if(tensor->transposed)
    {//in this block everything is flipped because internally, we are treating the matrix as transposed 
        if( true )//col < tensor.t_numRows && col < tensor.t_numRows)
        {
            return tensor->t_tensor[col][row];
        }
        else
        {
            printf("Tensor::get() index [%d][%d] out of range\n", col, row);
            return 0;
        }
    }
    else
    {// in this block everything is normal
        if( true )//)row < tensor.t_numRows && row < tensor.t_numRows)
        {
            return tensor->t_tensor[row][col];
        }
        else
        {
            printf("Tensor::get() index [%d][%d] out of range\n", row, col);
            return 0;
        }
    }
}

template<class T>
void Tensor<T>::set(Tensor<T> *tensor, const unsigned &row, const unsigned &col, T val)
{
    //TODO: add safeguards to check if IN RANGE
    if(tensor->transposed)
    {//in this block everything is flipped because internally, we are treating the matrix as transposed 
        if(true)//col < tensor.t_numRows && col < tensor.t_numRows)
        {
           tensor->t_tensor[col][row] = val;
        }
        else
        {
            printf("Tensor::get() index [%d][%d] out of range\n", col, row);
        }
    }
    else
    {// in this block everything is normal
        if(true)//row < tensor.t_numRows && row < tensor.t_numRows)
        {
            tensor->t_tensor[row][col] = val;
        }
        else
        {
            printf("Tensor::set() index [%d][%d] out of range\n", row, col);
        }
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
    for (unsigned i = 0; i < self->t_numRows; i++) {
        for (unsigned j = 0; j < self->t_numCols; j++) {
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
unsigned Tensor<T>::getRows(Tensor<T> *a)
{ 
    if(!a->transposed){
        return a->t_numRows;
    }else{
        return a->t_numCols;
    } 
}

template<class T>
unsigned Tensor<T>::getCols(Tensor<T> *a)
{ 
    if(!a->transposed){
        return a->t_numCols;
    }else{
        return a->t_numRows;
    } 
}

template<class T>
bool Tensor<T>::eq(Tensor<T> *A, Tensor<T> *B)
{//returns true if all elements are the same. No broadcasting.
    unsigned i,j;
    for (i = 0; i < A->t_numRows; i++)
    {
        for (j = 0; j < A->t_numCols; j++)
        {
            if(get(A,i,j) == get(B,i,j)){continue;}
            else{return false;}
        }
    }
    return true;  
}


//private helper functions
template<class T>
void Tensor<T>::setRows(Tensor<T> *a, int num)
{ 
    if(!a->transposed){
        a->t_numRows = num;
    }else{
        a->t_numCols = num;
    } 
}

template<class T>
void Tensor<T>::setCols(Tensor<T> *a, int num)
{ 
    if(!a->transposed){
        a->t_numCols = num;
    }else{
        a->t_numRows = num;
    } 
}

template<class T>
bool Tensor<T>::sameSize(Tensor<T> *A, Tensor<T> *B)
{
	return Tensor<float>::getRows(A) == Tensor<float>::getRows(B) && Tensor<float>::getCols(A) == Tensor<float>::getCols(B);
}

#endif