PROGRAM Table0 (input,output);

(* This program illustrates the FOR .. DOWNTO ... LOOP *)

VAR n, n2, n3; INTEGER;

BEGIN
      WRITELN('                n               n*n              n*n*n');
      FOR n:= 10 DOWNTO 6 DO
           BEGIN  
                n2:= n*n;
                n3:= n*n*n;
                WRITELN(n:12,n2:12,n3:12);
                END
END.                
