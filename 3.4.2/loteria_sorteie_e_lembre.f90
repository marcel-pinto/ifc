PROGRAM loteria_sorteie_e_lembre
! Modifique o programa de sorteio de loteria introduzindo os comandos
! de acesso a arquivo OPEN, WRITE e CLOSE

   IMPLICIT none
   INTEGER, PARAMETER :: total_numeros = 6
   INTEGER :: sorteio_numeros(total_numeros)
   INTEGER :: numeros_sorteados = 0
   INTEGER :: proxima_escolha, isorteio
   INTEGER, PARAMETER :: historia_da_loteria = 7
                              ! NAO use 5 ou 6
   REAL :: xaleatorio
   LOGICAL :: diferente
! Para administrar semente do GNA
   INTEGER :: i_semente, tamanho_semente, relogio
   INTEGER, DIMENSION (:), ALLOCATABLE :: semente

! Determinar o tamanho da semente
   CALL random_seed(size = tamanho_semente)
   ALLOCATE(semente(tamanho_semente))

! Determinar a hora do sistema
   CALL system_clock(count=relogio)

! Inicialize a sequencia de numeros
!     aleatorios caso contrario teremos
!     os mesmos numeros todas as vezes.
   Semente = relogio + 37*(/ (i_semente-1, i_semente = 1, &
                                        tamanho_semente) /)
   CALL random_seed(put = semente)
   DEALLOCATE(semente)

! Repita ate termos 6 numeros distintos entre 1 e 49
   DO
      IF( numeros_sorteados == total_numeros ) EXIT
      CALL random_number( xaleatorio )

     ! xaleatorio eh um numero aleatorio entre 0.0 e 1.0
     !    entao multiplique-o por 49 para obter um numero
     !    numero aleatorio entre 0 e 49

      xaleatorio = xaleatorio * 49.0

     ! arredonde para baixo e some 1 para obter um numero
     ! inteiro entre 1 e 49

      proxima_escolha = FLOOR( xaleatorio ) + 1

     ! veja se eh diferente dos numeros selecionados ate e se for
     !             adicione-o a lista
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
! Mesmo que PRINT:
   WRITE (6,*) "Os numeros da loteria sao: ", sorteio_numeros

! Registre o sorteio de loteria em um arquivo historico

   OPEN( unit= historia_da_loteria, file="historia_da_loteria.txt",&
                   status="old", action="write", position="append" )
   WRITE( unit= historia_da_loteria, fmt=*) sorteio_numeros
   CLOSE( unit= historia_da_loteria )
END PROGRAM loteria_sorteie_e_lembre
