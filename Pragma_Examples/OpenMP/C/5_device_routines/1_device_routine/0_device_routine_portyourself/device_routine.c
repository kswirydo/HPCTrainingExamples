// Copyright (c) 2025 AMD HPC Application Performance Team
// Author: Bob Robey, Bob.Robey@amd.com
// MIT License

#include <stdlib.h>
#include <stdio.h>

void compute(double *x);

int main(int argc, char *argv[]){
   int N=1000;
   double *x = (double *)malloc(N*sizeof(double));
   for (int k = 0; k < N; k++){
      x[k] = 0.0;
   }

   for (int k = 0; k < N; k++){
      compute(&x[k]);
   }

   double sum = 0.0;
   for (int k = 0; k < N; k++){
      sum += x[k];
   }

   printf("Result: sum of x is %lf\n",sum);

   free(x);
}
