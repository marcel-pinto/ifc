! Autor : Marcel Augusto Pinto
!         Instituto de Fisica,
!         Universidade Federal de Alagoas
! Objetivo : Este programa gera os pontos para a plotagem de um
!            grafico para a curva "Flor".
! Escrito em : 23/07/15
! Modificacoes : 1 - Retirado a mistura de dados integer com real

PROGRAM flor

   IMPLICIT none
   INTEGER :: pontos, n
   INTEGER, PARAMETER :: qtde_pontos = 2000
   INTEGER, PARAMETER :: unidade_saida = 7
   REAL :: r, a, x, y
   REAL :: angulo = 0.0
   REAL, PARAMETER :: pi = 3.14159265
   REAL, PARAMETER :: angulo_i = 0.0
   REAL, PARAMETER :: angulo_f = 10.0 * pi
   REAL, PARAMETER :: incremento = (angulo_f - angulo_i) / qtde_pontos
   CHARACTER(len=80) :: nome_arquivo

! Leitura das constantes "a" e "n" especificadas pelo usuario   
   PRINT *, 'Por favor digite o valor da constante "a".'
   READ *, a
   PRINT *, 'Por favor digite o valor da constante "n".'
   READ *, n
! Arquivo interno responsavel por gerar o nome do arquivo de saida com
! o valor de "a" e "n" especificados
   WRITE (nome_arquivo, '("flor_a=",f4.1,"_n=",i2,".dat")') a, n
! Criacao do arquivo de saida
   OPEN (unit=unidade_saida, file=nome_arquivo, status="new")
! Loop responsavel por calcular uma quantidade finita de pontos para
! a plotagem do grafico   
   DO pontos = 1, qtde_pontos
      angulo = angulo + incremento
      r = a * sin(REAL(n) * angulo)
! A conversao abaixo de coordenadas polares para coordenadas
! se faz necessaria para manter a escala no programa usado para plotar
! o grafico (xmgrace)
      x = r * cos(angulo)
      y = r * sin(angulo)
      WRITE (unit=unidade_saida,fmt=*) x, y
   END DO
END PROGRAM flor
