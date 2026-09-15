PROGRAM triangulos
! Programa para identificar o triangulo atraves dos comprimentos de
! lado informado pelo usuario.

   IMPLICIT none
   INTEGER, PARAMETER :: quantidade_lados = 3
   INTEGER :: comprimento(quantidade_lados) 
   INTEGER :: i, j, lados_iguais = 0

   PRINT *, "Digite os comprimentos do triangulo e tecle ENTER:"
! Iteracao para fazer a leitura de cada lado quando digitado no
! terminal
   READ *, comprimento     
     
! Verificacao para saber se os comprimentos digitados formam um
! triangulo
   IF (2 * maxval( comprimento ) >= sum(comprimento)) THEN
      PRINT *, "Estes comprimentos nao formam um triangulo"

! Uma vez verificado que se trata de um triangulo, verificamos o tipo
! de triangulo
   ELSE
      DO i = 1, quantidade_lados - 1  
         DO j =  i + 1, quantidade_lados
            IF ( comprimento(i) == comprimento(j) ) THEN
               lados_iguais = lados_iguais + 1
            END IF
         END DO
      END DO
      IF ( lados_iguais == 0 ) THEN
         PRINT *, "Este triangulo eh escaleno"
      ELSE
         IF ( lados_iguais == 3  ) THEN
            PRINT *, "Este triangulo eh equilatero"
         ELSE        
            PRINT *, "Este triangulo eh isosceles"
         END IF
      END IF 
   END IF
END PROGRAM triangulos
