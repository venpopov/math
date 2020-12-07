! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.0
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module fsundials_matrix_mod
 use, intrinsic :: ISO_C_BINDING
 use fsundials_types_mod
 use fsundials_nvector_mod
 use fsundials_types_mod
 implicit none
 private

 ! DECLARATION CONSTRUCTS
 ! typedef enum SUNMatrix_ID
 enum, bind(c)
  enumerator :: SUNMATRIX_DENSE
  enumerator :: SUNMATRIX_BAND
  enumerator :: SUNMATRIX_SPARSE
  enumerator :: SUNMATRIX_SLUNRLOC
  enumerator :: SUNMATRIX_CUSPARSE
  enumerator :: SUNMATRIX_CUSTOM
 end enum
 integer, parameter, public :: SUNMatrix_ID = kind(SUNMATRIX_DENSE)
 public :: SUNMATRIX_DENSE, SUNMATRIX_BAND, SUNMATRIX_SPARSE, SUNMATRIX_SLUNRLOC, SUNMATRIX_CUSPARSE, SUNMATRIX_CUSTOM
 ! struct struct _generic_SUNMatrix_Ops
 type, bind(C), public :: SUNMatrix_Ops
  type(C_FUNPTR), public :: getid
  type(C_FUNPTR), public :: clone
  type(C_FUNPTR), public :: destroy
  type(C_FUNPTR), public :: zero
  type(C_FUNPTR), public :: copy
  type(C_FUNPTR), public :: scaleadd
  type(C_FUNPTR), public :: scaleaddi
  type(C_FUNPTR), public :: matvecsetup
  type(C_FUNPTR), public :: matvec
  type(C_FUNPTR), public :: space
 end type SUNMatrix_Ops
 ! struct struct _generic_SUNMatrix
 type, bind(C), public :: SUNMatrix
  type(C_PTR), public :: content
  type(C_PTR), public :: ops
 end type SUNMatrix
 public :: FSUNMatNewEmpty
 public :: FSUNMatFreeEmpty
 public :: FSUNMatCopyOps
 public :: FSUNMatGetID
 public :: FSUNMatClone
 public :: FSUNMatDestroy
 public :: FSUNMatZero
 public :: FSUNMatCopy
 public :: FSUNMatScaleAdd
 public :: FSUNMatScaleAddI
 public :: FSUNMatMatvecSetup
 public :: FSUNMatMatvec
 public :: FSUNMatSpace
 integer(C_INT), parameter, public :: SUNMAT_SUCCESS = 0_C_INT
 integer(C_INT), parameter, public :: SUNMAT_ILL_INPUT = -701_C_INT
 integer(C_INT), parameter, public :: SUNMAT_MEM_FAIL = -702_C_INT
 integer(C_INT), parameter, public :: SUNMAT_OPERATION_FAIL = -703_C_INT
 integer(C_INT), parameter, public :: SUNMAT_MATVEC_SETUP_REQUIRED = -704_C_INT

! WRAPPER DECLARATIONS
interface
function swigc_FSUNMatNewEmpty() &
bind(C, name="_wrap_FSUNMatNewEmpty") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR) :: fresult
end function

subroutine swigc_FSUNMatFreeEmpty(farg1) &
bind(C, name="_wrap_FSUNMatFreeEmpty")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
end subroutine

function swigc_FSUNMatCopyOps(farg1, farg2) &
bind(C, name="_wrap_FSUNMatCopyOps") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
integer(C_INT) :: fresult
end function

function swigc_FSUNMatGetID(farg1) &
bind(C, name="_wrap_FSUNMatGetID") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
integer(C_INT) :: fresult
end function

function swigc_FSUNMatClone(farg1) &
bind(C, name="_wrap_FSUNMatClone") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR) :: fresult
end function

subroutine swigc_FSUNMatDestroy(farg1) &
bind(C, name="_wrap_FSUNMatDestroy")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
end subroutine

function swigc_FSUNMatZero(farg1) &
bind(C, name="_wrap_FSUNMatZero") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
integer(C_INT) :: fresult
end function

function swigc_FSUNMatCopy(farg1, farg2) &
bind(C, name="_wrap_FSUNMatCopy") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
integer(C_INT) :: fresult
end function

function swigc_FSUNMatScaleAdd(farg1, farg2, farg3) &
bind(C, name="_wrap_FSUNMatScaleAdd") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE), intent(in) :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
integer(C_INT) :: fresult
end function

function swigc_FSUNMatScaleAddI(farg1, farg2) &
bind(C, name="_wrap_FSUNMatScaleAddI") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE), intent(in) :: farg1
type(C_PTR), value :: farg2
integer(C_INT) :: fresult
end function

function swigc_FSUNMatMatvecSetup(farg1) &
bind(C, name="_wrap_FSUNMatMatvecSetup") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
integer(C_INT) :: fresult
end function

