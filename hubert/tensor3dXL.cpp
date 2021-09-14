//Tensor3dXL.cpp
// 3d HLS tensor implementation for the HUBERT project.template
//created by Hunter Messner on 7/19/2021

#include "HLS/hls.h"
#include "HLS/math.h"
#include "HLS/stdio.h"
#include "tensorXL.h"
#include "tensor3dXL.h"
#include <iostream>

/*                    DEFINITIONS                     */


Tensor3dXL::Tensor3dXL(Tensor3dXL *A) //Takes 2d matrixes from the pointer and creates new Tensors based on them
{
	t_numCols = getCols(A); 
	t_numRows = getRows(A);
	t_depth = getDepth(A);
	for (unsigned d = 0; d < t_depth; d++)
	{
		matrix[d] = TensorXL(get(*A, d)); //TODO: almost certainly wrong. Dont care right now
	}
	null = false;
}


Tensor3dXL::Tensor3dXL(Tensor3dXL &A)
{
	t_numCols = getCols(A);
	t_numRows = getRows(A);
	t_depth = getDepth(A);
	for (unsigned d = 0; d < t_depth; d++)
	{
		matrix[d] = TensorXL(get(A, d));
	}
	null = false;
}


Tensor3dXL::Tensor3dXL(TensorXL *A) //Takes a 2d matrix and copies it into the first layer.
{
	t_numCols = TensorXL::getCols(*A);
	t_numRows = TensorXL::getRows(*A);
	t_depth = 1;
	matrix[0] = A;
	null = false;
}


Tensor3dXL::Tensor3dXL(int dep, int row, int col, float init)
{
	t_numCols = col;
	t_numRows = row;
	t_depth = dep;
	for (unsigned d = 0; d < dep; d++)
	{
		matrix[d] = TensorXL(row, col, init);//TODO: almost certainly wrong. Dont care right now
	}
	null = false;
}


Tensor3dXL::Tensor3dXL(void)
{ //if using this in conjuction with append(), make sure to setCols and setRows
	t_numCols = 0;
	t_numRows = 0;
	t_depth = 0;
	null = true;
}


Tensor3dXL::~Tensor3dXL()
{
	/*
	for (unsigned d = 0; d < t_depth; d++)
	{
		if (nullptr != matrix[d]) { delete matrix[d]; }
	}
	*/
	null = true;
}

//special multiply
 void Tensor3dXL::linear_mul(Tensor3dXL &A, TensorXL &B, Tensor3dXL &C)
{
	TensorXL::transpose(B);
	if (getCols(A) > 768)
	{
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			TensorXL::mul_crossL(get(A, d), B, get(C, d));
		}
	}
	else if (TensorXL::getCols(B) > 768)
	{
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			TensorXL::mul_crossR(get(A, d), B, get(C, d));
		}
	}
	else
	{
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			TensorXL::mul_cross(get(A, d), B, get(C, d));
		}
	}

	setCols(C, TensorXL::getCols(B));
	setRows(C, getRows(A));
	TensorXL::transpose(B);
}

 void Tensor3dXL::bmm(Tensor3dXL &A, Tensor3dXL &B, Tensor3dXL &C)
{ //for when they both have the same size
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL rhs = get(B, d);
		TensorXL::transpose(rhs);
		TensorXL::mul_cross(get(A, d), rhs, get(C, d));
		TensorXL::transpose(rhs);
	}
	setCols(C, getCols(B));
	setRows(C, getRows(A));
}

//2d broadcasting across 3d
 void Tensor3dXL::add(Tensor3dXL &A, TensorXL &B, Tensor3dXL &C)
{
	//defer error checking to a layer by layer basis. 
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::add(get(A, d), B, get(C, d));
	}
}

 void Tensor3dXL::sub(Tensor3dXL &A, TensorXL &B, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::sub(get(A, d), B, get(C, d));
	}
}
 void Tensor3dXL::mul_dot(Tensor3dXL &A, TensorXL &B, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::mul_dot(get(A, d), B, get(C, d));
	}
}

 void Tensor3dXL::div_dot(Tensor3dXL &A, TensorXL &B, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::div_dot(get(A, d), B, get(C, d));
	}
}

 void Tensor3dXL::pow_dot(Tensor3dXL &A, TensorXL &B, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::pow_dot(get(A, d), B, get(C, d));
	}
}

