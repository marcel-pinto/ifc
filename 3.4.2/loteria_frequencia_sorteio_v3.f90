PROGRAM loteria_frequencia_sorteio
! Mostra o numero de vezes que cada numero dentro das categorias
! foram sorteados

   IMPLICIT none
! Declarar e zerar o array de frequencia
   INTEGER, PARAMETER :: categorias = 5
   INTEGER :: frequencia(categorias) = 0
   INTEGER, PARAMETER :: total_numeros = 6
   INTEGER :: sorteio_numeros(total_numeros)
   INTEGER :: isorteio, numero, inum, indice, categ_i, categ_f
   INTEGER :: sorteios = 0
   INTEGER :: situacao 
   INTEGER, PARAMETER :: historia_da_loteria = 8 ! NAO use 5 ou 6

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
         indice = numero / 10 + 1
         frequencia( indice ) = frequencia( indice ) + 1
      END DO
! Contar a quantidade de sorteios de 6 numeros feitos.
      sorteios = sorteios + 1
   END DO
   
   CLOSE( historia_da_loteria )
   
! Imprimir o array de frequencia
   PRINT *, "A frequencia dos numeros da loteria eh"
   categ_i = 1
   categ_f = 9
   DO inum = 1, categorias
      PRINT *, "Os numeros ", categ_i, " ate ",categ_f ,&
         " foram sorteados ", frequencia(inum), " vezes"
      categ_i = inum * 10
      categ_f = categ_f + 10
   END DO
   PRINT *, "De ", sorteios, " sorteios."
END PROGRAM loteria_frequencia_sorteio
