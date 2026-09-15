PROGRAM aritmetica_basica
! Exemplos de aritmetica basica

   IMPLICIT none
   INTEGER :: primeiraparte, segundaparte, soma, diferenca
   INTEGER :: i_numerador, i_denominador, i_quociente, numero
   REAL :: largura, comprimento, area, numerador, denominador, &
                                                       quociente
   
! Adicao
   primeiraparte = 23
   segundaparte = 19
   soma = primeiraparte + segundaparte
   PRINT *, "A soma de ", primeiraparte, " e ", segundaparte, " eh "&
                                                               , soma

! Subtracao
   diferenca = primeiraparte - segundaparte
   PRINT *
   PRINT *, primeiraparte, " menos ", segundaparte, " eh ", diferenca
   
! Multiplicacao
   largura = 2.3
   comprimento = 5.47
   area = largura * comprimento
   PRINT *
   PRINT *, "A area do retangulo com largura ", largura, " e &
                      &comprimento", comprimento, " eh ", area
                      
! Divisao
   numerador = 22.0
   denominador = 7.0
   quociente = numerador / denominador
   PRINT *
   PRINT *, "A divisao de ", numerador, " por ", denominador, " da "&
                                                          , quociente
                                                            
! Divisao INTEGER
   i_numerador = 5
   i_denominador = 3
   i_quociente = i_numerador / i_denominador
   PRINT *
   PRINT *, "A divisao inteira de ", i_numerador, " por ", &
                          i_denominador, " da ", i_quociente
                          
! Exponenciacao
   numero = 7
   PRINT *
   PRINT *, numero, " ao cubo eh ", numero**3
   
! Cuidado
   PRINT *
   PRINT *, numero, " elevado a -3 eh ", numero**(-3)
END PROGRAM aritmetica_basica
