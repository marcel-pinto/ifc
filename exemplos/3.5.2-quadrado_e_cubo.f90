! Modulo contendo uma sub-rotina
MODULE subrotina_2_3

CONTAINS

! Subprograma do modulo
! Inicio da definicao da sub-rotina
   SUBROUTINE quadrado_e_cubo(num,num_quadrado,num_cubo)
      IMPLICIT none
      INTEGER, intent(in) :: num
      INTEGER, intent(out) :: num_quadrado, num_cubo
      
      num_quadrado = num*num
      num_cubo = num_quadrado*num
   END SUBROUTINE quadrado_e_cubo
END MODULE subrotina_2_3

PROGRAM exemplo_subrotina
! Programa para demonstrar um exemplo de subrotina
   USE subrotina_2_3
   
   IMPLICIT none
   INTEGER :: numero_inteiro, quadrado, cubo
   PRINT *, "Digite um numero inteiro e tecle ENTER"
   READ *, numero_inteiro
   
   CALL quadrado_e_cubo(numero_inteiro,quadrado,cubo)
   
   PRINT *,
   PRINT *, numero_inteiro, " ao quadrado eh", quadrado
   PRINT *,
   PRINT *, numero_inteiro, " ao cubo eh ", cubo
   
! Fim do programa principal
END PROGRAM exemplo_subrotina
