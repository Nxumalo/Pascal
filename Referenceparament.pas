PROGRAM Referenceparement(input,output);
(*$B-*)
VAR a,b,c,d, result:REAL;
	
	PROCEDURE sum(VAR x,y,total:REAL);
		BEGIN
			total:=x+y;
		END;

BEGIN
	a:= 1.0; b:=2.0; c:= 3.0; d:=4.0;
	WRITELN('	VALUE1	VALUE2	RESULT');

	sum(a,b,result);
	
	WRITELN(a:10:2,b:10:2,result:10:2);

	sum(c,d,result);

	WRITELN(c:10:2,d:10:2,result:10:2);
END.
