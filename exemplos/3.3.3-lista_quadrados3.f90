PROGRAM lista_quadrados3
! Exemplo de arrays e DO loops introduzindo o bloco if

   IMPLICIT none
   INTEGER, PARAMETER :: maximo_permitido = 20
   INTEGER :: quadrados(maximo_permitido)
   INTEGER :: numero, quantidade_numeros
   
! Ache quantos quadrados sao requeridos
   PRINT *, "Quantos quadrados voce quer?"
   READ *, quantidade_numeros
   
! Verifique se esta dentro do limite permitido

   IF(quantidade_numeros > maximo_permitido) THEN
      PRINT *
      PRINT *, "Isto eh demais. O maximo permitido eh ", &
                                          maximo_permitido
   ELSE
! Quantidade_numeros esta OK entao armazene os quadrados
   DO numero = 1, quantidade_numeros
      quadrados(numero) = numero ** 2
   END DO

! Imprima a lista dos quadrados
   PRINT *
   PRINT *, "Os primeiros ", quantidade_numeros, " quadrados sao: ",&
                  (quadrados(numero), numero = 1, quantidade_numeros)
! ou               quadrados(1:quantidade_numeros)
   END IF
END PROGRAM lista_quadrados3
