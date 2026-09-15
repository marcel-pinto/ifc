! Modulo contendo dados e functions globais 
MODULE operacoes_circulo

! Dados globais
   REAL, PARAMETER :: pi = 3.14159
   INTEGER :: numero_de_chamadas
   
CONTAINS

! Sub-programas do modulo
   REAL FUNCTION circulo_area(r)
   
      IMPLICIT none
      REAL, intent(in) :: r
      
      IF (r>0.0) THEN
         circulo_area = pi*r**2
      ELSE
         circulo_area = 0.0
      END IF
      
      numero_de_chamadas = numero_de_chamadas + 1
      
   END FUNCTION circulo_area
   
   REAL FUNCTION circunferencia_circulo(r)
   
      IMPLICIT none
      REAL, intent(in) :: r
      
      IF (r>0.0) THEN
         circunferencia_circulo = 2.0*pi*r
      ELSE
         circunferencia_circulo = 0.0
      END IF
      numero_de_chamadas = numero_de_chamadas + 1
   
   END FUNCTION circunferencia_circulo
   
END MODULE operacoes_circulo
