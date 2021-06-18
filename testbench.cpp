#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "tensors.cpp" //YES I KNOW, but in order to make the compiler (i++) happy, it must not be a .h file

Tensor<int> tensor_add_int(Tensor<int> &A, Tensor<int> &B);
// Test bench for program
int main() {
  Tensor<int> ones(3,3,1);
  Tensor<int> twos(3,3,2);
  Tensor<int> result = tensor_add_int(ones,twos);
  Tensor<int>::print(result);
} 

component Tensor<int> tensor_add_int(Tensor<int> &A, Tensor<int> &B)
{
  return A+B;
}