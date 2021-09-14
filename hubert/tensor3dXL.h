//Tensor3dXL.h
// 3dXL HLS tensor implementation for the HUBERT project.
//created by Hunter Messner on 8/5/2021


#ifndef __HUBERT_TENSOR3DXL_H__
#define __HUBERT_TENSOR3DXL_H__

#include "tensorXL.h"

/*                TUNING AND OPTIONS                   */
const unsigned MAX_DEPTH_XL = 22;

class Tensor3dXL{
    public:
        unsigned int t_numRows;
        unsigned int t_numCols;
		unsigned int t_depth;
		bool null;
		
		TensorXL matrix[MAX_DEPTH_XL];

    public:
        //constructors
		Tensor3dXL(Tensor3dXL *A); //Takes a 3d matrix and copies it.
		Tensor3dXL(Tensor3dXL &A); //copy constructor
        Tensor3dXL(TensorXL *A); //Takes a 2d matrix and copies it into the first layer.
		Tensor3dXL(int dep, int row, int col, float init);
		Tensor3dXL(void); //all depth layers are nullpointer
		~Tensor3dXL();

		//special cross multiply
		static void linear_mul(Tensor3dXL &A, TensorXL &B, Tensor3dXL &C);
		static void bmm(Tensor3dXL &A, Tensor3dXL &B, Tensor3dXL &C);

		//2d broadcasting across 3d
        static void add(Tensor3dXL &A, TensorXL &B, Tensor3dXL &C);
        static void sub(Tensor3dXL &A, TensorXL &B, Tensor3dXL &C);
		static void mul_dot(Tensor3dXL &A, TensorXL &B, Tensor3dXL &C);
		static void div_dot(Tensor3dXL &A, TensorXL &B, Tensor3dXL &C);
		static void pow_dot(Tensor3dXL &A, TensorXL &B, Tensor3dXL &C);

		//3d and 3d.
		static void add(Tensor3dXL &A, Tensor3dXL &B, Tensor3dXL &C);
		static void sub(Tensor3dXL &A, Tensor3dXL &B, Tensor3dXL &C);
		static void mul_dot(Tensor3dXL &A, Tensor3dXL &B, Tensor3dXL &C);
		static void div_dot(Tensor3dXL &A, Tensor3dXL &B, Tensor3dXL &C);
		static void pow_dot(Tensor3dXL &A, Tensor3dXL &B, Tensor3dXL &C);

		//scalar type
        static void add_scalar(Tensor3dXL &A, float B, Tensor3dXL &C);
        static void mul_scalar(Tensor3dXL &A, float B, Tensor3dXL &C);
        static void sub_scalar(Tensor3dXL &A, float B, Tensor3dXL &C);
		static void sub_scalar(float B, Tensor3dXL &A, Tensor3dXL &C);
        static void div_scalar(Tensor3dXL &A, float B, Tensor3dXL &C);
        static void pow_scalar(Tensor3dXL &A, float B, Tensor3dXL &C);
        static void max(Tensor3dXL &A, int dim, Tensor3dXL &C);
        static void min(Tensor3dXL &A, int dim, Tensor3dXL &C);
		static void max(Tensor3dXL &A, Tensor3dXL &C); // full collapse
		static void min(Tensor3dXL &A, Tensor3dXL &C); 
		static void max_scalar(Tensor3dXL &A, float compare, Tensor3dXL &C);
		static void min_scalar(Tensor3dXL &A, float compare, Tensor3dXL &C);
		static void min_dot(Tensor3dXL &A, TensorXL &B, Tensor3dXL &C);
		static void abs_tensor(Tensor3dXL &A, Tensor3dXL &C);
        static void floor_tensor(Tensor3dXL &A, Tensor3dXL &C);
		static void exp2_tensor(Tensor3dXL &A, Tensor3dXL &C);
        static void clamp(Tensor3dXL &A, float min, float max, Tensor3dXL &C);
        static void roundTensor(Tensor3dXL &A, Tensor3dXL &C);
        static void reciprocal(Tensor3dXL &A, Tensor3dXL &C);
		static void sum(Tensor3dXL &A, int dim, Tensor3dXL& C);
		static void sign(Tensor3dXL &A, Tensor3dXL& C);
		static void mean(Tensor3dXL &A, Tensor3dXL& C);
		static void sqrt_tensor(Tensor3dXL &A, Tensor3dXL& C);
        //manipulation
        //TODO: only if necessary
		//static void tensor_frexp(Tensor<float>* inputs, Tensor<float>* m, Tensor<float>* e);

        //adressing methods where dep is depth and select the 2d array you want.
        static float get(Tensor3dXL &tensor, const unsigned &row, const unsigned &col, const unsigned &dep);
        static void set(Tensor3dXL &tensor, const unsigned &row, const unsigned &col, const unsigned &dep, float val);
		static TensorXL& get(Tensor3dXL &tensor, const unsigned &dep);
		static void set(Tensor3dXL &tensor, const unsigned &dep, TensorXL &slice);
		static TensorXL* twoD(Tensor3dXL &); //analog to one for 2d Tensors, but checks for ONE layer 
		static void toTwoD(Tensor3dXL &A, TensorXL &C);//takes a tensor that is YxZx1, Yx1xZ, or 1xYxZ and returns the 2d matrix
		static void append(Tensor3dXL &tensor, TensorXL &slice); //set + setDepth call
       
		//helper functions
        static void print(Tensor3dXL &);
        static unsigned getRows(Tensor3dXL &a);
        static unsigned getCols(Tensor3dXL &a);
		static unsigned getDepth(Tensor3dXL &a);
		static unsigned getRows(const Tensor3dXL &a);
		static unsigned getCols(const Tensor3dXL &a);
		static unsigned getDepth(const Tensor3dXL &a);
        static bool eq(Tensor3dXL &A, Tensor3dXL &B);

		static void setRows(Tensor3dXL &a, int num);
		static void setCols(Tensor3dXL &a, int num);

        //private helper functions
    private:
		static void setDepth(Tensor3dXL &a, int num);
		static bool sameSize(Tensor3dXL &A, TensorXL &B);
		static bool sameSize(Tensor3dXL &A, Tensor3dXL &B);
		static bool sameDep(Tensor3dXL &A, Tensor3dXL &B);
};


#endif