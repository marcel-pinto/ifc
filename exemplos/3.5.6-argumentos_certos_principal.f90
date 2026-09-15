PROGRAM argumentos_certos_principal
! Programa que demonstra a verificacao de argumento quando se chama
! sub-programas em um modulo

   USE impressao
   IMPLICIT none
   REAL :: numero_real
   INTEGER :: numero_inteiro
   
   numero_real = 42.0
   numero_inteiro = 42
   
   CALL imprime_numeros(numero_real,numero_inteiro)
   
END PROGRAM argumentos_certos_principal
