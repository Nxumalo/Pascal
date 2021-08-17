PROGRAM ExplainReadln(input,output);
(*$B-*)
VAR a,b: INTEGER;

BEGIN
      WRITELN('               A                 B');
      READLN(a,b);
      WHILE a>0 DO
            BEGIN
                  WRITELN(a:12,b:12);
                  READLN(a,b);
            END
END.            
