//tensor3d.h
// 3d HLS tensor implementation for the HUBERT project.
//created by Hunter Messner on 7/19/2021


#ifndef __HUBERT_TENSOR3D_H__
#define __HUBERT_TENSOR3D_H__

#include "tensors.hpp"
#include "tensor3dXL.hpp"

/*                TUNING AND OPTIONS                   */
const unsigned MAX_DEPTH = 22;
template<class T>
class Tensor3d{
    public:
        unsigned int t_numRows;
        unsigned int t_numCols;
		unsigned int t_depth;
        Tensor<T>* matrix[MAX_DEPTH]; 

    public:
        //constructors
		Tensor3d(Tensor3d<T> *A); //Takes a 2d matrix and copies it into the first layer.
        Tensor3d(Tensor<T> *A); //Takes a 2d matrix and copies it into the first layer.
		Tensor3d(int dep, int row, int col, T init);
		Tensor3d(void); //all depth layers are nullpointer
		~Tensor3d();

		//special cross multiply
		static void linear_mul(Tensor3d<T> *A, Tensor<T> *B, Tensor3d<T> *C);
		static void bmm(Tensor3d<T> *A, Tensor3d<T> *B, Tensor3d<T> *C);
		static void bmm2(Tensor3d<T> *A, Tensor3d<T> *B, Tensor3d<T> *C);//specialized

		//2d broadcasting across 3d
        static void add(Tensor3d<T> *A, Tensor<T> *B, Tensor3d<T> *C);
        static void sub(Tensor3d<T> *A, Tensor<T> *B, Tensor3d<T> *C);
		static void mul_dot(Tensor3d<T> *A, Tensor<T> *B, Tensor3d<T> *C);
		static void div_dot(Tensor3d<T> *A, Tensor<T> *B, Tensor3d<T> *C);
		static void pow_dot(Tensor3d<T> *A, Tensor<T> *B, Tensor3d<T> *C);

		//3d and 3d. TODO: implement broadcasting for 1 depth 3d arrays.
		static void add(Tensor3d<T> *A, Tensor3d<T> *B, Tensor3d<T> *C);
		static void sub(Tensor3d<T> *A, Tensor3d<T> *B, Tensor3d<T> *C);
		static void mul_dot(Tensor3d<T> *A, Tensor3d<T> *B, Tensor3d<T> *C);
		static void div_dot(Tensor3d<T> *A, Tensor3d<T> *B, Tensor3d<T> *C);
		static void pow_dot(Tensor3d<T> *A, Tensor3d<T> *B, Tensor3d<T> *C);

		//scalar type
        static void add_scalar(Tensor3d<T> *A, T B, Tensor3d<T> *C);
        static void mul_scalar(Tensor3d<T> *A, T B, Tensor3d<T> *C);
        static void sub_scalar(Tensor3d<T> *A, T B, Tensor3d<T> *C);
		static void sub_scalar(T B, Tensor3d<T> *A, Tensor3d<T> *C);
        static void div_scalar(Tensor3d<T> *A, T B, Tensor3d<T> *C);
        static void pow_scalar(Tensor3d<T> *A, T B, Tensor3d<T> *C);
        static void max(Tensor3d<T>* A, int dim, Tensor3d<T> *C);
        static void min(Tensor3d<T>* A, int dim, Tensor3d<T> *C);
		static void max(Tensor3d<T>* A, Tensor3d<T> *C); // full collapse
		static void min(Tensor3d<T>* A, Tensor3d<T> *C); 
		static void max_scalar(Tensor3d<T>* A, T compare, Tensor3d<T> *C);
		static void min_scalar(Tensor3d<T>* A, T compare, Tensor3d<T> *C);
		static void min_dot(Tensor3d<T>* A, Tensor<T> *B, Tensor3d<T> *C);
		static void abs_tensor(Tensor3d<T> *A, Tensor3d<T>* C);
        static void floor_tensor(Tensor3d<T> *A, Tensor3d<T> *C);
		static void exp2_tensor(Tensor3d<T> *A, Tensor3d<T> *C);
        static void clamp(Tensor3d<T> *A, T min, T max, Tensor3d<T> *C);
        static void roundTensor(Tensor3d<T> *A, Tensor3d<T> *C);
        static void reciprocal(Tensor3d<T> *A, Tensor3d<T> *C);
		static void sum(Tensor3d<T> *A, int dim, Tensor3d<T>* C);
		static void sign(Tensor3d<T> *A, Tensor3d<T>* C);
		static void mean(Tensor3d<T> *A, Tensor3d<T>* C);
		static void sqrt_tensor(Tensor3d<T> *A, Tensor3d<T>* C);
        //manipulation
        //TODO: only if necessary
		//static void tensor_frexp(Tensor<float>* inputs, Tensor<float>* m, Tensor<float>* e);

        //adressing methods where dep is depth and select the 2d array you want.
        static T get(Tensor3d<T> *tensor, const unsigned &row, const unsigned &col, const unsigned &dep);
        static void set(Tensor3d<T> *tensor, const unsigned &row, const unsigned &col, const unsigned &dep, T val);
		static Tensor<T>* get(Tensor3d<T> *tensor, const unsigned &dep);
		static void set(Tensor3d<T> *tensor, const unsigned &dep, Tensor<T>* slice);
		static Tensor<T>* twoD(Tensor3d<T>*); //analog to one for 2d Tensors, but checks for ONE layer 
		static void toTwoD(Tensor3d<T> *A, Tensor<T> *C);//takes a tensor that is YxZx1, Yx1xZ, or 1xYxZ and returns the 2d matrix
		static void append(Tensor3d<T> *tensor, Tensor<T>* slice); //set + setDepth call
       
		//helper functions
        static void print(Tensor3d<T>*);
		static void print_brief(Tensor3d<T>*);
        static unsigned getRows(Tensor3d<T>* a);
        static unsigned getCols(Tensor3d<T>* a);
		static unsigned getDepth(Tensor3d<T>* a);
        static bool eq(Tensor3d<T>* A, Tensor3d<T>* B);

		static void setRows(Tensor3d<T>* a, int num);
		static void setCols(Tensor3d<T>* a, int num);

        //private helper functions
    private:
		static void setDepth(Tensor3d<T>* a, int num);
		static bool sameSize(Tensor3d<T> *A, Tensor<T> *B);
		static bool sameSize(Tensor3d<T> *A, Tensor3d<T> *B);
		static bool sameDep(Tensor3d<T> *A, Tensor3d<T> *B);
};


#endif