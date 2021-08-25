//Tensor3dXL.h
// 3dXL HLS tensor implementation for the HUBERT project.
//created by Hunter Messner on 8/5/2021


#ifndef __HUBERT_TENSOR3DXL_H__
#define __HUBERT_TENSOR3DXL_H__

#include "tensorXL.hpp"

/*                TUNING AND OPTIONS                   */
const unsigned MAX_DEPTH_XL = 22;
template<class T>
class Tensor3dXL{
    public:
        unsigned int t_numRows;
        unsigned int t_numCols;
		unsigned int t_depth;
		bool null;
		
		TensorXL<T> matrix[MAX_DEPTH_XL];

    public:
        //constructors
		Tensor3dXL(Tensor3dXL<T> *A); //Takes a 3d matrix and copies it.
		Tensor3dXL(Tensor3dXL<T> &A); //copy constructor
        Tensor3dXL(TensorXL<T> *A); //Takes a 2d matrix and copies it into the first layer.
		Tensor3dXL(int dep, int row, int col, T init);
		Tensor3dXL(void); //all depth layers are nullpointer
		~Tensor3dXL();

		//special cross multiply
		static void linear_mul(Tensor3dXL<T> *A, TensorXL<T> *B, Tensor3dXL<T> *C);
		static void bmm(Tensor3dXL<T> *A, Tensor3dXL<T> *B, Tensor3dXL<T> *C);

		//2d broadcasting across 3d
        static void add(Tensor3dXL<T> *A, TensorXL<T> *B, Tensor3dXL<T> *C);
        static void sub(Tensor3dXL<T> *A, TensorXL<T> *B, Tensor3dXL<T> *C);
		static void mul_dot(Tensor3dXL<T> *A, TensorXL<T> *B, Tensor3dXL<T> *C);
		static void div_dot(Tensor3dXL<T> *A, TensorXL<T> *B, Tensor3dXL<T> *C);
		static void pow_dot(Tensor3dXL<T> *A, TensorXL<T> *B, Tensor3dXL<T> *C);

		//3d and 3d.
		static void add(Tensor3dXL<T> *A, Tensor3dXL<T> *B, Tensor3dXL<T> *C);
		static void sub(Tensor3dXL<T> *A, Tensor3dXL<T> *B, Tensor3dXL<T> *C);
		static void mul_dot(Tensor3dXL<T> *A, Tensor3dXL<T> *B, Tensor3dXL<T> *C);
		static void div_dot(Tensor3dXL<T> *A, Tensor3dXL<T> *B, Tensor3dXL<T> *C);
		static void pow_dot(Tensor3dXL<T> *A, Tensor3dXL<T> *B, Tensor3dXL<T> *C);

		//scalar type
        static void add_scalar(Tensor3dXL<T> *A, T B, Tensor3dXL<T> *C);
        static void mul_scalar(Tensor3dXL<T> *A, T B, Tensor3dXL<T> *C);
        static void sub_scalar(Tensor3dXL<T> *A, T B, Tensor3dXL<T> *C);
		static void sub_scalar(T B, Tensor3dXL<T> *A, Tensor3dXL<T> *C);
        static void div_scalar(Tensor3dXL<T> *A, T B, Tensor3dXL<T> *C);
        static void pow_scalar(Tensor3dXL<T> *A, T B, Tensor3dXL<T> *C);
        static void max(Tensor3dXL<T>* A, int dim, Tensor3dXL<T> *C);
        static void min(Tensor3dXL<T>* A, int dim, Tensor3dXL<T> *C);
		static void max(Tensor3dXL<T>* A, Tensor3dXL<T> *C); // full collapse
		static void min(Tensor3dXL<T>* A, Tensor3dXL<T> *C); 
		static void max_scalar(Tensor3dXL<T>* A, T compare, Tensor3dXL<T> *C);
		static void min_scalar(Tensor3dXL<T>* A, T compare, Tensor3dXL<T> *C);
		static void min_dot(Tensor3dXL<T>* A, TensorXL<T> *B, Tensor3dXL<T> *C);
		static void abs_tensor(Tensor3dXL<T> *A, Tensor3dXL<T>* C);
        static void floor_tensor(Tensor3dXL<T> *A, Tensor3dXL<T> *C);
		static void exp2_tensor(Tensor3dXL<T> *A, Tensor3dXL<T> *C);
        static void clamp(Tensor3dXL<T> *A, T min, T max, Tensor3dXL<T> *C);
        static void roundTensor(Tensor3dXL<T> *A, Tensor3dXL<T> *C);
        static void reciprocal(Tensor3dXL<T> *A, Tensor3dXL<T> *C);
		static void sum(Tensor3dXL<T> *A, int dim, Tensor3dXL<T>* C);
		static void sign(Tensor3dXL<T> *A, Tensor3dXL<T>* C);
		static void mean(Tensor3dXL<T> *A, Tensor3dXL<T>* C);
		static void sqrt_tensor(Tensor3dXL<T> *A, Tensor3dXL<T>* C);
        //manipulation
        //TODO: only if necessary
		//static void tensor_frexp(Tensor<float>* inputs, Tensor<float>* m, Tensor<float>* e);

        //adressing methods where dep is depth and select the 2d array you want.
        static T get(Tensor3dXL<T> *tensor, const unsigned &row, const unsigned &col, const unsigned &dep);
        static void set(Tensor3dXL<T> *tensor, const unsigned &row, const unsigned &col, const unsigned &dep, T val);
		static TensorXL<T>* get(Tensor3dXL<T> *tensor, const unsigned &dep);
		static TensorXL<T>* get(Tensor3dXL<T> &tensor, const unsigned &dep);
		static void set(Tensor3dXL<T> *tensor, const unsigned &dep, TensorXL<T>* slice);
		static TensorXL<T>* twoD(Tensor3dXL<T>*); //analog to one for 2d Tensors, but checks for ONE layer 
		static void toTwoD(Tensor3dXL<T> *A, TensorXL<T> *C);//takes a tensor that is YxZx1, Yx1xZ, or 1xYxZ and returns the 2d matrix
		static void append(Tensor3dXL<T> *tensor, TensorXL<T>* slice); //set + setDepth call
       
		//helper functions
        static void print(Tensor3dXL<T>*);
        static unsigned getRows(Tensor3dXL<T>* a);
        static unsigned getCols(Tensor3dXL<T>* a);
		static unsigned getDepth(Tensor3dXL<T>* a);
		static unsigned getRows(const Tensor3dXL<T> &a);
		static unsigned getCols(const Tensor3dXL<T> &a);
		static unsigned getDepth(const Tensor3dXL<T> &a);
        static bool eq(Tensor3dXL<T>* A, Tensor3dXL<T>* B);

		static void setRows(Tensor3dXL<T>* a, int num);
		static void setCols(Tensor3dXL<T>* a, int num);

        //private helper functions
    private:
		static void setDepth(Tensor3dXL<T>* a, int num);
		static bool sameSize(Tensor3dXL<T> *A, TensorXL<T> *B);
		static bool sameSize(Tensor3dXL<T> *A, Tensor3dXL<T> *B);
		static bool sameDep(Tensor3dXL<T> *A, Tensor3dXL<T> *B);
};


#endif