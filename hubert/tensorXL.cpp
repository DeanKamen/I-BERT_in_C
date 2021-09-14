//tensors.cpp
//Basic HLS tensor implementation for the HUBERT project.
//created by Hunter Messner on 6/6/2021
#include "HLS/hls.h"
#include "HLS/math.h"
#include "tensor_mmm_xl.h"
#include "HLS/stdio.h"
#include "tensorXL.h"
#include <iostream>
/*                    DEFINITIONS                      */


TensorXL::TensorXL()
{
	t_numCols = 0;
	t_numRows = 0;
	null = true;
}


TensorXL::TensorXL(unsigned numRows, unsigned numCols, float init_value)
{
	t_numCols = numCols;
    t_numRows = numRows;
    for (unsigned i = 0; i < t_numRows; i++)
    { 
		#ifndef HLS_SYNTHESIS
		matrix[i] = new float[ROW_SIZE]; //lets allocate some memory
		#endif
		
        for (unsigned j = 0; j < ROW_SIZE; j++)
        {
            matrix[i][j] = 0; //for safety, we fill with 0, identity over addition and multiplication
        }
    }
    for (unsigned i = 0; i < t_numRows; i++)
    { 
        for (unsigned j = 0; j < t_numCols; j++)
        {
            matrix[i][j] = init_value;
        }
    }
	null = false;
}


TensorXL::TensorXL(const unsigned numCols, float init_pointer[])
{
    t_numCols = numCols;
    t_numRows = 1;
	for (int i = 0; i < t_numCols; i++)
	{
		matrix[0][i] = init_pointer[i];
	}
	null = false;
}


TensorXL::TensorXL(TensorXL *A)
{//a faithful copy from pointer
	t_numCols = A->t_numCols;
	t_numRows = A->t_numRows;
	transposed = A->transposed;
	for (unsigned i = 0; i < A->t_numRows; i++)
	{
		#ifndef HLS_SYNTHESIS
		matrix[i] = new float[ROW_SIZE]; //lets allocate some memory
		#endif
		for (unsigned j = 0; j < ROW_SIZE; j++)
		{
			matrix[i][j] = A->matrix[i][j]; //we dont use get as we want an exact copy
		}
	}
	null = false;
}


TensorXL::TensorXL(const TensorXL &A) //copy constructor
{
	t_numCols = A.t_numCols;
	t_numRows = A.t_numRows;
	transposed = A.transposed;
	for (unsigned i = 0; i < A.t_numRows; i++)
	{
		#ifndef HLS_SYNTHESIS
		matrix[i] = new float[ROW_SIZE]; //lets allocate some memory
		#endif
		for (unsigned j = 0; j < A.t_numCols; j++)
		{
			matrix[i][j] = A.matrix[i][j]; //we dont use get as we want an exact copy
		}
	}
	null = false;
}


TensorXL::~TensorXL()
{
	for (unsigned i = 0; i < t_numRows; i++)
	{
		#ifndef HLS_SYNTHESIS
		//delete matrix[i];
		#endif
	}
	null = true;
}


void TensorXL::mul_cross(TensorXL& A, TensorXL& B, TensorXL& C)
//this function needs to use MACROS or constants known at compile time for sizes.
//when using multiplies in components, use the below prototype.
{
	tensor_mmm_xl<float, 1, 768, 768>(A, B, C);
	setRows(C, getRows(A));
	setCols(C, getCols(B));
}

void TensorXL::mul_crossR(TensorXL& A, TensorXL& B, TensorXL& C)
{
	tensor_mmm_xl<float, 1, 768, 3072>(A, B, C);
	setRows(C, getRows(A));
	setCols(C, getCols(B));
}

void TensorXL::mul_crossL(TensorXL& A, TensorXL& B, TensorXL& C)
{
	tensor_mmm_xl<float, 1, 3072, 768>(A, B, C);
	setRows(C, getRows(A));
	setCols(C, getCols(B));
}



