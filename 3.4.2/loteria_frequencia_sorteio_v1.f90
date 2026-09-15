PROGRAM loteria_frequencia_sorteio
! Mostra o numero de vezes que cada numero foi sorteado

   IMPLICIT none
! Declarar e zerar o array de frequencia
   INTEGER, PARAMETER :: num_maximo = 49
   INTEGER :: frequencia(num_maximo) = 0
   INTEGER, PARAMETER :: total_numeros = 6
   INTEGER :: sorteio_numeros(total_numeros)
   INTEGER :: isorteio, numero, i, j, inum
   INTEGER :: situacao
   INTEGER, PARAMETER :: historia_da_loteria = 8
   INTEGER, PARAMETER :: frequencia_da_loteria = 7 ! NAO use 5 ou 6
   INTEGER, PARAMETER :: categorias = 5
   INTEGER :: grupos(categorias) = 0
   INTEGER :: inicio_categ = 1, fim_categ = 9

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
   
! Escrever o array de frequencia das categorias
   OPEN(unit= frequencia_da_loteria, file="frequencia_loteria.txt")
   WRITE(unit= frequencia_da_loteria, fmt=*) "A frequencia dos &
                                 &numeros em cada categoria eh: "
   DO i = 1, categorias
      DO j = inicio_categ, fim_categ
         grupos(i) = grupos(i) + frequencia(j)
      END DO
         WRITE(unit= frequencia_da_loteria, fmt=*) "Foram sorteados",&
                   grupos(i), " numeros entre ", inicio_categ, " e ",&
                                                             fim_categ
         inicio_categ = i * 10
         fim_categ = fim_categ + 10
   END DO
! Imprimindo somente o array acima teremos uma informacao enganosa,
! pois ele apenas mostrarah quantos numeros foram sorteados naquele 
! intervalo, entretanto nao diz quais e nem quantas vezes o numero foi
! sorteado. Portanto se faz necessario a escrita do array abaixo que
! irah informar a quantidade de vezes que cada valor foi sorteado
! individualmente, tornando assim mais precisa a saida do programa. 
   
! Escrever o array de frequencia individual
   WRITE(unit= frequencia_da_loteria, fmt=*) "Onde a frequencia de &
                                                    cada numero eh:"
   DO inum = 1, num_maximo
      WRITE(unit= frequencia_da_loteria, fmt=*) "O numero ", inum,&
                      " foi sorteado ", frequencia( inum ), " vezes"
   END DO
   CLOSE ( unit=frequencia_da_loteria )
   
END PROGRAM loteria_frequencia_sorteio
