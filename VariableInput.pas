PROGRAM VariableInput(input,output);
(*$B-*)
(* This program reads in any number of real numbers.
   Prints the number, its square and its cube.
   The program terminates after a negative real number is read.*)
   
VAR   n,n2,n3:REAL;

BEGIN
          WRITELN('           n             n*n               n*n*n');
          READ(n);            (* Read the first data value*)
          WHILE n>= 0.0 DO
                BEGIN
                    n2:=n*n;
                    n3:=n*n*n;
                    WRITELN(n:10:3,n2:10:3,n3:10:3);
                    READ(n);
(* Reads the second and subsequent data values *)
                END
END.                
