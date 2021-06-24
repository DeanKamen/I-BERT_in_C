#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.hpp" //YES I KNOW, but in order to make the compiler (i++) happy, it must not be a .h file
//#include "HLS/matrix_mult.h"
#include "tensor_mult.h"
#include <iostream>

void tensor_add_int(Tensor<int> &A, Tensor<int>& B, Tensor<int>& C);
void tensor_mul_int(Tensor<int> &A, Tensor<int>& B, Tensor<int>& C);
// Test bench for program
int main() {
  Tensor<int>* ones = new Tensor(3,3,1);
  Tensor<int>* twos = new Tensor(3,3,2);
  Tensor<int>* result = new Tensor(3,3,1);
  Tensor<int>::print(ones);
  Tensor<int>::print(twos);
  Tensor<int>::transpose(*twos);
  //tensor_add_int(*ones, *twos, *result);

  Tensor<int>::transpose(*twos);
  Tensor<int>* ones2 = new Tensor(32,32,1);
  Tensor<int>* twos2 = new Tensor(32,32,2);
  Tensor<int>* result2 = new Tensor(32,32,0);
  //tensor_mul_int(*ones2, *twos2, *result2);
  
  //Tensor<int>::print(result);
  //Tensor<int>::print(result2);

  //I am sorry that this is so tedious at the moment.
  //Will make better ways of initalization
  int maxr1[3] ={1,2,3};
  int maxr2[3] ={2,3,1};
  int maxr3[3] ={3,2,1};
  int *max[3] = {maxr1,maxr2,maxr3};
  Tensor<int>* max_array = new Tensor(3,3,(int**)max);
  Tensor<int>::print(max_array);
  Tensor<int>* result3 = new Tensor(1,3,0);
  Tensor<int>::max(*max_array,0,*result3);
  Tensor<int>::print(result3);
  Tensor<int>* result4 = new Tensor(3,1,0);
  Tensor<int>::max(*max_array,1,*result4);
  Tensor<int>::print(result4);
} 

component void tensor_add_int(Tensor<int> &A, Tensor<int> &B, Tensor<int> &C)
{
  Tensor<int>::add(A, B, C);
}


component void tensor_mul_int(Tensor<int> &A, Tensor<int>& B, Tensor<int>& C)
{
  matrix_multiply<int, 32 , 32 , 32>(A,B,C);
}
