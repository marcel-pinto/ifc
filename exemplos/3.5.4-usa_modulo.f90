PROGRAM usa_modulo
! Programa para demonstrar o uso de dados e functions em modulo

   USE operacoes_circulo
   IMPLICIT none
   REAL :: raio
   
   PRINT *, "Digite o raio do circulo"
   READ *, raio
   
! Use as functions de modulo circulo_area e circunferencia_circulo
   PRINT *
   PRINT *, "A area eh ", circulo_area(raio)
   PRINT *
   PRINT *, "A circunferencia eh ", circunferencia_circulo(raio)
   
! Temos acesso a dados globais no modulo tambem
   PRINT *
   PRINT *, "Pi = ", pi
   PRINT *, "Functions foram chamadas ", numero_de_chamadas, " vezes"
   
END PROGRAM usa_modulo
