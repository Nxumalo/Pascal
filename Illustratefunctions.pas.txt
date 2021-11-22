PROGRAM Illustratefunctions(input,output);
(*$B-*)
(* This program is used to illustrate the use of 
	a User-defined function in a program.

	The function called SUM adds 3 values together.
	These 3 values are passed to the function in 
	the parameter list *)

VAR a,b,c,d answer:INTEGER;

	FUNCTION sum (x,y,z:INTEGER)  :INTEGER;
		BEGIN
			sum:=x+y+z;
		END;
	BEGIN
		READ(a,b,c,d);
		answer := sum(a,b,c) + sum(a,b,d) - sum(b,c,d);
		WRITELN('   A  B  C  D  (A+B+C) + (A+B+D) - (B+C+D)');
		WRITELN(a:5,b:5,c:5,d:5,answer:10);
	END.    
