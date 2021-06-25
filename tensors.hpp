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
void Tensor<T>::add_scalar(Tensor &A, T B, Tensor &C)
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
void Tensor<T>::mul_scalar(Tensor &A, T B, Tensor &C)
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
void Tensor<T>::sub_scalar(Tensor &A, T B, Tensor &C)
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
void Tensor<T>::div_scalar(Tensor &A, T B, Tensor &C)
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
void Tensor<T>::pow_scalar(Tensor& A, T B, Tensor &C)
{// A = B^C, note that there are more efficient functions for 2^X or e^X or 10^X
    unsigned i,j;
    for (i = 0; i < A.t_numRows; i++)
    {
        for (j = 0; j < A.t_numCols; j++)
        {
            Tensor::set(C,i,j, pow(Tensor::get(A,i,j), B));
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
template<class T>
void Tensor<T>::min(Tensor& A, int dim, Tensor &C)
//same code as MAX
//dim=0 means you find the biggest in each column,
//dim=1 means you find the biggest in each row. 
{
    if(dim == 0)
    {
        unsigned i,j;
        T smallest;
        bool first = true;
        for (i = 0; i < A.t_numCols; i++)
        {
            for (j = 0; j < A.t_numRows; j++)
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
    }
    else
    { //dim ==1
        unsigned i,j;
        T smallest;
        bool first = true;
        for (i = 0; i < A.t_numRows; i++)
        {
            for (j = 0; j < A.t_numCols; j++)
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

    }
}

template<class T>
void Tensor<T>::floor_tensor(Tensor& A, Tensor &C)
{//does a cast to a float and then floors it.
    unsigned i,j;
    for (i = 0; i < A.t_numRows; i++)
    {
        for (j = 0; j < A.t_numCols; j++)
        {
            T temp = Tensor::get(A,i,j);
            temp = floorf((float)temp);
            Tensor::set(C,i,j,temp);
        }
    }
}

template<class T>
void Tensor<T>::mul_dot(Tensor& A, Tensor &B, Tensor &C)
{
    unsigned i,j;
    for (i = 0; i < A.t_numRows; i++)
    {
        for (j = 0; j < A.t_numCols; j++)
        {
            Tensor::set(C,i,j,Tensor::get(A,i,j) * Tensor::get(B,i,j));
        }
    }   
}

template<class T>
void Tensor<T>::div_dot(Tensor& A, Tensor &B, Tensor &C)
{
    unsigned i,j;
    for (i = 0; i < A.t_numRows; i++)
    {
        for (j = 0; j < A.t_numCols; j++)
        {
            Tensor::set(C,i,j,Tensor::get(A,i,j) / Tensor::get(B,i,j));
        }
    }   
}

template<class T>
void Tensor<T>::pow_dot(Tensor& A, Tensor &B, Tensor &C)
{// A = B^C, note that there are more efficient functions for 2^X or e^X or 10^X
    unsigned i,j;
    for (i = 0; i < A.t_numRows; i++)
    {
        for (j = 0; j < A.t_numCols; j++)
        {
            Tensor::set(C,i,j, pow(Tensor::get(A,i,j), Tensor::get(B,i,j)));
        }
    }  
}

template<class T>
void Tensor<T>::clamp(Tensor& A, T min, T max, Tensor &C)
{
    unsigned i,j;
    for (i = 0; i < A.t_numRows; i++)
    {
        for (j = 0; j < A.t_numCols; j++)
        {
            T viq = Tensor::get(A,i,j);
            if(viq > max) {set(C,i,j,max);}
            else if (viq < min) {set(C,i,j,min);}
        }
    }     
}

/****************************************************manipulation****************************************************/
template<class T>
void Tensor<T>::fill(Tensor& A, T fill)
{
    unsigned i,j;
    for (i = 0; i < A.t_numRows; i++)
    {
        for (j = 0; j < A.t_numCols; j++)
        {
            set(A,i,j, fill);
        }
    }     
}

template<class T>
void Tensor<T>::view(Tensor& A, const int rows, const int cols, Tensor& space)
{// a PRIMITIVE implementation of https://pytorch.org/docs/stable/generated/torch.Tensor.view.html?highlight=view#torch.Tensor.view
 // currentely only supports (rows, cols) where row and col go from -1 to 3072.
 // reshapes the tensor so that its values fit in a new shape. BE SMART when using this, because the function is dumb
    
    //I cant make a local TENSOR! TODO:find a way to make one,  
    unsigned i,j;
    for (i = 0; i < A.t_numRows; i++)
    {
        for (j = 0; j < A.t_numCols; j++)
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
    for (i = 0; i < A.t_numRows; i++)
    {
        for (j = 0; j < A.t_numCols; j++)
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

/****************************************************adressing methods****************************************************/
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
unsigned Tensor<T>::getRows(Tensor& a) 
{ 
    if(!a.transposed){
        return a.t_numRows;
    }else{
        return a.t_numCols;
    } 
}

template<class T>
unsigned Tensor<T>::getCols(Tensor& a) 
{ 
    if(!a.transposed){
        return a.t_numCols;
    }else{
        return a.t_numRows;
    } 
}

template<class T>
bool Tensor<T>::eq(Tensor& A, Tensor &B)
{//returns true if all elements are the same. No broadcasting.
    unsigned i,j;
    for (i = 0; i < A.t_numRows; i++)
    {
        for (j = 0; j < A.t_numCols; j++)
        {
            if(get(A,i,j) == get(A,i,j)){continue;}
            else{return false;}
        }
    }
    return true;  
}


//private helper functions
template<class T>
void Tensor<T>::setRows(Tensor& a, int num) 
{ 
    if(!a.transposed){
        a.t_numRows = num;
    }else{
        a.t_numCols = num;
    } 
}

template<class T>
void Tensor<T>::setCols(Tensor& a, int num)
{ 
    if(!a.transposed){
        a.t_numCols = num;
    }else{
        a.t_numRows = num;
    } 
}