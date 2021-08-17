PROGRAM Table5(input,output);
   
(* This program illustrates 2 loops, one insides another *) 

VAR n,n2,n3,inc:REAL;
      i:INTEGER;

BEGIN
      WRITELN('           n             n*n               n*n*n');
      FOR i:=1 TO 4 DO
          BEGIN
                inc := 0.2;
                WHILE inc <= 0.8 DO
                      BEGIN
                          n:=i + inc
                          (* On successive steps n becomes 1.2,1.5,1.8,2.2,2.5 etc *)
                          n2:=n*n;
                          n3:=n*n*n;
                          WRITLEN(n:12:1,n2:12:2,n3:12:3);
                          inc:=inc + 0.3
                      END
          END
END.           
