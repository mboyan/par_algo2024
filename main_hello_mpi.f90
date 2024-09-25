program hello_mpi
    use mpi
    implicit none
    integer :: ierr, rank, size

    ! Initialize MPI
    call MPI_Init(ierr)
    call MPI_Comm_rank(MPI_COMM_WORLD, rank, ierr)
    call MPI_Comm_size(MPI_COMM_WORLD, size, ierr)

    ! Print messages
    print *, 'Hello from rank', rank, 'out of', size
    call MPI_Barrier(MPI_COMM_WORLD, ierr)
    print *, 'Goodbye from rank', rank, 'out of', size

    ! Finalize MPI
    call MPI_Finalize(ierr)
end program hello_mpi