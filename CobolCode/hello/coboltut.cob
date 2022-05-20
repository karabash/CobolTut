       >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       PROGRAM-ID. coboltut.
       AUTHOR. EMRE K.
       DATE-WRITTEN. Maj 19TH 2022
       ENVIRONMENT DIVISION.
        CONFIGURATION SECTION.
SPECIAL-NAMES.
DECIMAL-POINT COMMA.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
01 CardinalNumber PIC 99 VALUES ZEROS.
01 IntegerNumber PIC S99 VALUE -14.
01 DecimalNumber PIC 99V99 VALUE 54,21.

01 UserName PIC X(30) VALUES "You".
01 Num1 PIC 9 VALUE ZEROS.
01 Num2 PIC 9 VALUE ZEROS.
01 Total PIC 99 VALUE 0.

01 BirthDate.
   02 YearOfBirth.
      03 CenturyOB PIC 99.
      03 YearOB PIC 99.
   02 MonthOfBird PIC 99.
   02 DayOfBirth PIC 99.

01 SsNum.
   02 SsArea PIC 999.
   02 SsGroup PIC 99.
   02 SssSerial PIC 99.
01 PIValue CONSTANT AS 3,14. 

PROCEDURE DIVISION.
DISPLAY CardinalNumber.
DISPLAY IntegerNumber.
DISPLAY DecimalNumber.

DISPLAY "WHAT IS YOUR NAME ?".
ACCEPT UserName.
DISPLAY "Hello " UserName.

MOVE ZEROS TO UserName.
DISPLAY "UserName values has changed " UserName

DISPLAY "Enter 2 values to sum".
ACCEPT Num1.
ACCEPT NUM2.
COMPUTE Total = Num1 + Num2.
DISPLAY Num1 " + " Num2 " = " Total.

DISPLAY "Enter your birthdate " WITH NO ADVANCING.
ACCEPT CenturyOB.
ACCEPT YearOB.
ACCEPT MonthOfBird.
ACCEPT DayOfBirth.
DISPLAY CenturyOB YearOB "/"MonthOfBird"/"DayOfBirth.

DISPLAY "Enter your social security number".
ACCEPT SsNum.
DISPLAY "AREA " SsArea.
DISPLAY "SssSerial" SssSerial.
STOP RUN.
