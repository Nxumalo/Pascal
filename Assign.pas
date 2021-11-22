PROGRAM Assign(input,output);
(*$B-*)
VAR a:INTEGER;
BEGIN 
	a:= 22;
	WRITELN('a= ',a:4,  AFTER FIRST ASSIGNMENT');
	a:= 45;
	WRITELN('a= ',a:4,  AFTER SECOND ASSIGNMENT');
	READ(a);
	WRITELN('a= ',a:4,  AFTER READ ASSIGNMENT');	
END.
