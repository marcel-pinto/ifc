PROGRAM carpete
! Programa para calcular o menor valor em metros de carpete para 
! cobrir uma sala

   IMPLICIT none
   REAL, PARAMETER :: lar_carp = 3.0
   REAL :: comp_sala, lar_sala, comp_carp1, comp_carp2

   PRINT *, "Bem vindo ao programa carpete, por favor insira o &
                                       &comprimento de sua sala"
   READ *, comp_sala
   PRINT *, "Insira agora a largura de sua sala"
   READ *, lar_sala
! Como existe duas formas de se colocar o carpete no piso da sala
! (horizontalmente ou verticalmente) o calculo abaixo eh realizado
! testando as duas possibilidades e assim escolhendo a melhor, ou 
! seja, a que retorna o menor valor em metros de carpete. 
   comp_carp1 = CEILING( CEILING( comp_sala / lar_carp ) * lar_sala )
   comp_carp2 = CEILING( CEILING( lar_sala / lar_carp ) * comp_sala )
   PRINT *, "O menor comprimento de carpete para cobrir sua &
                           &sala eh ", min( comp_carp1,comp_carp2 )

END PROGRAM carpete
