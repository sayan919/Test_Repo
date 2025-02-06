program test
    implicit none
    real(8), dimension(3,3) :: A
    real(8), dimension(3) :: b, x, ipiv
    integer :: info, i

    print*,"Hello!"
    ! call random_number(a)
    ! call random_number(b)
    ! call dgesv(3, 1, a, 3, ipiv, x, 3, info)
    A=transpose(reshape([3.0, 2.0, -1.0, 2.0, -2.0, 4.0, -1.0, 0.5, -1.0], [3,3]))
    b=[1.0, -2.0, 0.0]
    call dgesv(3, 1, A, 3, ipiv, b, 3, info)
    x=b
    do i=1,3
        write (*,*) x(i)
    enddo

    ! do i=1,3
    !     write (*,*) b(i)
    ! enddo
end program test