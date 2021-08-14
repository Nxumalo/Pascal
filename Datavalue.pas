PROGRAM Datavalue(input,output);
(*$B-x*)
VAR a,b,c,d,e,f,g,h,j,k,l,m : INTEGER;
BEGIN
		READ(a,b);
		WRITELN('           A             B');
		WRITELN(a:12,b:12); WRITELN;
		
		READ(c,d,e);
		WRITELN('           C             D             E');
		WRITELN(c:12,d:12,e:12); WRITELN;
		
		READ(f,g,h);
		WRITELN('           F             G             H');
		WRITELN(f:12,g:12,h:12); WRITELN;
		
		READ(j,k);
		WRITELN('           J             K');
		WRITELN(j:12,k:12); WRITELN;
		
		READ(l,m);
		WRITELN('           L             M');
		WRITELN(l:12,m:12);
		END.