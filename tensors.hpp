//tensors.cpp
//Basic HLS tensor implementation for the HUBERT project.
//created by Hunter Messner on 6/6/2021

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
void Tensor<T>::add(Tensor &A, Tensor &B, Tensor &C)
{
    unsigned i,j;
    for (i = 0; i < A.t_numRows; i++)
    {
        for (j = 0; j < A.t_numCols; j++)
        {
            Tensor::set(C,i,j,Tensor::get(A,i,j) + Tensor::get(B,i,j));
        }
    }
}

template<class T>
void Tensor<T>::mul(Tensor &A, Tensor &B, Tensor &C)
//this function needs to use MACROS or constants known at compile time for sizes.
//when using multiplies in components, use the below prototype.
{
    matrix_multiply<T, MAX_ROWS, MAX_COLS, MAX_COLS, UNITS_PER_MULTIPLY>(A.t_tensor, B.t_tensor, C.t_tensor);
}

template<class T>
void Tensor<T>::sub(Tensor &A, Tensor &B, Tensor &C)
{
    unsigned i,j;
    for (i = 0; i < A.t_numRows; i++)
    {
        for (j = 0; j < A.t_numCols; j++)
        {
            Tensor::set(C,i,j,Tensor::get(A,i,j) - Tensor::get(B,i,j));
        }
    }
}

template<class T>
void Tensor<T>::add_scalar(Tensor &A, T &B, Tensor &C)
{
    unsigned i,j;
    for (i = 0; i < A.t_numRows; i++)
    {
        for (j = 0; j < A.t_numCols; j++)
        {
            Tensor::set(C,i,j,Tensor::get(A,i,j) + B);
        }
    }
}

template<class T>
void Tensor<T>::mul_scalar(Tensor &A, T &B, Tensor &C)
{
    unsigned i,j;
    for (i = 0; i < A.t_numRows; i++)
    {
        for (j = 0; j < A.t_numCols; j++)
        {
            Tensor::set(C,i,j,Tensor::get(A,i,j) * B);
        }
    }
}

template<class T>
void Tensor<T>::sub_scalar(Tensor &A, T &B, Tensor &C)
{
    unsigned i,j;
    for (i = 0; i < A.t_numRows; i++)
    {
        for (j = 0; j < A.t_numCols; j++)
        {
            Tensor::set(C,i,j,Tensor::get(A,i,j) - B);
        }
    }
}

template<class T>
void Tensor<T>::div_scalar(Tensor &A, T &B, Tensor &C)
{
    unsigned i,j;
    for (i = 0; i < A.t_numRows; i++)
    {
        for (j = 0; j < A.t_numCols; j++)
        {
            Tensor::set(C,i,j,Tensor::get(A,i,j) / B);
        }
    }
}

template<class T>
void Tensor<T>::max(Tensor& A, int dim, Tensor &C)
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
        for (i = 0; i < A.t_numCols; i++)
        {
            for (j = 0; j < A.t_numRows; j++)
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
    }
    else
    {
        unsigned i,j;
        T largest;
        bool first = true;
        for (i = 0; i < A.t_numRows; i++)
        {
            for (j = 0; j < A.t_numCols; j++)
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

    }
}

//adressing methods
template<class T>
T Tensor<T>::get(Tensor &tensor, const unsigned &row, const unsigned &col)
{
    //TODO: add safeguards to check if IN RANGE
    if(tensor.transposed)
    {//in this block everything is flipped because internally, we are treating the matrix as transposed 
        if( true )//col < tensor.t_numRows && col < tensor.t_numRows)
        {
            return tensor.t_tensor[col][row];
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
            return tensor.t_tensor[row][col];
        }
        else
        {
            printf("Tensor::get() index [%d][%d] out of range\n", row, col);
            return 0;
        }
    }
}

template<class T>
void Tensor<T>::set(Tensor &tensor, const unsigned &row, const unsigned &col, T val)
{
    //TODO: add safeguards to check if IN RANGE
    if(tensor.transposed)
    {//in this block everything is flipped because internally, we are treating the matrix as transposed 
        if(true)//col < tensor.t_numRows && col < tensor.t_numRows)
        {
           tensor.t_tensor[col][row] = val;
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
            tensor.t_tensor[row][col] = val;
        }
        else
        {
            printf("Tensor::set() index [%d][%d] out of range\n", row, col);
        }
    }
}

//helper functions
template<class T>
void Tensor<T>::transpose(Tensor &a)
{
    //simply change a variable to address the matrix differently a[i][j] becomes a[j][i]
    //This requires the user to use get() rather than direct addressing
    a.transposed= !a.transposed;
}

template<class T>
void Tensor<T>::print(Tensor* self)
{
    #ifndef HLS_SYNTHESIS
    std::cout << "Tensor: " << std::endl;
    #endif
    for (unsigned i = 0; i < self->t_numRows; i++) {
        for (unsigned j = 0; j < self->t_numCols; j++) {
            #ifndef HLS_SYNTHESIS
            std::cout << "[" << Tensor::get(*self,i,j) << "] ";
            #endif
        }
        #ifndef HLS_SYNTHESIS
        std::cout << std::endl;
        #endif
    }
}

template<class T>
unsigned Tensor<T>::getRows(Tensor& a) { return a.t_numRows; }
template<class T>
unsigned Tensor<T>::getCols(Tensor& a) { return a.t_numCols; }


/*
T** subtensor(Tensor source, const unsigned &row, const unsigned &col, T** target)
{ //this function grabs an array of size row x col from the source tensor and returns it
  //useful for 2d matrix functions that you only want working on a subset of the tensor
  //paired with copy tensor to write a 2d array to a tensor.
    

}
Tensor copy_tensor(T** source, const unsigned &row, const unsigned &col, Tensor target);
*/