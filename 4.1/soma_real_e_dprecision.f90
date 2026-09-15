PROGRAM soma_real_e_dprecision

   IMPLICIT none
   INTEGER :: n, i
   REAL :: r = 1.0
   DOUBLE PRECISION :: dp = 1.0
   
   DO n = 1, 9
      DO i = 1, 10**n
         r = r + 10**(-n)
         dp = dp + 10**(-n)
      END DO
      PRINT *, r, dp
   END DO
END PROGRAM soma_real_e_dprecision
