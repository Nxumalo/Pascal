PROGRAM Printarray(input,output);
(*$B-*)
VAR row,col: INTEGER;
	x:ARRAY[1..4,1..3] OF INTEGER;

BEGIN
	(* The value of each array element is calculated
		and sorted *)

	FOR row := 1 TO 4 DO
	   FOR col: 1 TO 3 DO
		x[row,col]:= row*10 + col;
	
	(* Headings and the contents of each array 
		element are now printed *)
	
	WRITELN('		COLUMN');
	WRITE('		');
	FOR col := 1 TO 3 DO WRITE(col:10); (* Prints col no's *)
	WRITELN;
	WRITELN('	ROW');
	FOR row:= 1 TO 4 DO
	   BEGIN
		WRITE(row:10)		(* This prints the row number *)
		FOR col := 1 TO 3 DO
			WRITE(X[row,col]:10);
		(* Each element in this row is printed *)
		WRITELN;
	   END;
END.