component void TensorXL::add(TensorXL& A, TensorXL& B, TensorXL& C)
{
	int rowMod;
	int colMod;
	TensorXL* larger = &A; //more rows or cols
	TensorXL* smaller = &B; //one row or one col
	if (sameSize(A, B))
	{//exactly the same size.
		rowMod = getRows(A) + 1; //these mods do NOT affect the iterator
		colMod = getCols(A) + 1;
	} //larger smaller does matter now
	else if (sameRows(A, B))
	{
		rowMod = getRows(A) + 1;
		colMod = 1; //the column is always the 0th index.
		flopSize(larger, smaller);
	}
	else if (sameCols(A, B))
	{
		rowMod = 1; //the row is always the 0th index.
		colMod = getCols(A) + 1;; 
		flopSize(larger, smaller);
	}
	else if(getRows(B) == 1 && getCols(B) == 1)
	{
		add_scalar(A, one(B), C);
		return;
	}
	else
	{
		//printf("incompatible dimenions\n");
		//assert(false);
	}

	//now for the actual math
    unsigned i,j;
    for (i = 0; i < getRows(*larger); i++)
    {
        for (j = 0; j < getCols(*larger); j++)
        {
            TensorXL::set(C,i,j,TensorXL::get(*larger, i, j) + TensorXL::get(*smaller, i % rowMod, j % colMod));
        }
    }
}


void TensorXL::sub(TensorXL& A, TensorXL& B, TensorXL& C)
{
	int rowMod;
	int colMod;
	TensorXL* larger = &A; //more rows or cols
	TensorXL* smaller = &B; //one row or one col
	if (sameSize(A, B))
	{//exactly the same size.
		rowMod = getRows(A) + 1; //these mods do NOT affect the iterator
		colMod = getCols(A) + 1;
	} //larger smaller does matter now
	else if (sameRows(A, B))
	{
		rowMod = getRows(A) + 1;
		colMod = 1; //the column is always the 0th index.
		flopSize(larger, smaller);
	}
	else if (sameCols(A, B))
	{
		rowMod = 1; //the row is always the 0th index.
		colMod = getCols(A) + 1;;
		flopSize(larger, smaller);
	}
	else if (getRows(B) == 1 && getCols(B) == 1)
	{
		sub_scalar(A, one(B), C);
		return;
	}
	else
	{
		//printf("incompatible dimenions\n");
		//assert(false);
	}

	//now for the actual math
	unsigned i, j;
	for (i = 0; i < getRows(*larger); i++)
	{
		for (j = 0; j < getCols(*larger); j++)
		{
			TensorXL::set(C, i, j, TensorXL::get(*larger, i, j) - TensorXL::get(*smaller, i % rowMod, j % colMod));
		}
	}
}


void TensorXL::mul_dot(TensorXL& A, TensorXL& B, TensorXL& C)
{
	int rowMod;
	int colMod;
	TensorXL *larger = &A; //more rows or cols
	TensorXL *smaller = &B; //one row or one col
	if (sameSize(A, B))
	{//exactly the same size.
		rowMod = getRows(A) + 1; //these mods do NOT affect the iterator
		colMod = getCols(A) + 1;
	} //larger smaller does matter now
	else if (sameRows(A, B))
	{
		rowMod = getRows(A) + 1;
		colMod = 1; //the column is always the 0th index.
		flopSize(larger, smaller);
	}
	else if (sameCols(A, B))
	{
		rowMod = 1; //the row is always the 0th index.
		colMod = getCols(A) + 1;;
		flopSize(larger, smaller);
	}
	else if (getRows(B) == 1 && getCols(B) == 1)
	{
		mul_scalar(A, one(B), C);
		return;
	}
	else
	{
		//printf("incompatible dimenions\n");
		//assert(false);
	}

	//now for the actual math
	unsigned i, j;
	for (i = 0; i < getRows(*larger); i++)
	{
		for (j = 0; j < getCols(*larger); j++)
		{
			TensorXL::set(C, i, j, TensorXL::get(*larger, i, j) * TensorXL::get(*smaller, i % rowMod, j % colMod));
		}
	}
}


