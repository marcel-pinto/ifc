PROGRAM triangulos
! Programa para identificar o triangulo atraves dos comprimentos de
! lado informado pelo usuario.

   IMPLICIT none
   INTEGER, PARAMETER :: quantidade_lados = 3
   INTEGER :: comprimento(quantidade_lados) 
   INTEGER :: i, j, lados_iguais = 0, n = 0
   LOGICAL :: lido
   
   DO
      lido = .true.
      n = n + 1
      IF ( n <= quantidade_lados) THEN
         PRINT *, "Digite o comprimento do ", n,"º", " lado do &
                                                    & triangulo" 
         READ *, comprimento(n)
         lido = .false.
      END IF
         IF ( lido ) EXIT
   END DO      
     
! Uma vez verificado que os lados sao validos (nao negativos),
! verificamos se os lados formam um triangulo
   IF (2 * maxval( comprimento ) >= sum(comprimento)) THEN
      PRINT *, "Estes comprimentos nao formam um triangulo"

! Uma vez verificado que se trata de um triangulo, verificamos o tipo
! de triangulo
   ELSE
      DO i = 1,quantidade_lados, 2
         DO j = quantidade_lados,2,-1
               IF ( comprimento(i) == comprimento(j) ) THEN
                  lados_iguais = lados_iguais + 1
            END IF
         END DO
      END DO
      IF ( lados_iguais == 1 ) THEN
         PRINT *, "Este triangulo eh escaleno"
      END IF
      IF ( lados_iguais == 2 ) THEN
         PRINT *, "Este triangulo eh isosceles"
      END IF
      IF ( lados_iguais == 4 ) THEN
         PRINT *, "Este triangulo eh equilatero"
      END IF 
      END IF
END PROGRAM triangulos
