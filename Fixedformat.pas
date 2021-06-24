PROGRAM Fixedformat(input,output);
VAR a,b,c,d,total:INTEGER;
BEGIN
     a:=100;
     b:=-2345;
     total:=a+b;
     WRITELN('12345678901234567890');
     WRITELN('     A     B');
     WRITELN(a:4, b:7);
     WRITELN;
     WRITELN(total:7, '      FORMAT  total:7');
     WRITELN(total:6, '      FORMAT  total:6');
     WRITELN(total:5, '      FORMAT  total:5');
     WRITELN(total:4, '      FORMAT  total:4');
     WRITELN(total:3, '      FORMAT  total:3'); WRITELN;
     
     c:=1234;   d:=789;
     WRITELN('  C  D');
     WRITELN(c:2,d:2);
END.     
     