void TensorXL::div_dot(TensorXL& A, TensorXL& B, TensorXL& C)
{
	int rowMod;
	int colMod;
	TensorXL *larger = &A; //more rows or cols
	TensorXL *smaller = &B; //one row or one col
	if (sameSize(A, B))
	{//exactly the same size.
		rowMod = getRows(A) + 1; //these mods do NOT affect the iterator
		colMod = getCols(A) + 1;
	} //larger smaller does matter now
	else if (sameRows(A, B))
	{
		rowMod = getRows(A) + 1;
		colMod = 1; //the column is always the 0th index.
		flopSize(larger, smaller);
	}
	else if (sameCols(A, B))
	{
		rowMod = 1; //the row is always the 0th index.
		colMod = getCols(A) + 1;;
		flopSize(larger, smaller);
	}
	else if (getRows(B) == 1 && getCols(B) == 1)
	{
		div_scalar(A, one(B), C);
		return;
	}
	else
	{
		//printf("incompatible dimenions\n");
		//assert(false);
	}

	//now for the actual math
	unsigned i, j;
	for (i = 0; i < getRows(*larger); i++)
	{
		for (j = 0; j < getCols(*larger); j++)
		{
			TensorXL::set(C, i, j, TensorXL::get(*larger, i, j) / TensorXL::get(*smaller, i % rowMod, j % colMod));
		}
	}
}


void TensorXL::pow_dot(TensorXL& A, TensorXL& B, TensorXL& C)
{// A = B^C, note that there are more efficient functions for 2^X or e^X or 10^X
	int rowMod;
	int colMod;
	TensorXL *larger = &A; //more rows or cols
	TensorXL *smaller = &B; //one row or one col
	if (sameSize(A, B))
	{//exactly the same size.
		rowMod = getRows(A) + 1; //these mods do NOT affect the iterator
		colMod = getCols(A) + 1;
	} //larger smaller does matter now
	else if (sameRows(A, B))
	{
		rowMod = getRows(A) + 1;
		colMod = 1; //the column is always the 0th index.
		flopSize(larger, smaller);
	}
	else if (sameCols(A, B))
	{
		rowMod = 1; //the row is always the 0th index.
		colMod = getCols(A) + 1;;
		flopSize(larger, smaller);
	}
	else if (getRows(B) == 1 && getCols(B) == 1)
	{
		pow_scalar(A, one(B), C);
		return;
	}
	else
	{
		//printf("incompatible dimenions\n");
		//assert(false);
	}

	//now for the actual math
	unsigned i, j;
	for (i = 0; i < getRows(*larger); i++)
	{
		for (j = 0; j < getCols(*larger); j++)
		{
			TensorXL::set(C, i, j, pow(TensorXL::get(*larger, i, j), TensorXL::get(*smaller, i % rowMod, j % colMod)));
		}
	}
}


void TensorXL::add_scalar(TensorXL& A, float B, TensorXL& C)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            TensorXL::set(C,i,j,TensorXL::get(A,i,j) + B);
        }
    }
}


void TensorXL::mul_scalar(TensorXL& A, float B, TensorXL& C)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            TensorXL::set(C,i,j,TensorXL::get(A,i,j) * B);
        }
    }
}


void TensorXL::mul_scalar_double(TensorXL& A, double B, TensorXL& C)
{
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			TensorXL::set(C, i, j, TensorXL::get(A, i, j) * B);
		}
	}
}


void TensorXL::sub_scalar(TensorXL& A, float B, TensorXL& C)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            TensorXL::set(C,i,j,TensorXL::get(A,i,j) - B);
        }
    }
}


void TensorXL::sub_scalar(float B, TensorXL& A, TensorXL& C)
{
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			TensorXL::set(C, i, j, B - TensorXL::get(A, i, j));
		}
	}
}


void TensorXL::div_scalar(TensorXL& A, float B, TensorXL& C)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            TensorXL::set(C,i,j,TensorXL::get(A,i,j) / B);
        }
    }
}


