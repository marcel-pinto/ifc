PROGRAM lista_quadrados_dinamico
! Exemplo de dimensionamento dinamico de array

   IMPLICIT none
   INTEGER, allocatable :: quadrados ( : )
   INTEGER :: numero, quantidade_numeros
   
! Ache quantos quadrados sao requeridos
   PRINT *, "Quantos quadrados voce quer?"
   READ *, quantidade_numeros
   
! Aloque espaco suficiente para o numero requerido de quadrados
   ALLOCATE(quadrados(quantidade_numeros))
   
! Armazene os quadrados
   DO numero = 1, quantidade_numeros
      quadrados(numero) = numero ** 2
   END DO
   
! Imprima a lista de quadrados
   IF(quantidade_numeros == 1) THEN
      PRINT *, "O primeiro quadrado eh: ", quadrados(1)
   ELSE
      PRINT *, "Os primeiros ", quantidade_numeros, " quadrados sao:&
             & ", (quadrados(numero), numero = 1, quantidade_numeros)
   END IF

! Libere a memoria quando nao for mais necessaria
   DEALLOCATE(quadrados)
   
END PROGRAM lista_quadrados_dinamico