function swigc_FSUNMatMatvec(farg1, farg2, farg3) &
bind(C, name="_wrap_FSUNMatMatvec") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
integer(C_INT) :: fresult
end function

function swigc_FSUNMatSpace(farg1, farg2, farg3) &
bind(C, name="_wrap_FSUNMatSpace") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
integer(C_INT) :: fresult
end function

end interface


contains
 ! MODULE SUBPROGRAMS
function FSUNMatNewEmpty() &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
type(SUNMatrix), pointer :: swig_result
type(C_PTR) :: fresult 

fresult = swigc_FSUNMatNewEmpty()
call c_f_pointer(fresult, swig_result)
end function

subroutine FSUNMatFreeEmpty(a)
use, intrinsic :: ISO_C_BINDING
type(SUNMatrix), target, intent(inout) :: a
type(C_PTR) :: farg1 

farg1 = c_loc(a)
call swigc_FSUNMatFreeEmpty(farg1)
end subroutine

function FSUNMatCopyOps(a, b) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
type(SUNMatrix), target, intent(inout) :: a
type(SUNMatrix), target, intent(inout) :: b
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 

farg1 = c_loc(a)
farg2 = c_loc(b)
fresult = swigc_FSUNMatCopyOps(farg1, farg2)
swig_result = fresult
end function

function FSUNMatGetID(a) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(SUNMatrix_ID) :: swig_result
type(SUNMatrix), target, intent(inout) :: a
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 

farg1 = c_loc(a)
fresult = swigc_FSUNMatGetID(farg1)
swig_result = fresult
end function

function FSUNMatClone(a) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
type(SUNMatrix), pointer :: swig_result
type(SUNMatrix), target, intent(inout) :: a
type(C_PTR) :: fresult 
type(C_PTR) :: farg1 

farg1 = c_loc(a)
fresult = swigc_FSUNMatClone(farg1)
call c_f_pointer(fresult, swig_result)
end function

subroutine FSUNMatDestroy(a)
use, intrinsic :: ISO_C_BINDING
type(SUNMatrix), target, intent(inout) :: a
type(C_PTR) :: farg1 

farg1 = c_loc(a)
call swigc_FSUNMatDestroy(farg1)
end subroutine

function FSUNMatZero(a) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
type(SUNMatrix), target, intent(inout) :: a
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 

farg1 = c_loc(a)
fresult = swigc_FSUNMatZero(farg1)
swig_result = fresult
end function

function FSUNMatCopy(a, b) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
type(SUNMatrix), target, intent(inout) :: a
type(SUNMatrix), target, intent(inout) :: b
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 

farg1 = c_loc(a)
farg2 = c_loc(b)
fresult = swigc_FSUNMatCopy(farg1, farg2)
swig_result = fresult
end function

function FSUNMatScaleAdd(c, a, b) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
real(C_DOUBLE), intent(in) :: c
type(SUNMatrix), target, intent(inout) :: a
type(SUNMatrix), target, intent(inout) :: b
integer(C_INT) :: fresult 
real(C_DOUBLE) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 

farg1 = c
farg2 = c_loc(a)
farg3 = c_loc(b)
fresult = swigc_FSUNMatScaleAdd(farg1, farg2, farg3)
swig_result = fresult
end function

function FSUNMatScaleAddI(c, a) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
real(C_DOUBLE), intent(in) :: c
type(SUNMatrix), target, intent(inout) :: a
integer(C_INT) :: fresult 
real(C_DOUBLE) :: farg1 
type(C_PTR) :: farg2 

farg1 = c
farg2 = c_loc(a)
fresult = swigc_FSUNMatScaleAddI(farg1, farg2)
swig_result = fresult
end function

function FSUNMatMatvecSetup(a) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
type(SUNMatrix), target, intent(inout) :: a
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 

farg1 = c_loc(a)
fresult = swigc_FSUNMatMatvecSetup(farg1)
swig_result = fresult
end function

function FSUNMatMatvec(a, x, y) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
type(SUNMatrix), target, intent(inout) :: a
type(N_Vector), target, intent(inout) :: x
type(N_Vector), target, intent(inout) :: y
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 

farg1 = c_loc(a)
farg2 = c_loc(x)
farg3 = c_loc(y)
fresult = swigc_FSUNMatMatvec(farg1, farg2, farg3)
swig_result = fresult
end function

function FSUNMatSpace(a, lenrw, leniw) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
type(SUNMatrix), target, intent(inout) :: a
integer(C_LONG), dimension(*), target, intent(inout) :: lenrw
integer(C_LONG), dimension(*), target, intent(inout) :: leniw
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 

farg1 = c_loc(a)
farg2 = c_loc(lenrw(1))
farg3 = c_loc(leniw(1))
fresult = swigc_FSUNMatSpace(farg1, farg2, farg3)
swig_result = fresult
end function


end module