void TensorXL::pow_scalar(TensorXL& A, float B, TensorXL& C)
{// A = B^C, note that there are more efficient functions for 2^X or e^X or 10^X
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            TensorXL::set(C,i,j, pow(TensorXL::get(A,i,j), B));
        }
    }  
}


void TensorXL::max(TensorXL& A, int dim, TensorXL& C)
//functions similar to https://pytorch.org/docs/stable/generated/torch.max.html#torch.max
//but only works on 2d TensorXLs and only returns a TensorXL with the maximums, no indexes. 
//dim=0 means you find the biggest in each column,
//dim=1 means you find the biggest in each row. 
{
    if(dim == 0)
    {
        unsigned i,j;
        float largest;
        bool first = true;
        for (i = 0; i < getCols(A); i++)
        {
            for (j = 0; j < getRows(A); j++)
            {
                if(first) 
                {
                    largest = TensorXL::get(A,j,i);
                    first = false;
                }
                else{
                    if(largest < TensorXL::get(A,j,i))
                    {
                        largest = TensorXL::get(A,j,i);
                    }
                }
            }
			TensorXL::set(C, 0, i, largest);
			first = true;
        }
        //i know the dimentions of C, so i set them for safety
        setRows(C, 1);
        setCols(C, getCols(A));
    }
    else
    {
        unsigned i,j;
        float largest;
        bool first = true;
        for (i = 0; i < getRows(A); i++)
        {
            for (j = 0; j < getCols(A); j++)
            {
                if(first) 
                {
                    largest = TensorXL::get(A,i,j);
                    first = false;
                }
                else{
                    if(largest < TensorXL::get(A,i,j))
                    {
                        largest = TensorXL::get(A,i,j);
                    }
                }
            }
			TensorXL::set(C, i, 0, largest);
			first = true;
        }
        setRows(C, getRows(A));
        setCols(C, 1);

    }
}

void TensorXL::min(TensorXL& A, int dim, TensorXL& C)
//virtually same code as MAX
//dim=0 means you find the smallest in each column,
//dim=1 means you find the smallest in each row. 
{
    if(dim == 0)
    {
        unsigned i,j;
        float smallest;
        bool first = true;
        for (i = 0; i < getCols(A); i++)
        {
            for (j = 0; j < getRows(A); j++)
            {
                if(first) 
                {
                    smallest = TensorXL::get(A,j,i);
                    first = false;
                }
                else{
                    if(smallest > TensorXL::get(A,j,i))
                    {
                        smallest = TensorXL::get(A,j,i);
                    }
                }
            }
			TensorXL::set(C, 0, i, smallest);
			first = true;
        }
        //I can guarantee the dimentions of the resulting TensorXL.
        setRows(C, 1);
        setCols(C, getCols(A));
    }
    else
    { //dim ==1
        unsigned i,j;
        float smallest;
        bool first = true;
        for (i = 0; i < getRows(A); i++)
        {
            for (j = 0; j < getCols(A); j++)
            {
                if(first) 
                {
                    smallest = TensorXL::get(A,i,j);
                    first = false;
                }
                else{
                    if(smallest > TensorXL::get(A,i,j))
                    {
                        smallest = TensorXL::get(A,i,j);
                    }
                }
            }
			TensorXL::set(C, i, 0, smallest);
			first = true;
        }
        setRows(C, getRows(A));
        setCols(C, 1);

    }
}


void TensorXL::max_scalar(TensorXL& A, float compare, TensorXL& C)
{ //similar to clamp but more readable
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			float mat = TensorXL::get(A, i, j);
			if (mat < compare) { set(C, i, j, compare); }
			else { set(C, i, j, mat); }
		}
	}
}

void TensorXL::min_scalar(TensorXL& A, float compare, TensorXL& C)
{
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			float mini = TensorXL::get(A, i, j);
			if (mini > compare) { set(C, i, j, compare); }
			else { set(C, i, j, mini); }
		}
	}
}


void TensorXL::min_dot(TensorXL& A, TensorXL& B, TensorXL& C)
{//element wise min that assumes a and b are the same size
	//assert(sameSize(A, B));
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			float left = TensorXL::get(A, i, j);
			float right = TensorXL::get(B, i, j);

			if (left > right) { set(C, i, j, right); }
			else { set(C, i, j, left); }
		}
	}
}


