PROGRAM intrinsecas
! Exemplos de funcoes intrinsecas

   IMPLICIT none
   INTEGER :: i_grande, i_pequeno
   REAL :: angulo_em_radianos, quadrado, grande, pequeno
   REAL, PARAMETER :: pi = 3.14159265
   
! sqrt() dah a raiz quadrada de um numero
   quadrado = 64.0
   PRINT *, "A raiz quadrada de ", quadrado, " eh ", sqrt(quadrado)
   
! sin() dah o seno de um angulo em radianos
   angulo_em_radianos = pi/ 6.0
   PRINT *
   PRINT *, "O seno de pi/6 radianos eh ", sin(angulo_em_radianos)
   
! max() dah o valor maximo de uma lista de numeros
   grande = 98.4
   pequeno = 32.0
   PRINT *
   PRINT *, "O maior entre ", grande, " e ", pequeno, " eh ", &
                                            max(grande,pequeno)

! min() dah o valor minimo de uma lista de numeros
   i_grande = 999
   i_pequeno = 7
   PRINT *
   PRINT *, "O menor entre ", i_grande, " e ", i_pequeno, " eh ", &
                                            min(i_grande,i_pequeno)

END PROGRAM intrinsecas
