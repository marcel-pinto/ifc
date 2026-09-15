! Autor: Marcel Augusto Pinto
!        Instituto de Fisica,
!        Universidade Federal de Alagoas
! Objetivo : Este programa le um arquivo informado pelo usuario
!            contendo uma lista de nomes e o ordena. O resultado e
!            escrito em um arquivo de saida (nome tambem informado 
!            pelo usuario.
! Escrito em : 06/06/15
! Modificacoes:
MODULE ordena

CONTAINS

   SUBROUTINE ordenar_alfabetico ( nomes )
      IMPLICIT none
! Argumentos formais
! Aqui eh usado array de tamanho presumido
      CHARACTER(len=*), intent(inout) :: nomes( : )
      
! Variaveis locais
      INTEGER :: tamanho
      INTEGER :: inum
      CHARACTER(len=LEN(nomes)) :: temp
      LOGICAL :: ordenado
      
      tamanho = size(nomes)
      DO
         ordenado = .true.
         DO inum = 2, tamanho
            IF ( nomes( inum ) < nomes( inum-1 ) ) THEN
               temp = nomes( inum )
               nomes( inum ) = nomes(inum-1)
               nomes( inum-1 ) = temp
               ordenado = .false.
            END IF
         END DO
         IF( ordenado ) EXIT
      END DO
      
   END SUBROUTINE ordenar_alfabetico
END MODULE ordena

PROGRAM ordenar
! Programa para demonstrar o uso de dados tipo CHARACTER
   USE ordena
   IMPLICIT none
   INTEGER, PARAMETER :: qtde_nomes = 10
   INTEGER, PARAMETER :: unidade_entrada = 7
   INTEGER, PARAMETER :: unidade_saida = 8
   INTEGER, PARAMETER :: ok = 0
   INTEGER :: situacao_entrada, situacao_saida
   CHARACTER(len=80) :: nome_arquivo_entrada, nome_arquivo_saida
   CHARACTER(len=10) :: nomes(qtde_nomes)
   
   PRINT *, "Digite o nome do arquivo de entrada que contenha 10&
                                                         & nomes"
   READ *, nome_arquivo_entrada
   OPEN( unit=unidade_entrada, file=nome_arquivo_entrada,&
                   status="old", iostat=situacao_entrada )
   IF ( situacao_entrada == ok ) THEN
      READ ( unit=unidade_entrada, fmt=* ) nomes
      CALL ordenar_alfabetico( nomes )
      PRINT *, "Digite o nome do arquivo de saida que terah a lista&
                                     & de nomes em ordem alfabetica"
      READ *, nome_arquivo_saida
      OPEN( unit=unidade_saida, file=nome_arquivo_saida,&
                    status="new", iostat=situacao_saida )
      IF ( situacao_saida == ok ) THEN
         WRITE( unit=unidade_saida,fmt=* ) "Os nomes em ordem &
                                     & alfabetica sao: ", nomes
      ELSE
         PRINT *, "Arquivo ja existe."
      END IF
   ELSE
      PRINT *, "Arquivo inexistente."
   END IF
   
END PROGRAM ordenar
