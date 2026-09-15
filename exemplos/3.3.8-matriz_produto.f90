PROGRAM matriz_produto
! Exemplo de um array bidimensional
   IMPLICIT none
   INTEGER, PARAMETER :: tamanho_maximo = 12
! Matriz quadrada
   INTEGER :: matriz(tamanho_maximo, tamanho_maximo)
   INTEGER :: tamanho_matriz, linha, coluna
   
! Ache o tamanho requerido para a matriz
   PRINT *, "Qual eh o tamanho da matriz?"
   READ *, tamanho_matriz
   
   IF(tamanho_matriz <= tamanho_maximo) THEN
! Preencha a matriz
col:  DO coluna = 1, tamanho_matriz
lin:     DO linha = 1, tamanho_matriz
            matriz(linha,coluna) = linha*coluna
         END DO lin
      END DO col
      
! Imprima a matriz uma linha de cada vez
      DO linha = 1, tamanho_matriz
         PRINT *,(matriz(linha,coluna), coluna = 1, tamanho_matriz)
      END DO
   ELSE
      PRINT *, "Este valor eh muito grande, o maximo eh", &
                                             tamanho_maximo
   END IF
   
END PROGRAM matriz_produto
