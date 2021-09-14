//tensorXL.h
//rework of the primitive tensor object to conserve memory and to help batch operations
//created by Hunter Messner on 8/3/2021


#ifndef __HUBERT_TENSORXL_H__
#define __HUBERT_TENSORXL_H__

/*                TUNING AND OPTIONS                   */
const unsigned MAX_ROWS_XL = 3072; // based on the max size of numpy arrays in default IBERT (3072)
//TODO: 90% of arrays can fit in an upper limit of 768, if changing helps conserve memory
const unsigned ROW_SIZE = 3072;

template<class T>
class TensorXL{
    //private:
    public:
    //temporarily public? should write get() and set() functions
        unsigned int t_numRows;
        unsigned int t_numCols;
        bool transposed = false;
		bool null = true;
		#ifndef HLS_SYNTHESIS
        T* matrix[MAX_ROWS_XL]; //an array that holds each individual row, individually allocated
		#else
		T matrix[MAX_ROWS_XL][ROW_SIZE]; //alternate static allocation for synthesis
		#endif

    public:
        //constructors
		TensorXL(); //default constructor
        TensorXL(unsigned, unsigned, T); //row, column, fill constructor
        TensorXL(const unsigned numCols, T* init_pointer);
		TensorXL(TensorXL<T> *A);
		TensorXL(const TensorXL<T> &A);
		~TensorXL();

        //math
		static void mul_cross(TensorXL<T>& A, TensorXL<T>& B, TensorXL<T>& C);
		static void mul_crossL(TensorXL<T>& A, TensorXL<T>& B, TensorXL<T>& C);
		static void mul_crossR(TensorXL<T>& A, TensorXL<T>& B, TensorXL<T>& C);

		//dot type (broadcasting)
        static void add(TensorXL<T>& A, TensorXL<T>& B, TensorXL<T>& C);
        static void sub(TensorXL<T>& A, TensorXL<T>& B, TensorXL<T>& C);
		static void mul_dot(TensorXL<T>& A, TensorXL<T>& B, TensorXL<T>& C);
		static void div_dot(TensorXL<T>& A, TensorXL<T>& B, TensorXL<T>& C);
		static void pow_dot(TensorXL<T>& A, TensorXL<T>& B, TensorXL<T>& C);
		//scalar type
        static void add_scalar(TensorXL<T>& A, T B, TensorXL<T>& C);
        static void mul_scalar(TensorXL<T>& A, T B, TensorXL<T>& C);
		static void mul_scalar_double(TensorXL<T>& A, double B, TensorXL<T>& C);
        static void sub_scalar(TensorXL<T>& A, T B, TensorXL<T>& C);
		static void sub_scalar(T B, TensorXL<T>& A, TensorXL<T>& C);
        static void div_scalar(TensorXL<T>& A, T B, TensorXL<T>& C);
        static void pow_scalar(TensorXL<T>& A, T B, TensorXL<T>& C);
        static void max(TensorXL<T>&  A, int dim, TensorXL<T>& C);
        static void min(TensorXL<T>&  A, int dim, TensorXL<T>& C);
		static void max_scalar(TensorXL<T>&  A, T compare, TensorXL<T>& C);
		static void min_scalar(TensorXL<T>&  A, T compare, TensorXL<T>& C);
		static void min_dot(TensorXL<T>&  A, TensorXL<T>&  B, TensorXL<T>& C);
		static void abs_tensor(TensorXL<T>& A, TensorXL<T>&  C);
        static void floor_tensor(TensorXL<T>& A, TensorXL<T>& C);
		static void exp2_tensor(TensorXL<T>& A, TensorXL<T>& C);
        static void clamp(TensorXL<T>& A, T min, T max, TensorXL<T>& C);
        static void roundTensor(TensorXL<T>& A, TensorXL<T>& C);
        static void reciprocal(TensorXL<T>& A, TensorXL<T>& C);
		static void reciprocal(TensorXL<T>& A, T numerator, TensorXL<T>& C);
		static void sum(TensorXL<T>& A, int dim, TensorXL<T>&  C);
		static void sign(TensorXL<T>& A, TensorXL<T>& C);
		static void mean(TensorXL<T>& A, TensorXL<T>& C);
		static void sqrt_tensor(TensorXL<T>& A, TensorXL<T>& C);
        //manipulation
        static void fill(TensorXL<T>& A, T fill);
        static void tensor_frexp(TensorXL<float>& inputs, TensorXL<float>& m, TensorXL<float>& e);
		static void addRow(TensorXL<T>& A, T* init);
		static void hardTranspose(TensorXL<T>& a, TensorXL<T>& space);
        //adressing methods
        static T get(TensorXL<T>& tensor, const unsigned &row, const unsigned &col);
        static void set(TensorXL<T>& tensor, const unsigned &row, const unsigned &col, T val);
		static T one(TensorXL<T>& );
        //helper functions
        static void transpose(TensorXL<T>& a);
        static void print(TensorXL<T>& );
        static unsigned getRows(TensorXL<T>&  a);
        static unsigned getCols(TensorXL<T>&  a);
        static bool eq(TensorXL<T>&  A, TensorXL<T>&  B);
		static bool eq_verbose(TensorXL<T>& A, TensorXL<T>& B);

		//functions that probably shouldnt be used out of this file
		static void setRows(TensorXL<T>&  a, int num);
		static void setCols(TensorXL<T>&  a, int num);
		static void copy(TensorXL<T>& A, TensorXL<T>& C);
        //private helper functions
    private:
		static bool sameSize(TensorXL<T>& A, TensorXL<T>& B);
		static bool sameRows(TensorXL<T>& A, TensorXL<T>& B);
		static bool sameCols(TensorXL<T>& A, TensorXL<T>& B);
		static void flopSize(TensorXL<T>* lhs, TensorXL<T>* rhs);
		
};


#endif