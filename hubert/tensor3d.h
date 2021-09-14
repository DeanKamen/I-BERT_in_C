//tensor3d.h
// 3d HLS tensor implementation for the HUBERT project.
//created by Hunter Messner on 7/19/2021


#ifndef __HUBERT_TENSOR3D_H__
#define __HUBERT_TENSOR3D_H__

#include "tensors.h"
#include "tensor3dXL.h"

/*                TUNING AND OPTIONS                   */
const unsigned MAX_DEPTH = 22;

class Tensor3d{
    public:
        unsigned int t_numRows;
        unsigned int t_numCols;
		unsigned int t_depth;
		bool null = true;
        Tensor matrix[MAX_DEPTH]; 

    public:
        //constructors
		Tensor3d(Tensor3d *A); //Takes a 2d matrix and copies it into the first layer.
        Tensor3d(Tensor *A); //Takes a 2d matrix and copies it into the first layer.
		Tensor3d(int dep, int row, int col, float init);
		Tensor3d(void); //all depth layers are nullpointer
		~Tensor3d();

		//special cross multiply
		static void linear_mul(Tensor3d &A, Tensor &B, Tensor3d &C);
		static void bmm(Tensor3d &A, Tensor3d &B, Tensor3d &C);
		static void bmm2(Tensor3d &A, Tensor3d &B, Tensor3d &C);//specialized

		//2d broadcasting across 3d
        static void add(Tensor3d &A, Tensor &B, Tensor3d &C);
        static void sub(Tensor3d &A, Tensor &B, Tensor3d &C);
		static void mul_dot(Tensor3d &A, Tensor &B, Tensor3d &C);
		static void div_dot(Tensor3d &A, Tensor &B, Tensor3d &C);
		static void pow_dot(Tensor3d &A, Tensor &B, Tensor3d &C);
		//3d and 3d
		static void add(Tensor3d &A, Tensor3d &B, Tensor3d &C);
		static void sub(Tensor3d &A, Tensor3d &B, Tensor3d &C);
		static void mul_dot(Tensor3d &A, Tensor3d &B, Tensor3d &C);
		static void div_dot(Tensor3d &A, Tensor3d &B, Tensor3d &C);
		static void pow_dot(Tensor3d &A, Tensor3d &B, Tensor3d &C);

		//scalar type
        static void add_scalar(Tensor3d &A, float B, Tensor3d &C);
        static void mul_scalar(Tensor3d &A, float B, Tensor3d &C);
        static void sub_scalar(Tensor3d &A, float B, Tensor3d &C);
		static void sub_scalar(float B, Tensor3d &A, Tensor3d &C);
        static void div_scalar(Tensor3d &A, float B, Tensor3d &C);
        static void pow_scalar(Tensor3d &A, float B, Tensor3d &C);
        static void max(Tensor3d &A, int dim, Tensor3d &C);
        static void min(Tensor3d &A, int dim, Tensor3d &C);
		static void max(Tensor3d &A, Tensor3d &C); // full collapse
		static void min(Tensor3d &A, Tensor3d &C); 
		static void max_scalar(Tensor3d &A, float compare, Tensor3d &C);
		static void min_scalar(Tensor3d &A, float compare, Tensor3d &C);
		static void min_dot(Tensor3d &A, Tensor &B, Tensor3d &C);
		static void abs_tensor(Tensor3d &A, Tensor3d &C);
        static void floor_tensor(Tensor3d &A, Tensor3d &C);
		static void exp2_tensor(Tensor3d &A, Tensor3d &C);
        static void clamp(Tensor3d &A, float min, float max, Tensor3d &C);
        static void roundTensor(Tensor3d &A, Tensor3d &C);
        static void reciprocal(Tensor3d &A, Tensor3d &C);
		static void sum(Tensor3d &A, int dim, Tensor3d &C);
		static void sign(Tensor3d &A, Tensor3d &C);
		static void mean(Tensor3d &A, Tensor3d &C);
		static void sqrt_tensor(Tensor3d &A, Tensor3d &C);
        //manipulation
        //TODO: only if necessary
		//static void tensor_frexp(Tensor<float>* inputs, Tensor<float>* m, Tensor<float>* e);

        //adressing methods where dep is depth and select the 2d array you want.
        static float get(Tensor3d &tensor, const unsigned &row, const unsigned &col, const unsigned &dep);
        static void set(Tensor3d &tensor, const unsigned &row, const unsigned &col, const unsigned &dep, float val);
		static Tensor& get(Tensor3d &tensor, const unsigned &dep);
		static void set(Tensor3d &tensor, const unsigned &dep, Tensor &slice);
		static Tensor* twoD(Tensor3d &); //analog to one for 2d Tensors, but checks for ONE layer 
		static void toTwoD(Tensor3d &A, Tensor &C);//takes a tensor that is YxZx1, Yx1xZ, or 1xYxZ and returns the 2d matrix
		static void append(Tensor3d &tensor, Tensor &slice); //set + setDepth call
       
		//helper functions
        static void print(Tensor3d &);
		static void print_brief(Tensor3d &);
        static unsigned getRows(Tensor3d &a);
        static unsigned getCols(Tensor3d &a);
		static unsigned getDepth(Tensor3d &a);
        static bool eq(Tensor3d &A, Tensor3d &B);

		static void setRows(Tensor3d &a, int num);
		static void setCols(Tensor3d &a, int num);

        //private helper functions
    private:
		static void setDepth(Tensor3d &a, int num);
		static bool sameSize(Tensor3d &A, Tensor &B);
		static bool sameSize(Tensor3d &A, Tensor3d &B);
		static bool sameDep(Tensor3d &A, Tensor3d &B);
};


#endif