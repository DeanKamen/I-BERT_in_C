//tensors.hpp
//Basic HLS tensor implementation for the HUBERT project.
//created by Hunter Messner on 6/6/2021


#ifndef __HUBERT_TENSORS_HPP__
#define __HUBERT_TENSORS_HPP__

//typedef int T; //CHANGE THIS TO MAKE A NEW CLASS, TEMPLATES DONT WORK

/*                TUNING AND OPTIONS                   */
const unsigned MAX_ROWS = 3072; // based on the max size of numpy arrays in default IBERT (3072)
const unsigned MAX_COLS = 3072;
const unsigned UNITS_PER_MULTIPLY= 32; //must be a factor of the MAX_COLS
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
        
        Tensor(unsigned, unsigned, T); //row, column, fill constructor
        Tensor(const unsigned numRows, const unsigned numCols, T** init_pointer);
        //math
        static void add(Tensor &A, Tensor &B, Tensor &C);
        static void mul(Tensor &A, Tensor &B, Tensor &C);
        static void sub(Tensor &A, Tensor &B, Tensor &C);
        static void add_scalar(Tensor &A, T B, Tensor &C);
        static void mul_scalar(Tensor &A, T B, Tensor &C);
        static void sub_scalar(Tensor &A, T B, Tensor &C);
        static void div_scalar(Tensor &A, T B, Tensor &C);
        static void pow_scalar(Tensor &A, T B, Tensor &C);
        static void max(Tensor& A, int dim, Tensor &C);
        static void min(Tensor& A, int dim, Tensor &C);
        static void floor_tensor(Tensor& A, Tensor &C);
        static void mul_dot(Tensor& A, Tensor &B, Tensor &C);
        static void div_dot(Tensor& A, Tensor &B, Tensor &C);
        static void pow_dot(Tensor& A, Tensor &B, Tensor &C);
        static void clamp(Tensor& A, T min, T max, Tensor &C);
        static void round(Tensor& A, Tensor& C);
        static void reciprocal(Tensor& A, Tensor& C);
        //manipulation
        static void fill(Tensor& A, T fill);
        static void view(Tensor& A, int rows, int cols, Tensor& space);
        static void tensor_frexp(Tensor<float> inputs, Tensor<float>* m, Tensor<float>* e);
        //adressing methods
        static T get(Tensor &tensor, const unsigned &row, const unsigned &col);
        static void set(Tensor &tensor, const unsigned &row, const unsigned &col, T val);
        //helper functions
        static void transpose(Tensor &a);
        static void print(Tensor*);        
        static unsigned getRows(Tensor& a);
        static unsigned getCols(Tensor& a);
        static bool eq(Tensor& A, Tensor &B);

        //private helper functions
    private:
        static void setRows(Tensor& a, int num);
        static void setCols(Tensor& a, int num);         
};


#endif