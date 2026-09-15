PROGRAM idade
! Programa para fazer o calculo de idade baseado no mes e ano do
! nascimento.

   IMPLICIT none
   INTEGER :: mes_nascimento, ano_nascimento, ano_res, mes_res
   INTEGER, PARAMETER :: ano_atual = 2015
   INTEGER, PARAMETER :: mes_atual = 5

   PRINT *, "Bem vindo ao programa idade, por favor insira o mes do &
                                                    &seu nascimento."
   READ *, mes_nascimento
   PRINT *, "Insira agora o ano do seu nascimento"
   READ *, ano_nascimento
   mes_res = mes_atual - mes_nascimento
   ano_res = ano_atual - ano_nascimento
   ano_res = ano_res * 12 + mes_res
   ano_res = ano_res / 12
   PRINT *, "Sua idade eh ", ano_res

END PROGRAM idade
