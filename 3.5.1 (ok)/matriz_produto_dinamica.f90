PROGRAM matriz_produto_dinamica
! Exemplo de dimensionamento dinamico de array bidimensional de array
! bidimensional

   USE preencher
   IMPLICIT none
   INTEGER, ALLOCATABLE :: matriz( :, : )
   INTEGER :: qtde_colunas, qtde_linhas, linha, coluna
   INTEGER :: situacao_da_alocacao
   
! Ache o tamanho requerido para a matriz
   PRINT *, "Por favor digite quantas linhas terah sua matriz"
   READ *, qtde_linhas
   PRINT *, "Quantas colunas terah sua matriz?"
   READ *, qtde_colunas
   
! Aloque espaco suficiente para a matriz
   ALLOCATE( matriz( qtde_linhas, qtde_colunas ), &
                            stat= situacao_da_alocacao )

! Verifique se o espaco foi alocado
   IF(situacao_da_alocacao == 0 ) THEN
      
! Preencha a matriz
      CALL preencher_matriz( matriz )

! Imprima a matriz uma linha de cada vez
      DO linha = 1 , qtde_linhas
         PRINT *, ( matriz( linha, coluna ), coluna = 1,qtde_colunas )
      END DO

! Libere a memoria quando nao for mais necessaria
      DEALLOCATE ( matriz )
      
   ELSE
   
      PRINT *, "Nao foi possivel alocar a memoria para matriz."
      
   END IF

END PROGRAM matriz_produto_dinamica
