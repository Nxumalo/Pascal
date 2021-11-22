PROGRAM Read(input,output);
(*$B-*)
(* This program reads and prints 20 character names, At
	least 20 charcters MUST be typed in on each line before
	the RETURN key is pressed.	*)

VAR i,j:INTEGER;

	ch:ARRAY[1..5,1..20] OF CHAR;

BEGIN
	WRITELN('	NAMES');
	WRITELN;

	(* Read in and store 5 names each of 20 characters *)
	FOR i:= 1 TO 5 DO
	   BEGIN
	 	FOR j:= 1 TO 20 DO READ(ch[i,j]);
		READLN; (* Omits any further data on this card *)
	   END;
	(* Print the 5 names of 20 characters *)
	FOR i := 1 TO 5 DO 
	   BEGIN
		FOR j:=1 TO 20 DO WRITE(ch[i,j]):
		WRITELN;
	   END
END.