//3d and 3d.
 void Tensor3dXL::add(Tensor3dXL &A, Tensor3dXL &B, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::add(get(A, d), get(B, d), get(C, d));
	}
}
 void Tensor3dXL::sub(Tensor3dXL &A, Tensor3dXL &B, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::sub(get(A, d), get(B, d), get(C, d));
	}
}
 void Tensor3dXL::mul_dot(Tensor3dXL &A, Tensor3dXL &B, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::mul_dot(get(A, d), get(B, d), get(C, d));
	}
}
 void Tensor3dXL::div_dot(Tensor3dXL &A, Tensor3dXL &B, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::div_dot(get(A, d), get(B, d), get(C, d));
	}
}
 void Tensor3dXL::pow_dot(Tensor3dXL &A, Tensor3dXL &B, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::pow_dot(get(A, d), get(B, d), get(C, d));
	}
}

//scalar type
 void Tensor3dXL::add_scalar(Tensor3dXL &A, float B, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::add_scalar(get(A, d), B, get(C, d));
	}
}

 void Tensor3dXL::mul_scalar(Tensor3dXL &A, float B, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::mul_scalar(get(A, d), B, get(C, d));
	}
}
 void Tensor3dXL::sub_scalar(Tensor3dXL &A, float B, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::sub_scalar(get(A, d), B, get(C, d));
	}
}
 void Tensor3dXL::sub_scalar(float B, Tensor3dXL &A, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::sub_scalar(B, get(A, d), get(C, d));
	}
}
 void Tensor3dXL::div_scalar(Tensor3dXL &A, float B, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::div_scalar(get(A, d), B, get(C, d));
	}
}
 void Tensor3dXL::pow_scalar(Tensor3dXL &A, float B, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::pow_scalar(get(A, d), B, get(C, d));
	}
}
 void Tensor3dXL::max(Tensor3dXL &A, int dim, Tensor3dXL &C)
{
	if (dim == 0 || dim == 1)
	{
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			TensorXL::max(get(A, d), dim, get(C, d));
		}
		setCols(C, TensorXL::getCols(get(C, 0))); // the rows and cols of the layers were updated
		setRows(C, TensorXL::getRows(get(C, 0))); // but we still need to update the 3d matrix's
	}
	else //dim ==2
	{
		unsigned i, j;
		float largest;
		bool first = true;
		for (i = 0; i < A.t_numCols; i++)
		{
			for (j = 0; j < A.t_numRows; j++)
			{
				for (unsigned d = 0; d < A.t_depth; d++)
				{
					if (first)
					{
						largest = Tensor3dXL::get(A, i, j, d);
						first = false;
					}
					else {
						if (largest < Tensor3dXL::get(A, j, i, d))
						{
							largest = Tensor3dXL::get(A, j, i, d);
						}
					}
				}
				Tensor3dXL::set(C, i, j, 0, largest);
				first = true;
			}
		}
		//i know the dimentions of C, so i set them for safety
		setDepth(C, 1);
		setCols(C, A.t_numCols);
		setRows(C, A.t_numRows);
	}
}
 void Tensor3dXL::min(Tensor3dXL &A, int dim, Tensor3dXL &C)
{
	if (dim == 0 || dim == 1)
	{
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			TensorXL::min(get(A, d), dim, get(C, d));
		}
		setCols(C, TensorXL::getCols(get(C, 0))); // the rows and cols of the layers were updated
		setRows(C, TensorXL::getRows(get(C, 0))); // but we still need to update the 3d matrix's
	}
	else //dim ==2
	{
		unsigned i, j;
		float smallest;
		bool first = true;
		for (i = 0; i < A.t_numCols; i++)
		{
			for (j = 0; j < A.t_numRows; j++)
			{
				for (unsigned d = 0; d < A.t_depth; d++)
				{
					if (first)
					{
						smallest = Tensor3dXL::get(A, i, j, d);
						first = false;
					}
					else {
						if (smallest > Tensor3dXL::get(A, j, i, d))
						{
							smallest = Tensor3dXL::get(A, j, i, d);
						}
					}
				}
				Tensor3dXL::set(C, i, j, 0, smallest);
				first = true;
			}
		}
		//i know the dimentions of C, so i set them for safety
		setDepth(C, 1);
		setCols(C, A.t_numCols);
		setRows(C, A.t_numRows);
	}
}

 void Tensor3dXL::max(Tensor3dXL& A, Tensor3dXL &C) // full collapse
{
	Tensor3dXL::max(A, 0, A);
	Tensor3dXL::max(A, 1, A);
	Tensor3dXL::max(A, 2, A);
}

 void Tensor3dXL::min(Tensor3dXL &A, Tensor3dXL &C)
{
	Tensor3dXL::min(A, 0, A);
	Tensor3dXL::min(A, 1, A);
	Tensor3dXL::min(A, 2, A);
}

 void Tensor3dXL::max_scalar(Tensor3dXL &A, float compare, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::max_scalar(get(A, d), compare, get(C, d));
	}
}

 void Tensor3dXL::min_scalar(Tensor3dXL &A, float compare, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::min_scalar(get(A, d), compare, get(C, d));
	}
}

 void Tensor3dXL::min_dot(Tensor3dXL &A, TensorXL &B, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::min_dot(get(A, d), B, get(C, d));
	}
}

 void Tensor3dXL::abs_tensor(Tensor3dXL &A, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::abs_tensor(get(A, d), get(C, d));
	}
}

 void Tensor3dXL::floor_tensor(Tensor3dXL &A, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::floor_tensor(get(A, d), get(C, d));
	}
}

 void Tensor3dXL::exp2_tensor(Tensor3dXL &A, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::exp2_tensor(get(A, d), get(C, d));
	}
}

 void Tensor3dXL::clamp(Tensor3dXL &A, float min, float max, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::clamp(get(A, d), min, max, get(C, d));
	}
}

 void Tensor3dXL::roundTensor(Tensor3dXL &A, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::roundTensor(get(A, d), get(C, d));
	}
}

 void Tensor3dXL::reciprocal(Tensor3dXL &A, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::reciprocal(get(A, d), get(C, d));
	}
}
 void Tensor3dXL::sum(Tensor3dXL &A, int dim, Tensor3dXL &C)
{
	if (dim == 0 || dim == 1)
	{
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			TensorXL::sum(get(A, d), dim, get(C, d));
		}
		setCols(C, TensorXL::getCols(get(C, 0))); // the rows and cols of the layers were updated
		setRows(C, TensorXL::getRows(get(C, 0))); // but we still need to update the 3d matrix's
	}

	else
	{
		float running;
		running = float(0);
		for (unsigned i = 0; i < A.t_numCols; i++)
		{
			for (unsigned j = 0; j < A.t_numRows; j++)
			{
				for (unsigned d = 0; d < A.t_depth; d++)
				{
					running += get(A, j, i, d);
				}
				set(C, i, j, 0, running);
				running = 0;
			}
		}
		setDepth(C, 1);
		setCols(C, A.t_numCols);
		setRows(C, A.t_numRows);
	}
}

 void Tensor3dXL::sign(Tensor3dXL &A, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::sign(get(A, d), get(C, d));
	}
}

 void Tensor3dXL::mean(Tensor3dXL &A, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::mean(get(A, d), get(C, d));
		setRows(C, TensorXL::getRows(get(C, d))); //propogate the row change up to the 3d level
		setCols(C, TensorXL::getCols(get(C, d))); // and col change
	}
}

 void Tensor3dXL::sqrt_tensor(Tensor3dXL &A, Tensor3dXL &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::sqrt_tensor(get(A, d), get(C, d));
	}
}

