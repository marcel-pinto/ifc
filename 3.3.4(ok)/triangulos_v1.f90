PROGRAM triangulos
! Programa para identificar o triangulo atraves dos comprimentos de
! lado informado pelo usuario.

   IMPLICIT none
   INTEGER :: comp1, comp2, comp3
   
   PRINT *, "Por favor digite o primeiro comprimento e tecle ENTER"
   READ *, comp1
   IF ( comp1 < 0 ) THEN
      PRINT *, "Nao eh um comprimento valido"
   ELSE
      PRINT *, "Digite agora o segundo comprimento"
      READ *, comp2
      IF ( comp2 < 0 ) THEN
         PRINT *, "Nao eh um comprimento valido"
      ELSE
         PRINT *, "Digite o terceiro comprimento"
         READ *, comp3
         IF ( comp3 < 0 ) THEN
            PRINT *, "Nao eh um comprimento valido"
         ELSE

! Uma vez verificado que os lados sao validos (nao negativos),
! verificamos se os lados formam um triangulo
            IF (2 * max( comp1, comp2, comp3 ) >= comp1 + comp2&
                                                   + comp3) THEN
               PRINT *, "Estes comprimentos nao formam um triangulo"

! Uma vez verificado que se trata de um triangulo, verificamos o tipo
! de triangulo
            ELSE
               IF ( comp1 == comp2 ) THEN
                  IF ( comp2 == comp3 ) THEN
                     PRINT *, "Este triangulo eh equilatero"
                  ELSE
                     PRINT *, "Este triangulo eh isosceles"
                  END IF
               ELSE 
                  IF ( comp2 /= comp3 ) THEN
                     PRINT *, "Este triangulo eh escaleno"
                  ELSE
                  END IF
               END IF
            END IF
         END IF
      END IF
   END IF
END PROGRAM triangulos
