//tensorXL.h
//rework of the primitive tensor object to conserve memory and to help batch operations
//created by Hunter Messner on 8/3/2021


#ifndef __HUBERT_TENSORXL_H__
#define __HUBERT_TENSORXL_H__

/*                TUNING AND OPTIONS                   */
const unsigned MAX_ROWS_XL = 3072; // based on the max size of numpy arrays in default IBERT (3072)
//TODO: 90% of arrays can fit in an upper limit of 768, if changing helps conserve memory
const unsigned ROW_SIZE = 3072;

class TensorXL{
    //private:
    public:
    //temporarily public? should write get() and set() functions
        unsigned int t_numRows;
        unsigned int t_numCols;
        bool transposed = false;
		bool null = true;
		#ifndef HLS_SYNTHESIS
        float* matrix[MAX_ROWS_XL]; //an array that holds each individual row, individually allocated
		#else
		float matrix[MAX_ROWS_XL][ROW_SIZE]; //alternate static allocation for synthesis
		#endif

    public:
        //constructors
		TensorXL(); //default constructor
        TensorXL(unsigned, unsigned, float); //row, column, fill constructor
        TensorXL(const unsigned numCols, float* init_pointer);
		TensorXL(TensorXL *A);
		TensorXL(const TensorXL &A);
		~TensorXL();

        //math
		static void mul_cross(TensorXL& A, TensorXL& B, TensorXL& C);
		static void mul_crossL(TensorXL& A, TensorXL& B, TensorXL& C);
		static void mul_crossR(TensorXL& A, TensorXL& B, TensorXL& C);

		//dot type (broadcasting)
        static void add(TensorXL& A, TensorXL& B, TensorXL& C);
        static void sub(TensorXL& A, TensorXL& B, TensorXL& C);
		static void mul_dot(TensorXL& A, TensorXL& B, TensorXL& C);
		static void div_dot(TensorXL& A, TensorXL& B, TensorXL& C);
		static void pow_dot(TensorXL& A, TensorXL& B, TensorXL& C);
		//scalar type
        static void add_scalar(TensorXL& A, float B, TensorXL& C);
        static void mul_scalar(TensorXL& A, float B, TensorXL& C);
		static void mul_scalar_double(TensorXL& A, double B, TensorXL& C);
        static void sub_scalar(TensorXL& A, float B, TensorXL& C);
		static void sub_scalar(float B, TensorXL& A, TensorXL& C);
        static void div_scalar(TensorXL& A, float B, TensorXL& C);
        static void pow_scalar(TensorXL& A, float B, TensorXL& C);
        static void max(TensorXL&  A, int dim, TensorXL& C);
        static void min(TensorXL&  A, int dim, TensorXL& C);
		static void max_scalar(TensorXL&  A, float compare, TensorXL& C);
		static void min_scalar(TensorXL&  A, float compare, TensorXL& C);
		static void min_dot(TensorXL&  A, TensorXL&  B, TensorXL& C);
		static void abs_tensor(TensorXL& A, TensorXL&  C);
        static void floor_tensor(TensorXL& A, TensorXL& C);
		static void exp2_tensor(TensorXL& A, TensorXL& C);
        static void clamp(TensorXL& A, float min, float max, TensorXL& C);
        static void roundTensor(TensorXL& A, TensorXL& C);
        static void reciprocal(TensorXL& A, TensorXL& C);
		static void reciprocal(TensorXL& A, float numerator, TensorXL& C);
		static void sum(TensorXL& A, int dim, TensorXL&  C);
		static void sign(TensorXL& A, TensorXL& C);
		static void mean(TensorXL& A, TensorXL& C);
		static void sqrt_tensor(TensorXL& A, TensorXL& C);
        //manipulation
        static void fill(TensorXL& A, float fill);
        static void tensor_frexp(TensorXL& inputs, TensorXL& m, TensorXL& e);
		static void addRow(TensorXL& A, float* init);
		static void hardTranspose(TensorXL& a, TensorXL& space);
        //adressing methods
        static float get(TensorXL& tensor, const unsigned &row, const unsigned &col);
        static void set(TensorXL& tensor, const unsigned &row, const unsigned &col, float val);
		static float one(TensorXL& );
        //helper functions
        static void transpose(TensorXL& a);
        static void print(TensorXL& );
        static unsigned getRows(TensorXL&  a);
        static unsigned getCols(TensorXL&  a);
        static bool eq(TensorXL&  A, TensorXL&  B);
		static bool eq_verbose(TensorXL& A, TensorXL& B);

		//functions that probably shouldnt be used out of this file
		static void setRows(TensorXL&  a, int num);
		static void setCols(TensorXL&  a, int num);
		static void copy(TensorXL& A, TensorXL& C);
        //private helper functions
    private:
		static bool sameSize(TensorXL& A, TensorXL& B);
		static bool sameRows(TensorXL& A, TensorXL& B);
		static bool sameCols(TensorXL& A, TensorXL& B);
		static void flopSize(TensorXL* lhs, TensorXL* rhs);
		
};


#endif