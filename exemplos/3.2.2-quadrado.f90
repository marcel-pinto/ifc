PROGRAM quadrado
! Programa para calcular quadrados

! Declaracoes
   IMPLICIT none
   INTEGER :: numero, numero_quadrado
   
! Comandos executaveis
   PRINT *, "Bem-vindo ao programa quadrado."
   PRINT *
   PRINT *, "Digite um numero inteiro e tecle ENTER:"
   READ *, numero
   numero_quadrado = numero*numero
   PRINT *, numero, " ao quadrado eh ", numero_quadrado
   
END PROGRAM quadrado
