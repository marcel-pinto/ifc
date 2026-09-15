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
   CHARACTER(len=10) :: nomes(5), mais_nomes(10)
   
   PRINT *, "Digite 5 nomes e tecle ENTER"
   READ *, nomes
   
   CALL ordenar_alfabetico( nomes )
   PRINT *, "Os nomes em ordem alfabetica sao ", nomes
   
   PRINT *
   PRINT *, "Digite outros 10 e tecle ENTER"
   READ *, mais_nomes
   
   CALL ordenar_alfabetico( mais_nomes )
   PRINT *, "Os nomes em ordem alfabetica sao ", mais_nomes
   
END PROGRAM ordenar
