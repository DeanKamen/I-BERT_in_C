//tensors.h
//Basic HLS tensor implementation for the HUBERT project.
//created by Hunter Messner on 6/6/2021


#ifndef __HUBERT_TENSORS_H__
#define __HUBERT_TENSORS_H__


/*                TUNING AND OPTIONS                   */
const unsigned MAX_ROWS = 64; // based on the max size of numpy arrays in default IBERT (3072)
const unsigned MAX_COLS = 64;
const unsigned UNITS_PER_MULTIPLY= 32; //must be a factor of the MAX_COLS
typedef double fraction;

class Tensor{
    //private:
    public:
    //temporarily public? should write get() and set() functions
        unsigned int t_numRows;
        unsigned int t_numCols;
        bool transposed = false;
		bool null = true;
        float t_tensor[MAX_ROWS][MAX_COLS]; 

    public:
        //constructors
		Tensor(); //default constructor
        Tensor(unsigned, unsigned, float); //row, column, fill constructor
        Tensor(const unsigned numRows, const unsigned numCols, float** init_pointer);
		Tensor(Tensor *A);

        //math
		static void mul_cross(Tensor &A, Tensor &B, Tensor &C);
		static void mul_cross_secondary(Tensor &A, Tensor &B, Tensor &C);
		//dot type (broadcasting)
        static void add(Tensor &A, Tensor &B, Tensor &C);
        static void sub(Tensor &A, Tensor &B, Tensor &C);
		static void mul_dot(Tensor &A, Tensor &B, Tensor &C);
		static void div_dot(Tensor &A, Tensor &B, Tensor &C);
		static void pow_dot(Tensor &A, Tensor &B, Tensor &C);
		//scalar type
        static void add_scalar(Tensor &A, float B, Tensor &C);
        static void mul_scalar(Tensor &A, float B, Tensor &C);
        static void sub_scalar(Tensor &A, float B, Tensor &C);
		static void sub_scalar(float B, Tensor &A, Tensor &C);
        static void div_scalar(Tensor &A, float B, Tensor &C);
        static void pow_scalar(Tensor &A, float B, Tensor &C);
        static void max(Tensor &A, int dim, Tensor &C);
        static void min(Tensor &A, int dim, Tensor &C);
		static void max_scalar(Tensor &A, float compare, Tensor &C);
		static void min_scalar(Tensor &A, float compare, Tensor &C);
		static void min_dot(Tensor &A, Tensor &B, Tensor &C);
		static void abs_tensor(Tensor &A, Tensor &C);
        static void floor_tensor(Tensor &A, Tensor &C);
		static void exp2_tensor(Tensor &A, Tensor &C);
        static void clamp(Tensor &A, float min, float max, Tensor &C);
        static void roundTensor(Tensor &A, Tensor &C);
        static void reciprocal(Tensor &A, Tensor &C);
		static void sum(Tensor &A, int dim, Tensor &C);
		static void sign(Tensor &A, Tensor &C);
		static void mean(Tensor &A, Tensor &C);
		static void sqrt_tensor(Tensor &A, Tensor &C);
        //manipulation
        static void fill(Tensor &A, float fill);
        static void view(Tensor &A, int rows, int cols, Tensor &space);
        static void tensor_frexp(Tensor &inputs, Tensor &m, Tensor &e);
        //adressing methods
        static float get(Tensor &tensor, const unsigned &row, const unsigned &col);
        static void set(Tensor &tensor, const unsigned &row, const unsigned &col, float val);
		static float one(Tensor &);
        //helper functions
        static void transpose(Tensor &a);
        static void print(Tensor&);
		static void print_brief(Tensor&);
        static unsigned getRows(Tensor &a);
        static unsigned getCols(Tensor &a);
        static bool eq(Tensor &A, Tensor &B);
		static bool eq_verbose(Tensor &A, Tensor &B);

		//functions that probably shouldnt be used out of this file
		static void setRows(Tensor &a, int num);
		static void setCols(Tensor &a, int num);
		static void copy(Tensor &A, Tensor &C);
        //private helper functions
    private:
		static bool sameSize(Tensor &A, Tensor &B);
		static bool sameRows(Tensor &A, Tensor &B);
		static bool sameCols(Tensor &A, Tensor &B);
		static void flopSize(Tensor *lhs, Tensor *rhs);
		
};


#endif