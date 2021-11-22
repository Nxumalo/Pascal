PROGRAM Illustratepackedarrays(input,output)
(*$B-*)
(* This program illustrates PACKED CHARCTER ARRAYS *)
(* The name (20 characters) and telephone no. (integer)
	of a list of subsribers is inputted and printed.
	The program is terminated by reading in 20 asterisks
	for a subscribers name.				*)

VAR subscriber,lastsubscruber:PACKED ARRAY[1..20] OF CHAR;
	i,telno: INTEGER;
BEGIN
	(* INITIALISATION *)
	lastsubscriber := '****************';
	subscriber     := 'starting 	   ';
	WRITELN('	LIST OF SUBSCRIBERS');
	WRITELN;
	WRITELN('	NAME 		TEL NO.');
	(* END OF INITIALISATION *);

	WHILE subscriber <> lastsubscriber DO
	   BEGIN 
		FOR i:=1 TO 20 DO READ (subscriber[i]);
		WRITE(subscriber);
		IF subscriber <> lastsubscriber THEN
		   BEGIN
			READLN(telno);
			WRITELN(telno:12);
		   END
	   END;
	WRITELN;
END.
