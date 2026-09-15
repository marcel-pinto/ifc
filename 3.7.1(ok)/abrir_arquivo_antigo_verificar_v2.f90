! Autor: Marcel Augusto Pinto
!        Instituto de Fisica,
!        Universidade Federal de Alagoas
! Objetivo : Este programa abre um arquivo existente e le a primeira 
!            palavra escrita. Caso o nome esteja errado ou o arquivo
!            nao exista, ele farah outra tentativa de abertura.
!            (maximo de 3 tentativas)
! Escrito em : 06/06/15
! Modificacoes: 1 - Troca do DO ilimitado por um DO limitado

PROGRAM abrir_arquivo_antigo_verificar
! Exemplo do uso do IOSTAT para verificar o sucesso do comando OPEN

   IMPLICIT none
   CHARACTER(len=80) :: nome_arquivo, primeira_palavra
   INTEGER, PARAMETER :: unidade_entrada = 7, ok = 0
   INTEGER, PARAMETER :: qtde_tentativas = 3
   INTEGER :: situacao_open, tentativa
   
! Solicite ao usuario que digite o nome de um arquivo a ser aberto
   PRINT *, "Digite o nome do arquivo a ser lido"
   DO tentativa = 1, qtde_tentativas
      READ *, nome_arquivo        
! Use o especificador IOSTAT para ver se o OPEN funcionou
      OPEN( unit=unidade_entrada, file=nome_arquivo,&
                  status="old",iostat=situacao_open )
      IF( situacao_open == ok ) THEN
! Ver o que estah no arquivo
         READ( unit=unidade_entrada, fmt=* ) primeira_palavra
         PRINT *
         PRINT *, "A primeira palavra no arquivo eh:"
         PRINT *, primeira_palavra
         EXIT
      END IF
      IF ( tentativa < qtde_tentativas ) THEN
         PRINT *, "Arquivo inexistente. Tente novamente"
      ELSE
         PRINT *, "Arquivo inexistente. Programa terminado"
      END IF
   END DO
END PROGRAM abrir_arquivo_antigo_verificar
