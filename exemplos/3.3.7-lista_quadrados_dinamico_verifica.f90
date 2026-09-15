PROGRAM lista_quadrados_dinamico_verifica
! Exemplo de dimensionamento dinamico de array com verificacao

   IMPLICIT none
   INTEGER, allocatable :: quadrados(:)
   INTEGER :: numero, quantidade_numeros
   INTEGER :: situacao_da_alocacao
   
! Ache quantos quadrados sao requeridos
   PRINT *, "Quantos quadrados voce quer?"
   READ *, quantidade_numeros
   
   IF(quantidade_numeros >= 1) THEN
! Aloque espaco suficiente para o numero requerido de quadrados
      ALLOCATE(quadrados(quantidade_numeros), stat = &
                                 situacao_da_alocacao)

! Verifique se o espaco foi alocado
      IF(situacao_da_alocacao == 0) THEN
! Armazene os quadrados
         DO numero = 1, quantidade_numeros
            quadrados(numero) = numero ** 2
         END DO
        
! Imprima a lista de quadrados
         IF(quantidade_numeros == 1) THEN
            PRINT *, "O primeiro quadrado eh: ", quadrados(1)
         ELSE
            PRINT *, "Os primeiros ", quantidade_numeros, &
                  " quadrados sao: ", (quadrados(numero), &
                            numero = 1, quantidade_numeros)
         END IF

! Libere a memoria quando nao for mais necessaria
         DEALLOCATE(quadrados)
         
      ELSE
         PRINT *, "Nao foi possivel alocar a memoria para os &
                                                   &quadrados"
      END IF
   ELSE
      PRINT *, quantidade_numeros, " nao eh um numero valido!"
   END IF
   
END PROGRAM lista_quadrados_dinamico_verifica
