#ifndef CUDA_H
#define CUDA_H

#include "darknet.h"

#ifdef GPU
//2020 0311 doyoung  cudaMallocHost use
void cuda_malloc_int_host(float * x_host, size_t size, int line);
void cuda_malloc_float_host(float * x_host, size_t size, int line);

void check_error(cudaError_t status);
//2020 0311 doyoung error line
void check_error_line(cudaError_t status, int line);
cublasHandle_t blas_handle();
int *cuda_make_int_array(int *x, size_t n);
void cuda_random(float *x_gpu, size_t n);
float cuda_compare(float *x_gpu, float *x, size_t n, char *s);
dim3 cuda_gridsize(size_t n);

#ifdef CUDNN
cudnnHandle_t cudnn_handle(int id, int line);
void cuda_syncronize(int id, int line);
#endif

#endif
#endif
