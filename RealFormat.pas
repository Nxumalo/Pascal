PROGRAM RealFormat(input,output);
(*$B-*)
VAR a,b,total:REAL;

BEGIN
      a:=5.2;
      READ(b);
      total:=a+b;
      WRITELN('                   A                     B                   TOTAL');
      WRITLEN(a,b,total);
END.      
