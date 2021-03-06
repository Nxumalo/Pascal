PROGRAM	School2(input,output);
(*$B-*)
(*This program finds the largest classroom *)

CONST	buildmax = 3;
	roommax	= 4;

VAR building,room:INTEGER;
    large,largerowindex,largecolumnindex:INTEGER;
    capacity:ARRAY[1..buildmax,1..roommax] OF INTEGER;

BEGIN
(* Read in the Capacity of each classroom in each building *)
	FOR building:=1 TO buildmax DO
	   FOR room:=1 TO roommax DO
		READ(capacity[building,room]);
(* Find the largest room in all the buildings *)

	large:=0;
	largerowindex:=0;
	largecolumnindex:=0;

	FOR building:=1 TO buildmax DO
	   FOR room:=1 TO roommax DO
	      IF capacity[building,room] > large THEN
		    BEGIN
	              	 large:=capacity[building,room];
			 largerowindex:=building;
			 largecolumnindex:=room;
		    END;
        WRITELN('THE CAPACITY OF THE LARGEST ROOM IS',LARGE:3);
	WRITELN('IT IS ROOM',largecolumnindex:5,' OF BUILDING',
		 largerowindex:5);
END.
