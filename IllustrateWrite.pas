PROGRAM IllustrateWrite(input,output);
(*$B-*)
(* This program illustrate the use of the WRITE statement.
   The program reads in an integer value(n) and outputs
   this value. On the next line all the integer values from 1 
   to n, are outputted.
   This program is terminated when a zero or negative is read in *)
   
VAR i,n:INTEGER;

BEGIN
      READ(n);
      WHILE n>0 DO
            BEGIN
                  WRITELN(' THE INTEGERS FROM 1 TO ', n:3, ' ARE');
                  FOR i:=1 TO n DO WRITE(i,4);
                  WRITELN;WRITELN;
                  READ(n);
            END;
            
END.            