//adressing methods where dep is depth and select the 2d array you want.
 float Tensor3dXL::get(Tensor3dXL &tensor, const unsigned &row, const unsigned &col, const unsigned &dep)
{
	if (dep < getDepth(tensor))
	{
		return TensorXL::get(tensor.matrix[dep], row, col);
	}
	else
	{
		//assert(false);
		return 0;
	}
}

 void Tensor3dXL::set(Tensor3dXL &tensor, const unsigned &row, const unsigned &col, const unsigned &dep, float val)
{
	if (dep < getDepth(tensor))
	{
		TensorXL::set(tensor.matrix[dep], row, col, val);
	}
}

 TensorXL& Tensor3dXL::get(Tensor3dXL &tensor, const unsigned &dep)
{
	if (dep < getDepth(tensor))
	{
		return tensor.matrix[dep];
	}
	else
	{
		//assert(false);
		TensorXL nullone;
		return nullone;
	}
}

 void Tensor3dXL::set(Tensor3dXL &tensor, const unsigned &dep, TensorXL &slice)
{//does a copy operation from slice to tensor
	if (dep < getDepth(tensor))
	{
		if (!slice.null)
		{
			tensor.matrix[dep] = slice; // synthesis uses objects. DOES copy
		}
		else
		{
			tensor.matrix[dep] = nullptr;
		}
	}
}

 TensorXL* Tensor3dXL::twoD(Tensor3dXL &A) //analog to one for 2d Tensors, but checks for ONE layer 
{
	if (getDepth(A) == 1)
	{
		return &get(A,0);
	}
	else
	{
		//printf("faulty assumption");
		//assert(false);
		return nullptr;
	}
}

 void Tensor3dXL::toTwoD(Tensor3dXL &A, TensorXL &C)
{
	if (getDepth(A) == 1)
	{
		TensorXL::copy(*twoD(A), C);
	}
	else if (getRows(A) == 1)
	{// Here we transform depth into rows. depth 0 being the first row
		TensorXL::setRows(C, getDepth(A));
		TensorXL::setCols(C, getCols(A));
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			for (unsigned c = 0; c < getCols(A); c++)
			{
				TensorXL::set(C, d, c, get(A, 0, c, d));
			}
		}
	}
	else if (getCols(A) == 1)
	{// Here we transform depth into cols. depth 0 being the first column
		TensorXL::setCols(C, getDepth(A));
		TensorXL::setRows(C, getRows(A));
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			for (unsigned r = 0; r < getRows(A); r++)
			{
				TensorXL::set(C, r, d, get(A, r, 0, d));
			}
		}
	}
	else
	{
		//printf("array cannot be reduced\n");
		//assert(false);
	}
}

 void Tensor3dXL::append(Tensor3dXL &tensor, TensorXL &slice)
{
	setDepth(tensor, getDepth(tensor)+1);
	set(tensor, getDepth(tensor)-1 , slice);
	tensor.null = false;
}