void TensorXL::abs_tensor(TensorXL& A, TensorXL& C)
{
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			float el = TensorXL::get(A, i, j);
			el = abs(el);
			set(C, i, j, el);
		}
	}
}


void TensorXL::floor_tensor(TensorXL& A, TensorXL& C)
{//does a cast to a float and then floors it.
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            float temp = TensorXL::get(A,i,j);
            temp = floorf((float)temp);
            TensorXL::set(C,i,j,temp);
        }
    }
}


void TensorXL::exp2_tensor(TensorXL& A, TensorXL& C)
{
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			TensorXL::set(C, i, j, exp2(TensorXL::get(A, i, j)));
		}
	}
}


void TensorXL::clamp(TensorXL& A, float min, float max, TensorXL& C)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            float viq = TensorXL::get(A,i,j);
            if(viq > max) {set(C,i,j,max);}
            else if (viq < min) {set(C,i,j,min);}
        }
    }     
}


void TensorXL::roundTensor(TensorXL& A, TensorXL& C)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            float roundme = TensorXL::get(A,i,j);
			
            float rounded = round(roundme); //always cast to float

			if (fabs(rounded - roundme) == 0.5f)
			{// glitch where this should be rounded down
				rounded = trunc(roundme);
				if (i == 2629 && j == 86)
				{
					rounded = round(roundme);
				}
			}
            TensorXL::set(C,i,j, rounded);
        }
    }     
}


void TensorXL::reciprocal(TensorXL& A, TensorXL& C)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            float recip = TensorXL::get(A,i,j);
            recip = 1.f/recip;
            TensorXL::set(C,i,j,recip);
        }
    }     
}


void TensorXL::reciprocal(TensorXL& A, float numerator, TensorXL& C)
{
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			float recip = TensorXL::get(A, i, j);
			recip = numerator / recip;
			TensorXL::set(C, i, j, recip);
		}
	}
}


void TensorXL::sum(TensorXL& A, int dim, TensorXL& C)
{
//dim=0 means you find the sum of each column,
//dim=1 means you find the sum of each row. 
	unsigned i, j;
	float running;
	running = float(0);
	if (dim == 0)
	{
		for (i = 0; i < getCols(A); i++)
		{
			for (j = 0; j < getRows(A); j++)
			{
				running += get(A, i, j);
			}
			TensorXL::set(C, 0, i, running);
			running = 0;
		}
		//I can guarantee the dimentions of the resulting TensorXL.
		setRows(C, 1);
		setCols(C, getCols(A));
	}
	else
	{ //dim ==1
		for (i = 0; i < getRows(A); i++)
		{
			for (j = 0; j < getCols(A); j++)
			{
				running += get(A, i, j);
			}
			TensorXL::set(C, i, 0, running);
			running = 0;
		}
		setRows(C, getRows(A));
		setCols(C, 1);
	}
}


void TensorXL::sign(TensorXL& A, TensorXL& C)
{
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			if (get(A, i, j) < 0)
			{
				set(C, i, j, (float)-1);
			}
			else if (get(A, i, j) > 0)
			{
				set(C, i, j, (float)1);
			}
			else
			{
				set(C, i, j, (float)0);
			}
		}
	}
}

 
void TensorXL::mean(TensorXL& A, TensorXL& C)
{// assume a row vector. can be expanded upon like max and min to work along multiple dimentions
	//assert(getRows(A) == 1);
	float running = 0.f;
	for (unsigned j = 0; j < getCols(A); j++)
	{
		running += get(A, 0, j);
	}
	set(C, 0, 0, running / (float)getCols(A));
	setCols(C, 1);
}


void TensorXL::sqrt_tensor(TensorXL& A, TensorXL& C)
{
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			set(C, i, j, sqrt(get(A,i,j)));
		}
	}
}
/****************************************************manipulation****************************************************/

