       IDENTIFICATION DIVISION.
       PROGRAM-ID. UsingCompute.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Num1 PIC 99 VALUE 12.
       01 Num2 PIC 99 VALUE 4.
       01 Num3 PIC 99 VALUE 24.
       01 Ans PIC 99V99 VALUE ZERO.
       PROCEDURE DIVISION.
       COMPUTE Ans = Num1 + Num2.
       DISPLAY "Num1 + Num2 = " Ans
       COMPUTE Ans = Num1 - Num2.
       DISPLAY "Num1 - Num2 = " Ans
       COMPUTE Ans = Num1 * Num2.
       DISPLAY "Num1 * Num2 = " Ans
       COMPUTE Ans = Num1 / Num2.
       DISPLAY "Num1 / Num2 = " Ans.
       COMPUTE Ans = NuM1 ** 2 
       DISPLAY "Num1 * Num1 = " Ans
       COMPUTE Ans = (Num2 + Num3) / Num1.
       DISPLAY "(Num2 + Num3) / Num1 = " Ans
       COMPUTE Ans ROUNDED = (3.3 + 4.2) * 2.35.
       DISPLAY "Rounded (3.3 + 4.2) * 2.35 = 17.625 but its rounded " 
               " so Ans " Ans

           STOP RUN.