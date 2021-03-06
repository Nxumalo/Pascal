PROGRAM Average (input,output);
(*$B-*)
(* This program illustrates the use of arrays
   The average of 5 real values is calculated *)

VAR	i:: INTEGER;
	sum.average,diff:REAL;
	x:ARRAY[1..5] OF REAL;

BEGIN
	FOR i := 1 TO 5 DO READ(x[i]); (* Reads 5 values *)
	sum := 0.0;
	FOR i :=1 TO 5 DO sum :sum + x[i];
	average := sum/5;
	WRITELN('AVERAGE = ', average:10:2);
	WRITELN;
	WRITELN('	X 	AVERAGE-X');
	FOR i := 1 TO 5 DO
		BEGIN
			diff:= average-x[i];
			WRITELN(x[i]:10:2,diff:10:2);
		END;
END.
		
