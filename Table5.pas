PROGRAM Table5(input,output);

(* This program illustrates 2 nested loops *)

VAR i,j:INTEGER;
    n,n2,n3:INTEGER;
    
BEGIN
      WRITELN('           n             n*n               n*n*n');
      FOR i:= 0 TO 2 DO
        FOR i:= 0 TO 2 DO
            BEGIN
                n:=10*i + j;
                n2:=n*n;
                n3:=n*n*n;
                WRITELN(n:12,n2:12,n3:12);
            END
END.            
