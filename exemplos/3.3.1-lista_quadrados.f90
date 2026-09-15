PROGRAM lista_quadrados
! Exemplos de arrays e lacos DO

   IMPLICIT none
   INTEGER :: numero
   INTEGER, PARAMETER :: tamanho = 20
   INTEGER :: quadrados(tamanho)
   
! Armazena os primeiros "tamanho" quadrados
   DO numero = 1, tamanho
      quadrados(numero) = numero ** 2
   END DO

! Imprima a lista de quadrados
   PRINT *, "Os primeiros 20 quadrados sao: ", quadrados
   
END PROGRAM lista_quadrados
