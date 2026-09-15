PROGRAM loteria_frequencia_sorteio
! Mostra o numero de vezes que cada numero foi sorteado

   IMPLICIT none
! Declarar e zerar o array de frequencia
   INTEGER, PARAMETER :: num_maximo = 49
   INTEGER :: frequencia(num_maximo) = 0
   INTEGER, PARAMETER :: total_numeros = 6
   INTEGER :: sorteio_numeros(total_numeros), inum
   INTEGER :: isorteio, numero
   INTEGER :: situacao
   INTEGER, PARAMETER :: historia_da_loteria = 8
   INTEGER, PARAMETER :: frequencia_da_loteria = 7
                           ! NAO use 5 ou 6

! Abrir arquivo da historia da loteria para leitura
   OPEN( unit= historia_da_loteria, file="historia_da_loteria.txt", &
                                        status="old", action="read" )
! Ler um sorteio (6 numeros) por linhado arquivo de historia e
!                  atualizar a frequencia
   DO
      READ( unit= historia_da_loteria, fmt=*, IOSTAT=situacao) &
                                                 sorteio_numeros
      IF (situacao < 0) EXIT
      DO isorteio = 1, total_numeros
         numero = sorteio_numeros(isorteio)
         frequencia( numero ) = frequencia( numero ) + 1 
      END DO
   END DO

   CLOSE( historia_da_loteria )

! Escrever o array de frequencia
   OPEN ( unit= frequencia_da_loteria, file="frequencia_loteria.txt" )
   WRITE ( unit= frequencia_da_loteria, fmt=*) "A frequencia da &
                                                     &loteria eh"
   DO inum = 1, num_maximo
      WRITE ( unit= frequencia_da_loteria, fmt=*) "O numero ", inum,&
                       " foi sorteado ", frequencia( inum ), " vezes"
   END DO
   CLOSE ( unit=frequencia_da_loteria )
END PROGRAM loteria_frequencia_sorteio
