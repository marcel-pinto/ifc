PROGRAM lista_quadrados2
! Exemplo de arrays e lacos do usando limite variavel do limite do
! loop e lista com Do-implicito na impressao.

   IMPLICIT none
   INTEGER, PARAMETER :: tamanho = 20
   INTEGER :: quadrados(tamanho)
   INTEGER :: numero, quantidade_numeros
   
! Encontre quantos quadrados sao necessarios
   PRINT *, "Quantos quadrados voce quer?"
   READ *, quantidade_numeros
   
! Armazena os quadrados
   DO numero = 1, quantidade_numeros
      quadrados(numero) = numero ** 2
   END DO
   
! Imprima a lista de quadrados
   PRINT *
   PRINT *, "Os primeiros ", quantidade_numeros, " quadrados sao: ", &
                     (quadrados(numero), numero=1, quantidade_numeros)
! ou                 quadrados(1:quantidade_numeros)
END PROGRAM lista_quadrados2
