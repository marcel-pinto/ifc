! Modulo contendo dados e functions globais
MODULE funcao_area

CONTAINS

! Sub-programa do modulo
! Definicao da funcao

! Exemplo de uma FUNCTION definida pelo usuario
   REAL FUNCTION circulo_area (r)
! Calcula a area de um circulo dado seu raio
      IMPLICIT none
! Parametro formal
      REAL, intent(in) :: r
! Declaracoes locais
      REAL, PARAMETER :: pi = 3.14159
   
      circulo_area = pi * r**2
   END FUNCTION circulo_area
END MODULE funcao_area

PROGRAM area_circulo
! Programa principal para calcular a area de um circulo dado seu raio

   USE funcao_area
   IMPLICIT none
   REAL :: raio
   
   PRINT *, "Digite o raio do circulo"
   READ *, raio
! Verificar a validade
   IF(raio >= 0.0) then
      PRINT *
      PRINT *, "A area eh ", circulo_area(raio)
   ELSE
      PRINT *
      PRINT *, raio, "eh invalido."
   END IF
!   PRINT *
!   PRINT *, "A area eh ", circulo_area(raio)
! Fim do programa principal
END PROGRAM area_circulo
