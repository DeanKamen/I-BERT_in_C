//tensor3d.cpp
// 3d HLS tensor implementation for the HUBERT project.
//created by Hunter Messner on 7/19/2021

#include "HLS/hls.h"
#include "HLS/math.h"
#include "HLS/stdio.h"
#include "tensors.h"
#include "tensor3d.h"
#include "tensor3dXL.h"
#include <iostream>

/*                    DEFINITIONS                      */

Tensor3d::Tensor3d(Tensor3d *A) //Takes 2d matrixes from the pointer and creates new Tensors based on them
{
	t_numCols = getCols(*A); 
	t_numRows = getRows(*A);
	t_depth = getDepth(*A);
	for (unsigned d = 0; d < t_depth; d++)
	{
		matrix[d] = Tensor(get(*A, d));//TODO: almost certainly wrong. Dont care right now
	}
	null = false;
}


Tensor3d::Tensor3d(Tensor *A) //Takes a 2d matrix and copies it into the first layer.
{
	t_numCols = Tensor::getCols(*A);
	t_numRows = Tensor::getRows(*A);
	t_depth = 1;
	matrix[0] = A;
	null = false;
}


Tensor3d::Tensor3d(int dep, int row, int col, float init)
{
	t_numCols = col;
	t_numRows = row;
	t_depth = dep;
	for (unsigned d = 0; d < dep; d++)
	{
		matrix[d] = Tensor(row, col, init);;//TODO: almost certainly wrong. Dont care right now 
	}
	null = false;
}


Tensor3d::Tensor3d(void)
{ //if using this in conjuction with append(), make sure to setCols and setRows
	t_numCols = 0;
	t_numRows = 0;
	t_depth = 0;
	null = true;
}


Tensor3d::~Tensor3d()
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
 void Tensor3d::linear_mul(Tensor3d &A, Tensor &B, Tensor3d &C)
{
	Tensor::transpose(B);
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::mul_cross(get(A, d), B, get(C, d));
	}
	setCols(C, Tensor::getCols(B));
	setRows(C, getRows(A));
	Tensor::transpose(B);
}

 void Tensor3d::bmm(Tensor3d &A, Tensor3d &B, Tensor3d &C)
{ //for when they both have the same size. 
	//We assume B is the same shape as A but compatible to multiply 
	//assuming a 22x64 * 22x64 but we transpose the second input
	//assert(getCols(A) == getCols(B));
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor rhs = get(B, d);
		Tensor::transpose(rhs);
		Tensor::mul_cross(get(A, d), rhs, get(C, d));
		Tensor::transpose(rhs);
	}
	setCols(C, getRows(B)); //rows is correct because its un-transposed
	setRows(C, getRows(A));
}

 void Tensor3d::bmm2(Tensor3d &A, Tensor3d &B, Tensor3d &C)
{ //for when they both have the same size. 
	//We assume B is already "transposed". Also assuming a 22x22 * 22x64
	//assert(getCols(A) == getRows(B));
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::mul_cross_secondary(get(A, d), get(B, d), get(C, d));
	}
	setCols(C, getCols(B));
	setRows(C, getRows(A));
}

//2d broadcasting across 3d
 void Tensor3d::add(Tensor3d &A, Tensor &B, Tensor3d &C)
{
	//defer error checking to a layer by layer basis. 
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::add(get(A, d), B, get(C, d));
	}
}

 void Tensor3d::sub(Tensor3d &A, Tensor &B, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::sub(get(A, d), B, get(C, d));
	}
}
 void Tensor3d::mul_dot(Tensor3d &A, Tensor &B, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::mul_dot(get(A, d), B, get(C, d));
	}
}

 void Tensor3d::div_dot(Tensor3d &A, Tensor &B, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::div_dot(get(A, d), B, get(C, d));
	}
}

 void Tensor3d::pow_dot(Tensor3d &A, Tensor &B, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::pow_dot(get(A, d), B, get(C, d));
	}
}

 void Tensor3d::add(Tensor3d &A, Tensor3d &B, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::add(get(A, d), get(B, d), get(C, d));
	}
}
 void Tensor3d::sub(Tensor3d &A, Tensor3d &B, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::sub(get(A, d), get(B, d), get(C, d));
	}
}
 void Tensor3d::mul_dot(Tensor3d &A, Tensor3d &B, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::mul_dot(get(A, d), get(B, d), get(C, d));
	}
}
 void Tensor3d::div_dot(Tensor3d &A, Tensor3d &B, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::div_dot(get(A, d), get(B, d), get(C, d));
	}
}
 void Tensor3d::pow_dot(Tensor3d &A, Tensor3d &B, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::pow_dot(get(A, d), get(B, d), get(C, d));
	}
}

