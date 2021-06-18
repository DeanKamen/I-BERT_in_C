//tensors.hpp
//Basic HLS tensor implementation for the HUBERT project.
//created by Hunter Messner on 6/6/2021


#ifndef __HUBERT_TENSORS_HPP__
#define __HUBERT_TENSORS_HPP__

#include "HLS/hls.h"
#include "HLS/math.h"
#include "HLS/matrix_mult.h"
#include "HLS/stdio.h"
#include <iostream>

template <class T> class Tensor //Tensor<int> bob; 
{
    private:
        unsigned int t_numRows;
        unsigned int t_numCols;


    public:
        T** t_tensor; //temporarily public
        Tensor(unsigned, unsigned, T); //row, column, fill constructor
        Tensor(const Tensor&); //copy constructor.
        //~Tensor(); 

          // Matrix Operations
        Tensor<T> operator+(Tensor &); // does this <T> need to be here?
        /*
        Tensor operator-(Tensor &);
        Tensor operator*(Tensor &);

        //TODO scalar Operations. 
        Tensor operator+(T);
        Tensor operator-(T);
        Tensor operator*(T);
        Tensor operator/(T); //this needs a generic type, currently same type as matrix

        //adressing method
        double& operator()(const unsigned &, const unsigned &);

        //static fuctions
        static Tensor transpose(Tensor);
        static Tensor multiply(Tensor&, Tensor&);
        
        static unsigned getRows() const;
        static unsigned getCols() const;
        */
       static void print(Tensor<T>&);
};



/*             DEFINITIONS                       */



template <class T>
Tensor<T>::Tensor(unsigned numRows, unsigned numCols, T init_value)
{
    t_numCols = numCols;
    t_numRows = numRows;
    T* stack_memory[numRows]; // this holds a pointer to all the rows
    t_tensor= stack_memory; 
    for (unsigned i = 0; i < numRows; i++)
    {
        T one_row[numCols];
        for (unsigned j = 0; j < numCols; j++)
        {
            one_row[j] = init_value;
        }
        t_tensor[i] = one_row;
    }
}

template <class T>
Tensor<T> Tensor<T>::operator+(Tensor<T> &B)
{
    Tensor<T> total(t_numCols, t_numRows, 0);
    unsigned i,j;
    for (i = 0; i < t_numRows; i++)
    {
        for (j = 0; j < t_numCols; j++)
        {
            total.t_tensor[i][j] = this->t_tensor[i][j] + B.t_tensor[i][j];
        }
    }
    return total;
}

template <class T>
void Tensor<T>::print(Tensor<T>& self)
{
    #ifndef HLS_SYNTHESIS
    std::cout << "Tensor: ";
    #endif
    for (unsigned i = 0; i < self.t_numRows; i++) {
        for (unsigned j = 0; j < self.t_numCols; j++) {
            #ifndef HLS_SYNTHESIS
            std::cout << "[" << self.t_tensor[i][j] << "] " << std::endl;
            #endif
        }
        #ifndef HLS_SYNTHESIS
        std::cout << std::endl;
        #endif
    }
}

#endif