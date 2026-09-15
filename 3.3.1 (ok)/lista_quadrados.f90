PROGRAM lista_quadrados
! Exemplo de arrays e DO loops mostrando ninho de IFs

    IMPLICIT none
    INTEGER, PARAMETER :: maximo_permitido = 20
    INTEGER :: quadrados(maximo_permitido) = 0
    INTEGER :: numero, quantidade_numeros, ilista

! Ache quantos quadrados sao necessarios
    PRINT *, "Quantos quadrados voce quer?"
    READ *, quantidade_numeros

! Verifique se estah dentro do limite permitido
max:IF( quantidade_numeros > maximo_permitido ) THEN
        PRINT *
        PRINT *, "Isto eh demais. O maximo permitido eh ", &
                                            maximo_permitido
    ELSE max
min:    IF( quantidade_numeros < 1 ) THEN
            PRINT *
            PRINT *, quantidade_numeros, " nao eh um numero valido!"
        ELSE min

! Quantidade_numeros esta OK entao armazene os quadrados
            PRINT *, "Por onde quer comecar a lista?"
            READ *, ilista
            DO numero = 1, quantidade_numeros
                quadrados( numero ) = ilista ** 2
                ilista = ilista + 1 
            END DO

! Imprimir a lista dos quadrados
            PRINT *
so_um:      IF( quantidade_numeros == 1 ) THEN
                PRINT *, "O primeiro quadrado eh: ", quadrados&
                                                         ( 1 )

            ELSE so_um
                PRINT *, "Os primeiros ", quantidade_numeros, &
                         " quadrados sao: ",( quadrados(numero),&
                                 numero = 1, quantidade_numeros )

            END IF so_um
        END IF min
    END IF max
END PROGRAM lista_quadrados
