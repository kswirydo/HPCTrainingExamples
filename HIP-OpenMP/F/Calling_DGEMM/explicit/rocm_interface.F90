! Copyright AMD 2024-2025, MIT License, contact Bob.Robey@amd.com
module rocm_interface
    interface
        subroutine init_rocblas(handle) bind(C)
            use iso_c_binding, only : c_ptr
            implicit none
            type(c_ptr)        :: handle
        end subroutine init_rocblas
        subroutine omp_dgemm(handle,ma,mb,m,n,k,alpha, &
            a,lda,b,ldb,beta,c,ldc) bind(C)
            use iso_c_binding, only : c_ptr, c_int, c_double
            implicit none
            type(c_ptr),value  :: a,b,c
            type(c_ptr)        :: handle
            integer(c_int)     :: ma,mb,m,n,k,lda,ldb,ldc
            real(c_double)     :: alpha,beta
        end subroutine omp_dgemm
    end interface
end module rocm_interface