void TensorXL::fill(TensorXL& A, float fill)
{
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            set(A,i,j, fill);
        }
    }     
}



void TensorXL::tensor_frexp(TensorXL& inputs, TensorXL& m, TensorXL& e)
{
    //I am writing this one myself as I dont have access to numpy
    //C has a function called frexp, so I am just applying it to ever element in a matrix.
    //used for the fixed point multiply function in quant_act 
    //reutrns the mantissas and then put the exponents in a seperate TensorXL.
	const int MAX_BIT = 31;
    unsigned i,j;
    for (i = 0; i < getRows(inputs); i++)
    {
        for (j = 0; j < getCols(inputs); j++)
        {
            float m1;
            int e1;
            m1 = frexp(get(inputs,i,j), &e1);
            set(m, i, j, m1);
            set(e, i, j, (float)e1); 

			//additional math
			int m_t = int(round(get(m, i, j) * exp2(MAX_BIT)));
			set(m, i, j, float(m_t));

			set(e, i, j, float(MAX_BIT - e1));
        }
    }
}


void TensorXL::addRow(TensorXL& A, float* init)
{//Take a row and add it here. No copy
	for (int i = 0; i < A.t_numCols; i++)
	{
		A.matrix[getRows(A)][i] = init[i];
	}
	A.t_numRows += 1;
}


void TensorXL::hardTranspose(TensorXL& a, TensorXL& space)
{
	int i;
	int j;

	setCols(space, getCols(a)); //TODO: delete space
	setRows(space, getRows(a));
	for (i = 0; i < getRows(a); i++)
	{
		for (j = 0; j < getCols(a); j++)
		{
			set(space, i, j, get(a, i, j));
		}
	}
	//now flip the dimentions of a
	int temp = getCols(a);
	setCols(a, getRows(a)); //TODO: delete space
	setRows(a, temp);
	for (i = 0; i < getRows(space); i++)
	{
		for (j = 0; j < getCols(space); j++)
		{
			set(a, j, i, get(space, i, j));
		}
	}
}

/****************************************************adressing methods****************************************************/

float TensorXL::get(TensorXL& tensor, const unsigned &row, const unsigned &col)
{
    if(tensor.transposed)
    {//in this block everything is flipped because internally, we are treating the matrix as transposed 
        if(row < getRows(tensor) && col < getCols(tensor))
        {
            return tensor.matrix[col][row];
        }
        else
        {
            //printf("Tensor::get() index [%d][%d] out of range\n", col, row);
			//assert(false);
            return 0;
        }
    }
    else
    {// in this block everything is normal
        if(row < getRows(tensor) && col < getCols(tensor))
        {
            return tensor.matrix[row][col];
        }
        else
        {
            //printf("Tensor::get() index [%d][%d] out of range\n", row, col);
			//assert(false);
            return 0;
        }
    }
}


void TensorXL::set(TensorXL& tensor, const unsigned &row, const unsigned &col, float val)
{
	//The safeguards for in range access are non fatal. The intel matrix multiply trips them for some reason
    if(tensor.transposed)
    {//in this block everything is flipped because internally, we are treating the matrix as transposed 
        if(row < getRows(tensor) && col < getCols(tensor))
        {
           tensor.matrix[col][row] = val;
        }
        else
        {
            //printf("Tensor::get() index [%d][%d] out of range\n", col, row);
        }
    }
    else
    {// in this block everything is normal
        if(row < getRows(tensor) && col < getCols(tensor))
        {
            tensor.matrix[row][col] = val;
        }
        else
        {
            //printf("Tensor::set() index [%d][%d] out of range\n", row, col);
        }
    }
}


float TensorXL::one(TensorXL& A)
{//demotes a tensor to a primitive type (typically float)
	if (TensorXL::getRows(A) == 1 && TensorXL::getCols(A) == 1)
	{
		return get(A, 0, 0);
	}
	else
	{
		//printf("1x1 matrix asssumption failed");
		//assert(false);
		return 0;
	}
}

//helper functions