//scalar type
 void Tensor3d::add_scalar(Tensor3d &A, float B, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::add_scalar(get(A, d), B, get(C, d));
	}
}

 void Tensor3d::mul_scalar(Tensor3d &A, float B, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::mul_scalar(get(A, d), B, get(C, d));
	}
}
 void Tensor3d::sub_scalar(Tensor3d &A, float B, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::sub_scalar(get(A, d), B, get(C, d));
	}
}
 void Tensor3d::sub_scalar(float B, Tensor3d &A, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::sub_scalar(B, get(A, d), get(C, d));
	}
}
 void Tensor3d::div_scalar(Tensor3d &A, float B, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::div_scalar(get(A, d), B, get(C, d));
	}
}
 void Tensor3d::pow_scalar(Tensor3d &A, float B, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::pow_scalar(get(A, d), B, get(C, d));
	}
}
 void Tensor3d::max(Tensor3d &A, int dim, Tensor3d &C)
{
	if (dim == 0 || dim == 1)
	{
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			Tensor::max(get(A, d), dim, get(C, d));
		}
		setCols(C, Tensor::getCols(get(C, 0))); // the rows and cols of the layers were updated
		setRows(C, Tensor::getRows(get(C, 0))); // but we still need to update the 3d matrix's
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
						largest = Tensor3d::get(A, i, j, d);
						first = false;
					}
					else {
						if (largest < Tensor3d::get(A, j, i, d))
						{
							largest = Tensor3d::get(A, j, i, d);
						}
					}
				}
				Tensor3d::set(C, i, j, 0, largest);
				first = true;
			}
		}
		//i know the dimentions of C, so i set them for safety
		setDepth(C, 1);
		setCols(C, A.t_numCols);
		setRows(C, A.t_numRows);
	}
}
 void Tensor3d::min(Tensor3d &A, int dim, Tensor3d &C)
{
	if (dim == 0 || dim == 1)
	{
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			Tensor::min(get(A, d), dim, get(C, d));
		}
		setCols(C, Tensor::getCols(get(C, 0))); // the rows and cols of the layers were updated
		setRows(C, Tensor::getRows(get(C, 0))); // but we still need to update the 3d matrix's
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
						smallest = Tensor3d::get(A, i, j, d);
						first = false;
					}
					else {
						if (smallest > Tensor3d::get(A, j, i, d))
						{
							smallest = Tensor3d::get(A, j, i, d);
						}
					}
				}
				Tensor3d::set(C, i, j, 0, smallest);
				first = true;
			}
		}
		//i know the dimentions of C, so i set them for safety
		setDepth(C, 1);
		setCols(C, A.t_numCols);
		setRows(C, A.t_numRows);
	}
}

 void Tensor3d::max(Tensor3d &A, Tensor3d &C) // full collapse
{
	Tensor3d::max(A, 0, A);
	Tensor3d::max(A, 1, A);
	Tensor3d::max(A, 2, A);
}

 void Tensor3d::min(Tensor3d &A, Tensor3d &C)
{
	Tensor3d::min(A, 0, A);
	Tensor3d::min(A, 1, A);
	Tensor3d::min(A, 2, A);
}

 void Tensor3d::max_scalar(Tensor3d &A, float compare, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::max_scalar(get(A, d), compare, get(C, d));
	}
}

 void Tensor3d::min_scalar(Tensor3d &A, float compare, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::min_scalar(get(A, d), compare, get(C, d));
	}
}

 void Tensor3d::min_dot(Tensor3d &A, Tensor &B, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::min_dot(get(A, d), B, get(C, d));
	}
}

 void Tensor3d::abs_tensor(Tensor3d &A, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::abs_tensor(get(A, d), get(C, d));
	}
}

 void Tensor3d::floor_tensor(Tensor3d &A, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::floor_tensor(get(A, d), get(C, d));
	}
}

 void Tensor3d::exp2_tensor(Tensor3d &A, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::exp2_tensor(get(A, d), get(C, d));
	}
}

 void Tensor3d::clamp(Tensor3d &A, float min, float max, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::clamp(get(A, d), min, max, get(C, d));
	}
}

 void Tensor3d::roundTensor(Tensor3d &A, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::roundTensor(get(A, d), get(C, d));
	}
}

 void Tensor3d::reciprocal(Tensor3d &A, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::reciprocal(get(A, d), get(C, d));
	}
}
 void Tensor3d::sum(Tensor3d &A, int dim, Tensor3d &C)
{
	if (dim == 0 || dim == 1)
	{
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			Tensor::sum(get(A, d), dim, get(C, d));
		}
		setCols(C, Tensor::getCols(get(C, 0))); // the rows and cols of the layers were updated
		setRows(C, Tensor::getRows(get(C, 0))); // but we still need to update the 3d matrix's
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

 void Tensor3d::sign(Tensor3d &A, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::sign(get(A, d), get(C, d));
	}
}

 void Tensor3d::mean(Tensor3d &A, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::mean(get(A, d), get(C, d));
		setRows(C, Tensor::getRows(get(C, d))); //propogate the row change up to the 3d level
		setCols(C, Tensor::getCols(get(C, d))); // and col change
	}
}

 void Tensor3d::sqrt_tensor(Tensor3d &A, Tensor3d &C)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::sqrt_tensor(get(A, d), get(C, d));
	}
}

