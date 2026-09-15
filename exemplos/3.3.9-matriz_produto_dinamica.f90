PROGRAM matriz_produto_dinamica
! Exemplo de dimensionamento dinamico de array bidimensional

   IMPLICIT none
   INTEGER, ALLOCATABLE :: matriz(:,:)
   INTEGER :: tamanho_matriz, linha, coluna
   INTEGER :: situacao_da_alocacao
   
! Ache o tamanho requerido para a matriz
   PRINT *, "Qual eh o tamanho da matriz?"
   READ *, tamanho_matriz
   
! Aloque espaco suficiente para a matriz
   ALLOCATE(matriz(tamanho_matriz,tamanho_matriz), &
                        stat = situacao_da_alocacao)

! Verifique se o espaco foi alocado
   IF(situacao_da_alocacao == 0) THEN
   
! Preencha a matriz
col:  DO coluna = 1, tamanho_matriz
lin:     DO linha = 1, tamanho_matriz
            matriz(linha,coluna) = linha * coluna
         END DO lin
      END DO col
      
! Imprima a matriz uma linha de cada vez
      DO linha = 1, tamanho_matriz
         PRINT *, (matriz(linha,coluna), coluna =1, tamanho_matriz)
      END DO
      
! Libere memoria quando nao for mais necessaria
      DEALLOCATE(matriz)
   ELSE
      PRINT *, "Nao foi possivel alocar a memoria para a matriz"
   END IF
   
END PROGRAM matriz_produto_dinamica