//helper functions
  void  Tensor3dXL::print(Tensor3dXL &A)
{
	printf("Tensor3dXL\n[");
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		TensorXL::print(get(A,d));
		printf(",\n");
	}
	printf("] End Tensor3dXL\n");
}

 inline unsigned Tensor3dXL::getRows(Tensor3dXL &a)
{
	return a.t_numRows;
}

 inline unsigned Tensor3dXL::getCols(Tensor3dXL &a)
{
	return a.t_numCols;
}

 inline unsigned Tensor3dXL::getDepth(Tensor3dXL &a)
{
	return a.t_depth;
}
 inline unsigned Tensor3dXL::getRows(const Tensor3dXL &a)
{
	return a.t_numRows;
}

 inline unsigned Tensor3dXL::getCols(const Tensor3dXL &a)
{
	return a.t_numCols;
}

 inline unsigned Tensor3dXL::getDepth(const Tensor3dXL &a)
{
	return a.t_depth;
}

 bool Tensor3dXL::eq(Tensor3dXL &A, Tensor3dXL &B)
{
	bool one = false;
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		if (!TensorXL::eq_verbose(get(A,d), get(B,d)))
		{
			printf("depth %d", d);
			one = true;
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

//private helper functions
 void Tensor3dXL::setRows(Tensor3dXL &a, int num)
{
	a.t_numRows = num;
}

 void Tensor3dXL::setCols(Tensor3dXL &a, int num) 
{
	a.t_numCols = num;
}

 void Tensor3dXL::setDepth(Tensor3dXL &a, int num)
{
	a.t_depth = num;
}

 bool Tensor3dXL::sameSize(Tensor3dXL &A, TensorXL &B)
{
	return Tensor3dXL::getRows(A) == TensorXL::getRows(B) && Tensor3dXL::getCols(A) == TensorXL::getCols(B);
}

 bool Tensor3dXL::sameSize(Tensor3dXL &A, Tensor3dXL &B) 
{
	return Tensor3dXL::getRows(A) == Tensor3dXL::getRows(B) && 
		Tensor3dXL::getCols(A) == Tensor3dXL::getCols(B) && 
		Tensor3dXL::getDepth(A) == Tensor3dXL::getDepth(B);
}

 bool Tensor3dXL::sameDep(Tensor3dXL &A, Tensor3dXL &B)
{
	return Tensor3dXL::getDepth(A) == Tensor3dXL::getDepth(B);
}
