MODULE impressao

CONTAINS

   SUBROUTINE imprime_numeros(r,i)
   
      IMPLICIT none
      REAL, intent(in) :: r
      INTEGER, intent(in) :: i
      
      PRINT *, "O numero real eh ", r
      PRINT *, "O numero inteiro eh ", i

   END SUBROUTINE imprime_numeros
   
END MODULE impressao
