! Autor : Marcel Augusto Pinto
!         Instituto de Fisica,
!         Universidade Federal de Alagoas
! Objetivo : Este programa gera os pontos para a plotagem de um
!            grafico para a curva "Espiral de Arquimedes".
! Escrito em : 12/06/15
! Modificacoes : 1 - Inclusao de comentarios no programa
!                2 - Declaracao do incremento como constante nominada
!                3 - Alteracao de nomes de algumas variaveis para
!                nomes mais descritivos
!                4 - Conversao dos valores de coordenadas polares em
!                coordenadas cartesianas
!                5 - Alteracao para que o angulo seja uma variavel
!                independente do loop DO
!                6 - Inclusao do incremento que o angulo irah receber
!                como constante nominada
!                7 - Inclusao dos limites do grafico no incremento
!                (angulo inicial e angulo final)
PROGRAM espiral_de_arquimedes

   IMPLICIT none
   INTEGER :: pontos
   INTEGER, PARAMETER :: qtde_pontos = 2000
   INTEGER, PARAMETER :: unidade_saida = 7
   REAL :: r, a, x, y
   REAL, PARAMETER :: pi = 3.14159265
   REAL, PARAMETER :: angulo_i = 0.0
   REAL, PARAMETER :: angulo_f = 10.0 * pi
   REAL :: angulo = angulo_i
   REAL, PARAMETER :: incremento = (angulo_f - angulo_i) / qtde_pontos
   CHARACTER(len=80) :: nome_arquivo

! Leitura da constante "a" especificada pelo usuario
   PRINT *, "Por favor digite o valor da constante da curva e tecle &
                                                              &ENTER"
   READ *, a
! Arquivo interno responsavel por gerar o nome do arquivo de saida com
! o valor de "a" especificado
   WRITE (nome_arquivo, '("espiral_de_arquimedes_a=",f4.1,".dat")') a
! Criacao do arquivo de saida 
   OPEN (unit=unidade_saida, file=nome_arquivo, status="new")
! Loop responsavel por calcular uma quantidade finita de pontos para
! a plotagem do grafico
   DO pontos = 1, qtde_pontos
      r = a * angulo
! A conversao abaixo de coordenadas polares para coordenadas
! se faz necessaria para manter a escala no programa usado para plotar
! o grafico (xmgrace)
      x = r * cos(angulo)
      y = r * sin(angulo)
      WRITE( unit=unidade_saida,fmt=* ) x, y
      angulo = angulo + incremento
   END DO
END PROGRAM espiral_de_arquimedes
