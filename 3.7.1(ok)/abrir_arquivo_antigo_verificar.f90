PROGRAM abrir_arquivo_antigo_verificar
! Exemplo do uso do IOSTAT para verificar o sucesso do comando OPEN

   IMPLICIT none
   CHARACTER(len=80) :: nome_arquivo, primeira_palavra
   INTEGER, PARAMETER :: unidade_entrada = 7, ok = 0
   INTEGER :: situacao_open
   
! Solicite ao usuario que digite o nome de um arquivo a ser aberto
   PRINT *, "Digite o nome do arquivo a ser lido"
   READ *, nome_arquivo
   
! Use o especificador IOSTAT para ver se o OPEN funcionou
   OPEN( unit=unidade_entrada, file=nome_arquivo, status="old",&
                                          iostat=situacao_open )

   IF( situacao_open == ok ) THEN
! Ver o que estah no arquivo
      READ( unit=unidade_entrada, fmt=* ) primeira_palavra
      PRINT *
      PRINT *, "A primeira palavra no arquivo eh:"
      PRINT *, primeira_palavra
      
   ELSE
   
      PRINT *
      PRINT *, "Incapaz de abrir arquivo"
   END IF
   
END PROGRAM abrir_arquivo_antigo_verificar
