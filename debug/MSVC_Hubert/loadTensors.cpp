//loadTensors.cpp, created by Hunter Messner for the HUBERT project

#include <stdio.h>
#include <cstring>
#include <stdlib.h>
#include "tensorXL.hpp"
#include "tensor3dXL.hpp"
#include "loadTensors.h"
#include "hubertEnums.h"
/*
The file structure is as follows
256 Chars that denote the Tensor name
1 int for num rows, 1 int for num cols
numrows*numcols floats following that.
Then onto the next array
*/
TensorXL<float>* loadTensorXL(preload idx)
{
    FILE* f;
    fopen_s(&f, "bin/MNLI_state.bin", "rb"); //
    FILE* l;
    fopen_s(&l, "bin/onelayer.txt", "r"); //text file that includes names of indicies

    char strname[256];
    int el_requested = (int)idx;

    int cur_el = 0;
    while (fgets(strname, sizeof(strname), l)) { //we must read the file in order
        if(strname[ strlen(strname) - 1 ] == '\n')
        {
            strname[ strlen(strname) - 1 ] = '\0'; //get rid of newline
        }
        int str_len;
        char str[256];
        int rows,cols;
        float cur;
        fread((void*)(&str_len), sizeof(str_len), 1, f);
        fread((void*)(&str), str_len, 1, f);
        str[str_len] = '\0'; //because I dont think its null terminated
        if(strncmp(strname, str, 256) != 0)
        { 
            printf("verification failed");
            exit(1); 
        }
        fread((void*)(&rows), sizeof(rows), 1, f);
        fread((void*)(&cols), sizeof(cols), 1, f);

        //printf("%d %s (%d, %d)\n", str_len, str , rows, cols);
        if(cur_el == el_requested)
        {
			TensorXL<float>* localTensor = new TensorXL<float>(rows, cols, 0.f);
			int i;
			for (i = 0; i < rows*cols; i++)
			{
				fread((void*)(&cur), sizeof(cur), 1, f);
				int row = i / cols; // we are on this row at any given point
				int col = i % cols;
				TensorXL<float>::set(localTensor, row, col, cur);
			}
            return localTensor;
        }
        else
        {
			int i;
			for (i = 0; i < rows*cols; i++)
			{
				fread((void*)(&cur), sizeof(cur), 1, f);
			}
            cur_el++;
        }
    }
    fclose(f);
    fclose(l);
    return nullptr;
	//this function allocates memory for the return value. delete outside the function
}

Tensor<float>* loadTensor(preload idx)
{
	FILE* f;
	fopen_s(&f, "bin/MNLI_state.bin", "rb"); //
	FILE* l;
	fopen_s(&l, "bin/onelayer.txt", "r"); //text file that includes names of indicies

	char strname[256];
	int el_requested = (int)idx;

	int cur_el = 0;
	while (fgets(strname, sizeof(strname), l)) { //we must read the file in order
		if (strname[strlen(strname) - 1] == '\n')
		{
			strname[strlen(strname) - 1] = '\0'; //get rid of newline
		}
		int str_len;
		char str[256];
		int rows, cols;
		float cur;
		fread((void*)(&str_len), sizeof(str_len), 1, f);
		fread((void*)(&str), str_len, 1, f);
		str[str_len] = '\0'; //because I dont think its null terminated
		if (strncmp(strname, str, 256) != 0)
		{
			printf("verification failed");
			exit(1);
		}
		fread((void*)(&rows), sizeof(rows), 1, f);
		fread((void*)(&cols), sizeof(cols), 1, f);

		if (cur_el == el_requested)
		{
			Tensor<float>* localTensor = new Tensor<float>(rows, cols, 0.f);
			int i;
			for (i = 0; i < rows*cols; i++)
			{
				fread((void*)(&cur), sizeof(cur), 1, f);
				int row = i / cols; // we are on this row at any given point
				int col = i % cols;
				Tensor<float>::set(localTensor, row, col, cur);
			}
			return localTensor;
		}
		else
		{
			int i;
			for (i = 0; i < rows*cols; i++)
			{
				fread((void*)(&cur), sizeof(cur), 1, f); //we have to read the data
			} // but we cant assign it to anything or risk an out of bounds mem access
			cur_el++;
		}
	}
	fclose(f);
	fclose(l);
	return nullptr;
}

