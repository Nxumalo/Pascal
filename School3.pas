PROGRAM school3(input,output);(*$B-x*)
(* This program lists all classrooms with a capacity >=40 *)

CONST buildmax = 3;
      roommax  = 4;
      forty   = 40;

VAR number,building,room:INTEGER;
capacity:ARRAY[1..buildmax,1..roommax] OF INTEGER;

BEGIN
(* Read in the Capacity of each classroom in each building *)
	FOR building:=1 TO buildmax DO
 	   FOR room:=1 TO roommax DO
		READ(capacity[building,room]);
    	(* Find all rooms that can seat >= 40 people *)
WRITELN('CLASSROOMS WITH CAPACITY >= 40');
WRITELN;
WRITELN('	BUILDING	ROOM CAPACITY');
number:=0;
FOR building :=1 TO buildmax DO
   FOR room:=1 TO roommax DO
      IF capacity[building,room] >= forty THEN 
	BEGIN
	     WRITELN(building:10,room:10,capacity[building,room]:10);
	     number:=number+1;
	END;
IF number = 0 THEN WRITELN('  NO ROOMS BIG ENOUGH');
END.
