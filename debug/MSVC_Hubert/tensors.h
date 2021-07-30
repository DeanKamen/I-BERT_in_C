//tensors.h
//Basic HLS tensor implementation for the HUBERT project.
//created by Hunter Messner on 6/6/2021


#ifndef __HUBERT_TENSORS_H__
#define __HUBERT_TENSORS_H__

/*                TUNING AND OPTIONS                   */
const unsigned MAX_ROWS = 3072; // based on the max size of numpy arrays in default IBERT (3072)
const unsigned MAX_COLS = 3072;
const unsigned UNITS_PER_MULTIPLY= 32; //must be a factor of the MAX_COLS
typedef double fraction;

template<class T>
class Tensor{
    //private:
    public:
    //temporarily public? should write get() and set() functions
        unsigned int t_numRows;
        unsigned int t_numCols;
        bool transposed = false;
        T t_tensor[MAX_ROWS][MAX_COLS]; 

    public:
        //constructors
        Tensor(unsigned, unsigned, T); //row, column, fill constructor
        Tensor(const unsigned numRows, const unsigned numCols, T** init_pointer);
		Tensor(Tensor<T> *A);

        //math
		static void mul_cross(Tensor<T> *A, Tensor<T> *B, Tensor<T> *C);

		//dot type (broadcasting)
        static void add(Tensor<T> *A, Tensor<T> *B, Tensor<T> *C);
        static void sub(Tensor<T> *A, Tensor<T> *B, Tensor<T> *C);
		static void mul_dot(Tensor<T> *A, Tensor<T> *B, Tensor<T> *C);
		static void div_dot(Tensor<T> *A, Tensor<T> *B, Tensor<T> *C);
		static void pow_dot(Tensor<T> *A, Tensor<T> *B, Tensor<T> *C);
		//scalar type
        static void add_scalar(Tensor<T> *A, T B, Tensor<T> *C);
        static void mul_scalar(Tensor<T> *A, T B, Tensor<T> *C);
        static void sub_scalar(Tensor<T> *A, T B, Tensor<T> *C);
		static void sub_scalar(T B, Tensor<T> *A, Tensor<T> *C);
        static void div_scalar(Tensor<T> *A, T B, Tensor<T> *C);
        static void pow_scalar(Tensor<T> *A, T B, Tensor<T> *C);
        static void max(Tensor<T>* A, int dim, Tensor<T> *C);
        static void min(Tensor<T>* A, int dim, Tensor<T> *C);
		static void max_scalar(Tensor<T>* A, T compare, Tensor<T> *C);
		static void min_scalar(Tensor<T>* A, T compare, Tensor<T> *C);
		static void min_dot(Tensor<T>* A, Tensor<T>* B, Tensor<T> *C);
		static void abs_tensor(Tensor<T> *A, Tensor<T>* C);
        static void floor_tensor(Tensor<T> *A, Tensor<T> *C);
		static void exp2_tensor(Tensor<T> *A, Tensor<T> *C);
        static void clamp(Tensor<T> *A, T min, T max, Tensor<T> *C);
        static void roundTensor(Tensor<T> *A, Tensor<T> *C);
        static void reciprocal(Tensor<T> *A, Tensor<T> *C);
		static void sum(Tensor<T> *A, int dim, Tensor<T>* C);
		static void sign(Tensor<T> *A, Tensor<T> *C);
		static void mean(Tensor<T> *A, Tensor<T> *C);
		static void sqrt_tensor(Tensor<T> *A, Tensor<T> *C);
        //manipulation
        static void fill(Tensor<T> *A, T fill);
        static void view(Tensor<T> *A, int rows, int cols, Tensor<T> *space);
        static void tensor_frexp(Tensor<float>* inputs, Tensor<float>* m, Tensor<float>* e);
        //adressing methods
        static T get(Tensor<T> *tensor, const unsigned &row, const unsigned &col);
        static void set(Tensor<T> *tensor, const unsigned &row, const unsigned &col, T val);
		static T one(Tensor<T>*);
        //helper functions
        static void transpose(Tensor<T> *a);
        static void print(Tensor<T>*);
        static unsigned getRows(Tensor<T>* a);
        static unsigned getCols(Tensor<T>* a);
        static bool eq(Tensor<T>* A, Tensor<T>* B);

		//functions that probably shouldnt be used out of this file
		static void setRows(Tensor<T>* a, int num);
		static void setCols(Tensor<T>* a, int num);
		static void copy(Tensor<T> *A, Tensor<T> *C);
        //private helper functions
    private:
		static bool sameSize(Tensor<T> *A, Tensor<T> *B);
		static bool sameRows(Tensor<T> *A, Tensor<T> *B);
		static bool sameCols(Tensor<T> *A, Tensor<T> *B);
		static void flopSize(Tensor<T> *lhs, Tensor<T> *rhs);
		
};


#endif