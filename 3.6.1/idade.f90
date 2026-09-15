! Autor: Marcel Augusto Pinto
!        Instituto de Fisica,
!        Universidade Federal de Alagoas
! Objetivo: Este programa calcula a idade de uma pessoa baseado no
!           dia, mes e ano informado.
! Escrito em: 05/06/15
! Modificacoes: 

PROGRAM idade_aprimorado

   IMPLICIT none
   INTEGER :: dia, mes, ano
   INTEGER, DIMENSION (8) :: data_atual
   
! Leitura das variaveis e analise da validade dos dados digitados
! pelo usuario
   PRINT *, " Bem vindo ao programa idade ( aprimorado )"
   PRINT *,
   PRINT *, "Por favor digite o dia do seu nascimento"
   READ *, dia
   IF ( dia > 31 .or. dia < 0 ) THEN
      PRINT *, "Nao eh um dia valido"
   ELSE 
      PRINT *, "Digite agora o mes do seu nascimento"
      READ *, mes
      IF ( mes > 12 .or. mes < 0 ) THEN
         PRINT *, "Nao eh um mes valido"
      ELSE
         PRINT *, "Digite o ano do seu nascimento"
! OBS.: Se o ano digitado for negativo, serah entendido que a pessoa
! nasceu antes de Cristo.
         READ *, ano
! Obter dados sobre o dia, mes e ano atuais atraves da sub-rotina
         CALL date_and_time ( VALUES = data_atual )
! Calculo da idade atraves da diferenca entre os dados atuais e os
! dados informados pelo usuario
         ano = data_atual(1) - ano
         mes = data_atual(2) - mes
         dia = data_atual(3) - dia
         IF ( (mes <= 0 .and. dia < 0) .or. mes < 0 ) THEN
            ano = ano - 1
         END IF
         IF ( ano <= 0 .and. mes <= 0 .and. dia <= 0 ) THEN
            PRINT *, " Sua idade eh invalida"
         ELSE
            IF ( ano <= 0 .and. mes <= 0 ) THEN
! IF abaixo apenas para melhorar a coerencia do texto exibido
               IF ( dia == 1 ) THEN
                  PRINT *, " Sua idade eh ", dia, " dia de vida"
               ELSE
                  PRINT *, " Sua idade eh ", dia, " dias de vida"
               END IF
            ELSE
               IF ( ano <= 0 ) THEN
! IF abaixo apenas para melhorar a coerencia do texto exibido
                  IF ( mes == 1 ) THEN
                     PRINT *, " Sua idade eh ", mes, " mes de vida"
                  ELSE
                     PRINT *, " Sua idade eh ", mes, " meses de vida"
                  END IF
               ELSE
! IF abaixo apenas para melhorar a coerencia do texto exibido
                  IF ( ano == 1 ) THEN
                     PRINT *, "Sua idade eh ", ano, "ano de idade"
                  ELSE 
                     PRINT *, "Sua idade eh ", ano, "anos de idade"
                  END IF
               END IF
            END IF
         END IF    
      END IF   
   END IF
END PROGRAM idade_aprimorado
