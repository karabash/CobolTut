       IDENTIFICATION DIVISION.
       PROGRAM-ID. dataTypes.
       AUTHOR. Emre.
       DATE-WRITTEN. Maj 20TH 2022.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 SampleData PIC X(10) value "Stuff".
       01 JustLetters PIC AAA VALUE "ABC".
       01 JustNums PIC 9(4) VALUE 1234.
       01 SignedInt PIC S9(4) VALUE -1234.
       *>after first 4 digits gives  decimal 0000.00
       01 PayCheck PIC 9(4)V99 VALUE ZEROS.
       01 Customer.
            02 Ident PIC 9(3).
            02 CustName PIC X(20).
            02 DateOfBirth.
       03 MOB PIC 99.
       03 DOB PIC 99.
       03 YOB PIC 99(4).
       PROCEDURE DIVISION.
           MOVE "More stuff " TO SampleData.
           DISPLAY "Stuff replaced with " SampleData.
           MOVE "123" TO SampleData.
           DISPLAY "More stuff is replaced with " SampleData.
           Display PayCheck.
       *> first 3 character iden max length 3
       *> bob Smith length is 20 that's why we have whitespaces    
           MOVE "123Bob Smith           12211974" TO Customer.
           *> after we skipped rest of white space prints only CustName as
           *> Bob Smith
           DISPLAY "Customer: " Customer.
           DISPLAY "mob/dob/yob " MOB " / " DOB " / " YOB.
           DISPLAY "CustName " CustName. 
       *> see diffrences if we don't skip 20 white spaces on CustName
       *> it prints as: Bob Smith 12211974
           MOVE "123Bob Smith 12211974" TO Customer.
           DISPLAY "Customer: " Customer.
       *> see line 46 has not data because we don't entered value as 
       *> demands
           DISPLAY "mob/dob/yob: " MOB " / " DOB " / " YOB.
           DISPLAY "CustName: " CustName. 

           MOVE ZERO TO SampleData.
           DISPLAY "Constant ZERO is Moved into SampleData: "
           MOVE SPACE TO SampleData.
           DISPLAY "Constant Spaces is moved into SampleData: "
           MOVE HIGH-VALUE TO SampleData.
           DISPLAY "Constant HIGH-VALUE is moved into SampleData: "
           MOVE LOW-VALUE TO SampleData.
           DISPLAY "Constant HIGH-VALUE is moved into SampleData: "
           MOVE QUOTE TO SampleData.
           DISPLAY "Constant QUOTE is moved into SampleData: "
       *> move all spaces and put 2 inside into them
           MOVE ALL "2" TO  SampleData.
           DISPLAY "SampleData's all white spaces replaced with: " 
               SampleData       
           STOP RUN.
