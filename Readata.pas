PROGRAM Readata(input,output);
VAR total, a, b: INTEGER;
BEGIN
     READ(a,b);
     total:= a + b;
     WRITELN('       A        B      TOTAL');
     WRITELN;
     WRITELN(a:12,b:12,total:12);
END.     
