! Autor : Marcel Augusto Pinto
!         Instituto de Fisica,
!         Universidade Federal de Alagoas
! Objetivo : Este programa gera os pontos para a plotagem de um
!            grafico para a curva "Espiral de Arquimedes".
! Escrito em : 12/06/15
! Modificacoes :

PROGRAM espiral_de_arquimedes

   IMPLICIT none
   INTEGER :: i
   REAL :: r, a , teta
   REAL, PARAMETER :: pi = 3.14159265
   INTEGER, PARAMETER :: qtde_pontos = 400
   INTEGER, PARAMETER :: unidade_saida = 7
   CHARACTER(len=80) :: nome_arquivo
   
   PRINT *, "Por favor digite o valor da constante da curva e tecle &
                                                              &ENTER"
   READ *, a
   WRITE (nome_arquivo, '("espiral_de_arquimedes_a=",f4.1,".dat")') a
   OPEN (unit=unidade_saida, file=nome_arquivo, status="new")
   DO i = 1, qtde_pontos
      teta = (pi /180.0) * REAL(i)
      r = a * teta
      WRITE( unit=unidade_saida,fmt=* ) r, teta
   END DO
END PROGRAM espiral_de_arquimedes
