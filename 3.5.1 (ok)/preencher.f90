MODULE preencher
! Subrotina para preencher a matriz produto dinamica

CONTAINS

   SUBROUTINE preencher_matriz ( M )
      IMPLICIT none
      
! Variaveis locais
      INTEGER, intent(inout) :: M( : , : )
      INTEGER :: qtde_col, qtde_lin, linha, coluna
      
      qtde_lin = size(M,1)
      qtde_col = size(M,2)
      DO coluna = 1, qtde_col
         DO linha = 1, qtde_lin
            M( linha, coluna ) = linha * coluna
         END DO
      END DO
      
   END SUBROUTINE preencher_matriz
   
END MODULE preencher
