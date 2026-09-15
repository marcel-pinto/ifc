PROGRAM loteria
! Programa de sorteio da loteria introduzindo o tipo LOGICAL, loops
! indefinidos, comando EXIT e sub-rotinas intrinsecas

   IMPLICIT none
   INTEGER, PARAMETER :: total_numeros = 6
   INTEGER :: sorteio_numeros(total_numeros)
   INTEGER :: numeros_sorteados = 0
   INTEGER :: proxima_escolha, isorteio
   REAL :: xaleatorio
   LOGICAl :: diferente
! Inicialize o gerador de numeros aleatorios (Dependente do sistema)
   CALL random_seed
   
! Repita ate termos total_numeros numeros distintos

   DO
      IF( numeros_sorteados == total_numeros ) EXIT
    ! xaleatorio eh um numero aleatorio no intervalo [0.0, 1.0)
      CALL random_number( xaleatorio )
    ! Multiplique-o por 49 para obter um numero aleatorio no 
    ! intervalo [0.0, 49.0).
      xaleatorio = xaleatorio * 49.0
    ! Arredonde para baixo e some 1 para obter um numero inteiro
    ! entre 1 e 49
      proxima_escolha = floor( xaleatorio ) + 1
    ! veja se eh diferente dos numeros selecionados ate agora e 
    ! se for adicione-o a lista
      diferente = .true.  
      DO isorteio = 1, numeros_sorteados
         IF( proxima_escolha == sorteio_numeros( isorteio ) ) THEN
            diferente = .false.
            EXIT
         END IF
      END DO
      IF( diferente ) THEN
         numeros_sorteados = numeros_sorteados + 1
         sorteio_numeros( numeros_sorteados ) = proxima_escolha
      END IF
   END DO
   
   PRINT *, "Os numeros da loteria sao: ", sorteio_numeros
END PROGRAM loteria
