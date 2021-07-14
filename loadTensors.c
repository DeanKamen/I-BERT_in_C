#include <stdio.h>
#include <cstring>
#include <stdlib.h>
#include "tensors.h"
/*
The file structure is as follows
256 Chars that denote the Tensor name
1 int for num rows, 1 int for num cols
numrows*numcols floats following that.
Then onto the next array
*/
int main()
{
    FILE* f;
    fopen_s(&f, "bin/MNLI_state.bin", "rb"); //
    FILE* l;
    fopen_s(&l, "bin/onelayer.txt", "r"); //text file that includes names of indicies
    FILE* w;
    fopen_s(&w, "bin/MNLI_tensors.bin", "wb"); //bin file to write the structs to

    char strname[256];
    while (fgets(strname, sizeof(strname), l)) {
        if(strname[ strlen(strname) - 1 ] == '\n')
        {
            strname[ strlen(strname) - 1 ] = '\0'; //get rid of newline
        }
        Tensor<float>* = new 
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

        int i;
        for(i=0; i < rows*cols; i++)
        {
            fread((void*)(&cur), sizeof(cur), 1, f);
            if(i==0)
            {
                printf("%f\n", cur);
            }
        }
        
    }
    fclose(f);
    fclose(l);
    return 0;
}