PROGRAM Table(input,output);

(* A table of values of n, n*n, n*n*n will be printed *)
(* This program illustrates the use of a FOR LOOP *)

VAR n,n2,n3: INTEGER;
BEGIN
      WRITELN('             N             N*N            N*N*N');
      FOR   n:= 1 TO 5 DO
            BEGIN
                 n2:= n*n;
                 n3:= n*n*n;
                 WRITELN(n:12,n2:12,n3:12);
            END     
END.            