Tensor3dXL<float>* loadGeneric3dXL(const char* fname)
{
	FILE* f;
	fopen_s(&f, fname, "rb");
	int str_len;
	char str[256];
	int rows, cols, depth;
	float cur;
	fread((void*)(&str_len), sizeof(str_len), 1, f);
	fread((void*)(&str), str_len, 1, f);
	str[str_len] = '\0'; //because its not null terminated
	fread((void*)(&depth), sizeof(depth), 1, f);
	fread((void*)(&rows), sizeof(rows), 1, f);
	fread((void*)(&cols), sizeof(cols), 1, f);

	printf("%d %s (%d, %d, %d)\n", str_len, str, depth , rows, cols);

	Tensor3dXL<float>* localTensor = new Tensor3dXL<float>();
	Tensor3dXL<float>::setRows(localTensor, rows);
	Tensor3dXL<float>::setCols(localTensor, cols);
	int i;
	for (int d = 0; d < depth; d++)
	{
		//allocate memory
		TensorXL<float>* oneLayer = new TensorXL<float>(rows, cols, 0.f);
		for (i = 0; i < rows*cols; i++)
		{
			fread((void*)(&cur), sizeof(cur), 1, f);
			int row = i / cols; // we are on this row at any given point
			int col = i % cols;
			TensorXL<float>::set(oneLayer, row, col, cur);
		}
		Tensor3dXL<float>::append(localTensor, oneLayer);
	}

	fclose(f);
	return localTensor;
}

Tensor3d<float>* loadGeneric3d(const char* fname)
{
	FILE* f;
	fopen_s(&f, fname, "rb");
	int str_len;
	char str[256];
	int rows, cols, depth;
	float cur;
	fread((void*)(&str_len), sizeof(str_len), 1, f);
	fread((void*)(&str), str_len, 1, f);
	str[str_len] = '\0'; //because its not null terminated
	fread((void*)(&depth), sizeof(depth), 1, f);
	fread((void*)(&rows), sizeof(rows), 1, f);
	fread((void*)(&cols), sizeof(cols), 1, f);

	printf("%d %s (%d, %d, %d)\n", str_len, str, depth, rows, cols);

	Tensor3d<float>* localTensor = new Tensor3d<float>();
	Tensor3d<float>::setRows(localTensor, rows);
	Tensor3d<float>::setCols(localTensor, cols);
	int i;
	for (int d = 0; d < depth; d++)
	{
		//allocate memory
		Tensor<float>* oneLayer = new Tensor<float>(rows, cols, 0.f);
		for (i = 0; i < rows*cols; i++)
		{
			fread((void*)(&cur), sizeof(cur), 1, f);
			int row = i / cols; // we are on this row at any given point
			int col = i % cols;
			Tensor<float>::set(oneLayer, row, col, cur);
		}
		Tensor3d<float>::append(localTensor, oneLayer);
	}

	fclose(f);
	return localTensor;
}

TensorXL<float>* loadGeneric2d(const char* fname)
{
	FILE* f;
	fopen_s(&f, fname, "rb");
	int str_len;
	char str[256];
	int rows, cols;
	float cur;
	fread((void*)(&str_len), sizeof(str_len), 1, f);
	fread((void*)(&str), str_len, 1, f);
	str[str_len] = '\0'; //because its not null terminated
	fread((void*)(&rows), sizeof(rows), 1, f);
	fread((void*)(&cols), sizeof(cols), 1, f);

	printf("%d %s (%d, %d)\n", str_len, str, rows, cols);

	int i;
	//allocate memory
	TensorXL<float>* tensor2d = new TensorXL<float>(rows, cols, 0.f);
	for (i = 0; i < rows*cols; i++)
	{
		fread((void*)(&cur), sizeof(cur), 1, f);
		int row = i / cols; // we are on this row at any given point
		int col = i % cols;
		TensorXL<float>::set(tensor2d, row, col, cur);
	}

	fclose(f);
	return tensor2d;
}