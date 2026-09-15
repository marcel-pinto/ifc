MODULE sub_ordene

CONTAINS

   SUBROUTINE ordene(numeros)
      IMPLICIT none
! Parametros formais (array de tamanho presumido)
      INTEGER, intent(inout) :: numeros( : )
! Variaveis locais
      INTEGER :: tamanho
      INTEGER :: inum, temp
      LOGICAL :: ordenado

! Obter tamanho do array
      tamanho = size(numeros)
! Este algoritmo eh chamado Bubble sort
      DO
         ordenado = .true.
         DO inum = 2, tamanho
            IF (numeros(inum) < numeros(inum-1)) THEN
               temp = numeros(inum)
               numeros(inum) = numeros(inum-1)
               numeros(inum-1) = temp
               ordenado = .false.
            END IF
         END DO
         IF (ordenado) EXIT
      END DO
      
   END SUBROUTINE
END MODULE sub_ordene

PROGRAM ordenar
   USE sub_ordene
   IMPLICIT none
   INTEGER :: numeros(5), mais_numeros(10)
   PRINT *, "Digite 5 numeros inteiros e tecle ENTER"
   READ *, numeros
   
   CALL ordene(numeros)
   PRINT *, "Os numeros em ordem ascendente sao ", numeros
   
   PRINT *,
   PRINT *, "Digite outros 10 numeros inteiros e tecle ENTER"
   READ *, mais_numeros
   
   CALL ordene(mais_numeros)
   PRINT *, "Os numeros em ordem ascendente sao ", mais_numeros
   
END PROGRAM ordenar
