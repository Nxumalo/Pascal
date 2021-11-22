PROGRAM School1(input,output); (*$B-*)
VAR sum,building,room: INTEGER;
    capacity:ARRAY[1...3,1..4] OF INTEGER;
BEGIN
(* Read in the Capacity of each classroom in each building *)
	FOR building:= 1 TO 3 DO
	   FOR room:= 1 TO 4 DO
	      READ(capacity[building,room]);
(* Print out the capacity o each classroom in each building *)
	WRITELN('			ROOM');
	WRITE('		');
	FOR room:=1 TO 4 DO WRITE(room:10);
	WRITELN;
	WRITELN('   BUILDING');
	FOR building:=1 TO 3 DO	
	   BEGIN
	     WRITE(building:10);
	     FOR room:=1 TO 4 DO WRITE(capacity[building,room]:10);
	     WRITELN;
	   END;
(*Calculation of the CAPACITY of each BUILDING *)
	WRITELN;
	WRITELN('CAPACITY OF BUILDINGS '); WRITELN;
	WRITELN(' 	BUILDING CAPACITY');
	WRITELN;
	FOR building:=1 TO 3 DO
	   BEGIN
		sum:=0;
		FOR room:=1 TO 4 DO sum;=sum + capacity[building,room];
		WRITELN(building:10,sum:10);
	   END;
END.
