PROGRAM Table3(input,output);
VAR n,n2,n3,inc:REAL;
    i:INTEGER;
BEGIN
     WRITELN('               n                n*n                 n*n*n');
     n  := 1.2;             (* initial value of n *)
     inc  := 0.1;           (* increment value *)
     FOR i:=1 TO 4 DO
          BEGIN 
              n2 := n*n;
              n3 := n*n*n;
              WRITELN(n:12:1,n2:12:2,n3:12:3);
              n := n+inc;   (*n = 1.3 then 1.4 and finally 1.5 *)
          END
END.          
