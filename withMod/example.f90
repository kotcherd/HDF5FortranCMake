     module example

     USE HDF5 ! This module contains all necessary modules 
        
     IMPLICIT NONE

     CHARACTER(LEN=8), PARAMETER :: filename = "filef.h5" ! File name
     INTEGER(HID_T) :: file_id                            ! File identifier
 
     INTEGER     ::   error  ! Error flag
     
contains

     subroutine doDeet()
!
!    Initialize FORTRAN interface.
!
     print *, "do h5open"
     CALL h5open_f (error)
     !
     ! Create a new file using default properties.
     ! 
     print *, "do h5create"
     CALL h5fcreate_f(filename, H5F_ACC_TRUNC_F, file_id, error)

     !
     ! Terminate access to the file.
     !
     print *, 'do h5fclose'
     CALL h5fclose_f(file_id, error)
!
!    Close FORTRAN interface.
!
     print *, 'do h5close'
     CALL h5close_f(error)

end subroutine doDeet
     END module example

