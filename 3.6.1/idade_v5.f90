! Autor: Marcel Augusto Pinto
!        Instituto de Fisica,
!        Universidade Federal de Alagoas
! Objetivo: Este programa calcula a idade de uma pessoa baseado no
!           dia, mes e ano informado.
! Escrito em: 05/06/15
! Modificacoes: 1 - Correcao na comparacao do ano para garantir a 
!               validade do mesmo.
!               2 - Alteracao nos escalares do array por constantes
!               nominadas para melhorar a clareza do programa.
!               3 - Correcao na mensagem de erro para quando a data
!               era a frente da data atual. Este erro esta sendo
!               filtrado pela correcao 1.    
!               4 - Correcao nas constantes literais caracter
!               5 - Utilizacao de variaveis para armazenar os valores
!               das datas atuais.
!               6 - Introducao de uma constante nominada array para
!               melhorar a precisao da quantidade de dias de cada mes
!               7 - Troca da posicao do chamado da sub-rotina
PROGRAM idade_aprimorado

   IMPLICIT none
   INTEGER :: dia, mes, ano
   INTEGER :: ano_atual, mes_atual, dia_atual
   INTEGER, DIMENSION (8) :: data
   INTEGER, PARAMETER, DIMENSION (12) :: dias_meses = (/ 31, 28, 31, &
                                 30, 31, 30, 31, 31, 30, 31, 30, 31 /)
   
! Leitura das variaveis e analise da validade dos dados digitados
! pelo usuario
   PRINT *, "Bem vindo ao programa idade ( aprimorado )"
   PRINT *,
   PRINT *, "Por favor digite o dia do seu nascimento"
   READ *, dia
   IF ( dia < 0 ) THEN
      PRINT *, "Nao eh um dia valido"
   ELSE 
      PRINT *, "Digite agora o mes do seu nascimento"
      READ *, mes
      IF ( mes > 12 .or. mes < 0 ) THEN
         PRINT *, "Nao eh um mes valido"
      ELSE
! IF abaixo garante que o dia seja valido para o mes digitado
         IF ( dia > dias_meses(mes) ) THEN
            PRINT *, "Nao eh um dia valido para este mes"
         ELSE
            PRINT *, "Digite o ano do seu nascimento"
            READ *, ano
! IF abaixo garante que o ano nao seja negativo
            IF ( ano <= 0 ) THEN
               PRINT *, "Nao eh um ano valido"
            ELSE
! Obter dados sobre o dia, mes e ano atuais atraves da sub-rotina
               CALL date_and_time ( VALUES = data )
               ano_atual = data(1)
               mes_atual = data(2)
               dia_atual = data(3)
! Calculo da idade atraves da diferenca entre os dados atuais e os
! dados informados pelo usuario
               ano = ano_atual - ano
               mes = mes_atual - mes
               dia = dia_atual - dia
               IF ( (mes <= 0 .and. dia < 0) .or. mes < 0 ) THEN
                  ano = ano - 1
               END IF
               IF ( ano <= 0 .and. mes <= 0 ) THEN
! IF abaixo apenas para melhorar a coerencia do texto exibido
                  IF ( dia == 1 ) THEN
                     PRINT *, "Sua idade eh ", dia, " dia de vida"
                  ELSE
                     PRINT *, "Sua idade eh ", dia, " dias de vida"
                  END IF
               ELSE
                  IF ( ano <= 0 ) THEN
! IF abaixo apenas para melhorar a coerencia do texto exibido
                     IF ( mes == 1 ) THEN
                        PRINT *, "Sua idade eh ", mes, " mes de vida"
                     ELSE
                        PRINT *, "Sua idade eh ", mes, " meses de &
                                                             &vida"
                     END IF
                  ELSE
! IF abaixo apenas para melhorar a coerencia do texto exibido
                     IF ( ano == 1 ) THEN
                        PRINT *, "Sua idade eh ", ano, " ano de idade"
                     ELSE 
                        PRINT *, "Sua idade eh ", ano, " anos de &
                                                           &idade"
                     END IF
                  END IF
               END IF
            END IF
         END IF    
      END IF   
   END IF
END PROGRAM idade_aprimorado
