PROGRAM triangulos
! Programa para identificar o triangulo atraves dos comprimentos de
! lado informado pelo usuario.

   IMPLICIT none
   INTEGER, PARAMETER :: quantidade_lados = 3
   INTEGER :: comprimento(quantidade_lados) 
   INTEGER :: i, j, lados_iguais = 0

   DO i = 1, quantidade_lados
      IF ( i <= quantidade_lados) THEN
         PRINT *, "Digite o comprimento do ", i,"º", " lado do &
                                                    & triangulo" 
         READ *, comprimento(i)
      END IF
   END DO      
     
! Uma vez verificado que os lados sao validos (nao negativos),
! verificamos se os lados formam um triangulo
   IF (2 * maxval( comprimento ) >= sum(comprimento)) THEN
      PRINT *, "Estes comprimentos nao formam um triangulo"

! Uma vez verificado que se trata de um triangulo, verificamos o tipo
! de triangulo
   ELSE
      DO i = 1, quantidade_lados
         DO j = 1, quantidade_lados
               IF ( comprimento(i) == comprimento(j) ) THEN
                  lados_iguais = lados_iguais + 1
            END IF
         END DO
      END DO
      IF ( lados_iguais - quantidade_lados == 0 ) THEN
         PRINT *, "Este triangulo eh escaleno"
      ELSE
         IF ( lados_iguais - quantidade_lados == 2 ) THEN
            PRINT *, "Este triangulo eh isosceles"
         ELSE        
            PRINT *, "Este triangulo eh equilatero"
         END IF
      END IF 
   END IF
END PROGRAM triangulos
