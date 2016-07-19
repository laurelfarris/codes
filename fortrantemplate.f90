! Compiling:
! cl> f95 -o executable_name program_name.f90
! -o option lets you decide what the name of the executable is...
!    in this case, 'executable_name'. Without this option, default is
!    a.out
! -c options just compiles; creates program_name.o


PROGRAM program_name

!-------------------------------------------------------------------------------!
!Variables
implicit none !This will generate an error if an undefined variable is
              !  used

! syntax: f> TYPE :: variable [=value] ! Can be initialized, or not
real :: y=1.2
integer :: x=1
character(20) :: mystring="hello world!"
    !have to specify length for character types.
    ! Can this exceed the length of the actual variable?

!-------------------------------------------------------------------------------!
!Line continuation
B_T = (2.*nu^3/(c**2.)) * &
        (1./(exp(h*nu/(k*T))-1))

!-------------------------------------------------------------------------------!
!Arrays
real arr(2,3)  ! 2x3 array of type 'real'

!-------------------------------------------------------------------------------!
!dynamic memory allocation
    !"allocate, deallocate, 
    ! after giving variable allocatable attribute"...uh, what?


!-------------------------------------------------------------------------------!
!structures
! (derived data types)
 type mytype
  character(12):: cval="..."
  real :: rval=0.
  end type mytype
 type (mytype) :: var
 var%name='test'
 var%ra=1.

!-------------------------------------------------------------------------------!
!structure arrays
type(mytype),
dimension=nelem :: var

!-------------------------------------------------------------------------------!
!operators:         +,-,*,/,**
!bitwise operators: and, or, xor not
!string operators:  //,len,str(i1:i2)
!matrix operations: dot_products(a,b), matmul(a,b)
!-------------------------------------------------------------------------------!
!conditionals:      if (condition) then
!                       statements
!                   else
!                       statements
!                   end if
! OR (single line)
!                   if (condition) statements 
!-------------------------------------------------------------------------------!
!conditions (logical operators)
.eq. (==)
.ne. (/=)
.gt. (>)
.ge. (>=)
.lt. (<)
.le. (<=)
.and.
.or.

!-------------------------------------------------------------------------------!
!looping
do i=start,end,increment
    statements
end do

!looping with condition
do while (condition)
    statements
end do


!-------------------------------------------------------------------------------!
!Simple output
print *, 'hello world'   ! ".." vs. '..'  ???
print *, string, variable

!Formatted output
CHARACTER :: FORMAT='i8,f8.2)'
PRINT FORMAT, i, f,
formats: in, fn.n, an, nx  !aka type(i-int, f-float, a-character)
                           ! followed by n(#spaces format applies to).

!simple reading from terminal and file
terminal: READ*, var
file: OPEN(lun, FILE=file)
IERR=0
DO WHILE (IERR == 0)
    READ(lun, format, IOSTAT=ierr) var
    PRINT*, line
CLOSE(lun)

!higher level file reading routines


END


