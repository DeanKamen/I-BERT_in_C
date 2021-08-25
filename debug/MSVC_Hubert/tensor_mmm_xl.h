/*  Systolic array paper matrix multiplay                                 */
/*  easy to read and more correct matrix multiply                         */

//Modified by Hunter Messner for the HUBERT project


#ifndef __HUBERT_TENSORMMMXL_H__
#define __HUBERT_TENSORMMMXL_H__

#include "tensorXL.h"
//this function cannot auto-detect matrix size, it must be entered manually with compile time constants.
//This is due to dynamic allocation constraints
template<class T, int t_rowsA, int t_colsA, int t_colsB>
void tensor_mmm_xl(TensorXL<T>* A0, TensorXL<T>* B0, TensorXL<T>* C) {
	const int ROWSA = t_rowsA;
	const int COLSA = t_colsA;
	const int COLSB = t_colsB;
	const int ROWSB = COLSA;
	const int ROWSC = ROWSA;
	const int COLSC = COLSB;

	float A[ROWSA][COLSB];
	float B[ROWSA][COLSB];

	#pragma unroll
	for(int k = 0; k < ROWSA + COLSB + COLSA - 2; ++k)
	{
		#pragma unroll
		for(int i = ROWSA -1 ; i >= 0; --i)
		{
			#pragma unroll
			for(int j = COLSB -1; j >= 0; --j)
			{
				if ((i + j <= k) && (k < i + j + COLSA))
				{
					A[i][j] = j ? A[i][j - 1] : TensorXL<T>::get(A0, i, k - i);
					B[i][j] = i ? B[i - 1][j] : TensorXL<T>::get(B0, k - j, j);
					TensorXL<T>::set(C, i, j, TensorXL<T>::get(C, i, j) + A[i][j] * B[i][j]);
				}
			}
		}
	}
}
#endif