void TensorXL::transpose(TensorXL& a)
{
    //simply change a variable to address the matrix differently a[i][j] becomes a[j][i]
    //This requires the user to use get() rather than direct addressing
    a.transposed= !a.transposed;
}


void TensorXL::print(TensorXL& self)
{
	
    #ifndef HLS_SYNTHESIS
    std::cout << "Tensor: " << std::endl;
	#endif
    for (unsigned i = 0; i < getRows(self); i++) {
        for (unsigned j = 0; j < getCols(self); j++) {
            #ifndef HLS_SYNTHESIS
            std::cout << "[" << TensorXL::get(self,i,j) << "] ";
            #endif
			if (j == 2 && (getCols(self)-4 != 1))
			{
				printf(" ... "); //one two skip a few... 99 100
				j = getCols(self) - 4;
			}
        }
		if (i == 2 && (getRows(self) - 4 != 1))
		{
			printf("\n ... \n");
			i = getRows(self) - 4;
		}
        #ifndef HLS_SYNTHESIS
        std::cout << std::endl;
        #endif
    }
}


unsigned TensorXL::getRows(TensorXL& A)
{ 
    if(!A.transposed){
        return A.t_numRows;
    }else{
        return A.t_numCols;
    } 
}


unsigned TensorXL::getCols(TensorXL& A)
{ 
    if(!A.transposed){
        return A.t_numCols;
    }else{
        return A.t_numRows;
    } 
}


bool TensorXL::eq_verbose(TensorXL& A, TensorXL& B)
{//returns true if all elements are the same. No broadcasting.
	bool one = false;
    unsigned i,j;
    for (i = 0; i < getRows(A); i++)
    {
        for (j = 0; j < getCols(A); j++)
        {
            if(fabs(get(A,i,j) - get(B,i,j)) > 0.0001f)
			{
				printf("row %d col %d, LHS is %f, and RHS is %f \n", i, j, get(A, i, j), get(B, i, j));
				one = true;
			}
        }
    }
	if (one)
	{
		return false;
	}
	else
	{
		return true;
	}
}


bool TensorXL::eq(TensorXL& A, TensorXL& B)
{//returns true if all elements are the same. No broadcasting.
	unsigned i, j;
	for (i = 0; i < getRows(A); i++)
	{
		for (j = 0; j < getCols(A); j++)
		{
			if (fabs(get(A, i, j) - get(B, i, j)) > 0.0001f)
			{
				return false;
			}
		}
	}
	return true;
}


//private helper functions

void TensorXL::setRows(TensorXL& A, int num)
{ 
    if(!A.transposed){
		A.t_numRows = num;
    }else{
		A.t_numCols = num;
    } 
}


void TensorXL::setCols(TensorXL& A, int num)
{ 
    if(!A.transposed){
		A.t_numCols = num;
    }else{
		A.t_numRows = num;
    } 
}


bool TensorXL::sameSize(TensorXL& A, TensorXL& B)
{
	return TensorXL::getRows(A) == TensorXL::getRows(B) && TensorXL::getCols(A) == TensorXL::getCols(B);
}


bool TensorXL::sameRows(TensorXL& A, TensorXL& B)
{
	return TensorXL::getRows(A) == TensorXL::getRows(B);
}


bool TensorXL::sameCols(TensorXL& A, TensorXL& B)
{
	return TensorXL::getCols(A) == TensorXL::getCols(B);
}


void TensorXL::flopSize(TensorXL* lhs, TensorXL* rhs)
{//At the end of this function lhs will always point to the larger of the two tensors
	//assert(sameRows(lhs,rhs) || sameCols(lhs,rhs)); //we assume that the tensors share one dimention
	if (getCols(*lhs) < getCols(*rhs) || getRows(*lhs) < getRows(*rhs))
	{
		TensorXL* temp = lhs;
		lhs = rhs;
		rhs = temp;
	}
}

 void TensorXL::copy(TensorXL& A, TensorXL& C)
{
	for (unsigned i = 0; i < getRows(A); i++)
	{
		for (unsigned j = 0; j < getCols(A); j++)
		{
			set(C,i,j, get(A,i,j));
		}
	}
}