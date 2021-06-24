PROGRAM ReadMore(input,output);
(* This is a compiler option necessary for 
 the TURBO Pascal compiler only*)
VAR a,b,total:INTEGER;
BEGIN
     READ(a,b);
     total:=a+b;
     WRITELN('     FIRST NO SECOND NO     SUM');
     WRITELN(a:12,b:12,total:12);
     WRITELN;WRITELN;
     
     READ(a,b);
     total:=a+b;
     WRITELN(' THIRD   NO =', a:5);
     WRITELN(' FOURTH  NO =', b:5);
     WRITELN(' SUM =', total:5)
END.    