//adressing methods where dep is depth and select the 2d array you want.
 float Tensor3d::get(Tensor3d &tensor, const unsigned &row, const unsigned &col, const unsigned &dep)
{
	if (dep < getDepth(tensor))
	{
		return Tensor::get(tensor.matrix[dep], row, col);
	}
	else
	{
		//assert(false);
		return 0;
	}
}

 void Tensor3d::set(Tensor3d &tensor, const unsigned &row, const unsigned &col, const unsigned &dep, float val)
{
	if (dep < getDepth(tensor))
	{
		Tensor::set(tensor.matrix[dep], row, col, val);
	}
}

 Tensor& Tensor3d::get(Tensor3d &tensor, const unsigned &dep)
{
	if (dep < getDepth(tensor))
	{
		return tensor.matrix[dep];
	}
	else
	{
		//assert(false);
		static Tensor nullone;
		return nullone;
	}
}
 void Tensor3d::set(Tensor3d &tensor, const unsigned &dep, Tensor &slice)
{//does a copy operation from slice to tensor
	if (dep < getDepth(tensor))
	{
		if (!slice.null)
		{
			tensor.matrix[dep] = &slice; //does NOT COPY. simply points to already existing tensor
		}
		else
		{
			tensor.matrix[dep] = nullptr;
		}
	}
}

 Tensor* Tensor3d::twoD(Tensor3d &A) //analog to one for 2d Tensors, but checks for ONE layer 
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

 void Tensor3d::toTwoD(Tensor3d &A, Tensor &C)
{
	if (getDepth(A) == 1)
	{
		Tensor::copy(*twoD(A), C);
	}
	else if (getRows(A) == 1)
	{// Here we transform depth into rows. depth 0 being the first row
		Tensor::setRows(C, getDepth(A));
		Tensor::setCols(C, getCols(A));
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			for (unsigned c = 0; c < getCols(A); c++)
			{
				Tensor::set(C, d, c, get(A, 0, c, d));
			}
		}
	}
	else if (getCols(A) == 1)
	{// Here we transform depth into cols. depth 0 being the first column
		Tensor::setCols(C, getDepth(A));
		Tensor::setRows(C, getRows(A));
		for (unsigned d = 0; d < getDepth(A); d++)
		{
			for (unsigned r = 0; r < getRows(A); r++)
			{
				Tensor::set(C, r, d, get(A, r, 0, d));
			}
		}
	}
	else
	{
		printf("array cannot be reduced\n");
		//assert(false);
	}
}

 void Tensor3d::append(Tensor3d &tensor, Tensor &slice)
{
	setDepth(tensor, getDepth(tensor)+1);
	set(tensor, getDepth(tensor)-1 , slice);
}

//helper functions
  void  Tensor3d::print(Tensor3d &A)
{
	printf("Tensor3d\n[");
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::print(get(A,d));
		printf(",\n");
	}
	printf("] End Tensor3d\n");
}

  void  Tensor3d::print_brief(Tensor3d &A)
{
	printf("Tensor3d\n[");
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		Tensor::print_brief(get(A, d));
		printf(",\n");
	}
	printf("] End Tensor3d\n");
}

 inline unsigned Tensor3d::getRows(Tensor3d &a)
{
	return a.t_numRows;
}

 inline unsigned Tensor3d::getCols(Tensor3d &a)
{
	return a.t_numCols;
}

 inline unsigned Tensor3d::getDepth(Tensor3d &a)
{
	return a.t_depth;
}

 bool Tensor3d::eq(Tensor3d &A, Tensor3d &B)
{
	for (unsigned d = 0; d < getDepth(A); d++)
	{
		if (!Tensor::eq_verbose(get(A,d), get(B,d)))
		{
			return false;
		}
	}
	return true;
}

//private helper functions
 void Tensor3d::setRows(Tensor3d &a, int num)
{
	a.t_numRows = num;
}

 void Tensor3d::setCols(Tensor3d &a, int num) 
{
	a.t_numCols = num;
}

 void Tensor3d::setDepth(Tensor3d &a, int num)
{
	a.t_depth = num;
}

 bool Tensor3d::sameSize(Tensor3d &A, Tensor &B)
{
	return Tensor3d::getRows(A) == Tensor::getRows(B) && Tensor3d::getCols(A) == Tensor::getCols(B);
}

 bool Tensor3d::sameSize(Tensor3d &A, Tensor3d &B) 
{
	return getRows(A) == getRows(B) && 
		getCols(A) == getCols(B) && 
		getDepth(A) == getDepth(B);
}

 bool Tensor3d::sameDep(Tensor3d &A, Tensor3d &B)
{
	return getDepth(A) == getDepth(B);
}
