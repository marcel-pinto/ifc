PROGRAM cubo_quarta
! Programa para calcular o cubo e a quarta potencia

! Declaracoes
   IMPLICIT none 
   INTEGER :: numero, numero_cubo, numero_quarta

! Comandos executaveis
   PRINT *, "Bem vindo ao programa do cubo e da quarta potencia"
   PRINT *,
   PRINT *, "Digite um numero inteiro e tecle Enter:"
   READ *, numero
   numero_cubo = numero ** 3
   numero_quarta = numero_cubo * numero
   PRINT *, numero, " ao cubo eh ", numero_cubo, " e sua quarta &
                                    &potencia eh ", numero_quarta
END PROGRAM cubo_quarta
