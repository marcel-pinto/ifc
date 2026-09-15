PROGRAM triangulos
! Programa para identificar o triangulo atraves dos comprimentos de
! lado informado pelo usuario.

   IMPLICIT none
   INTEGER, PARAMETER :: quantidade_lados = 3
   INTEGER :: comprimento(quantidade_lados)
   INTEGER :: i, j, lados_iguais = 0
   
   PRINT *, "Por favor digite o primeiro comprimento e tecle ENTER"
   READ *, comprimento(1)
   IF ( comprimento(1) < 0 ) THEN
      PRINT *, "Nao eh um comprimento valido"
   ELSE
      PRINT *, "Digite agora o segundo comprimento"
      READ *, comprimento(2)
      IF ( comprimento(2) < 0 ) THEN
         PRINT *, "Nao eh um comprimento valido"
      ELSE
         PRINT *, "Digite o terceiro comprimento"
         READ *, comprimento(3)
         IF ( comprimento(3) < 0 ) THEN
            PRINT *, "Nao eh um comprimento valido"
         ELSE

! Uma vez verificado que os lados sao validos (nao negativos),
! verificamos se os lados formam um triangulo
            IF (2 * maxval( comprimento ) >= comprimento(1) + &
                          comprimento(2) + comprimento(3)) THEN
               PRINT *, "Estes comprimentos nao formam um triangulo"

! Uma vez verificado que se trata de um triangulo, verificamos o tipo
! de triangulo
            ELSE
               DO i = 1,2
                  DO j = 2,3
                     IF ( i /= j ) THEN
                        IF ( comprimento(i) == comprimento(j) ) THEN
                           lados_iguais = lados_iguais + 1
                        END IF
                     END IF
                  END DO
               END DO
               IF ( lados_iguais == 0 ) THEN
                  PRINT *, "Este triangulo eh escaleno"
               END IF
               IF ( lados_iguais == 1 ) THEN
                  PRINT *, "Este triangulo eh isosceles"
               END IF
               IF ( lados_iguais == 3 ) THEN
                  PRINT *, "Este triangulo eh equilatero"
               END IF 
            END IF
         END IF
      END IF
   END IF
END PROGRAM triangulos
