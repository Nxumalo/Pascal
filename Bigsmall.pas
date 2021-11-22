PROGRAM Bigsmall(input,output);
(*$B-*)
(* This program finds the largest and smallest values
   of a set of values. These values, BIG & SMALL, are	
   printed. A list of all the values X. BIG-X and 		
   X - SMALL are printed			*)

(* Input data is (1) The number of subsequent data 
	             values to be read (noofvalues)
		 (2) All the data values	*)

CONST	max=100;
VAR	big,small:REAL;
	noofvalues,i:INTEGER;
	value;ARRAY[1...max] OF REAL;
	bigdiff,smalldiff:REAL;

BEGIN
	READ(noofvalues);
	IF noofvalues > max
	   THEN WRITELN(' ERROR NO-OF-VALUES',noofvalues,'>',max:4)
	   ELSE
		BEGIN
		 	big   := -1000000.0;   (* Initialization *)
			small :=  1000000.0;   (* Initialization *)
			FOR  i:= 1 TO noofvalues DO
			     BEGIN
			       READ(value[i]);
			       IF value[i] > big THEN big := value[i];
			       IF value[i] < small THEN small := value[i];
			     END;
			WRITELN('BIG =', big:10:2,' SMALL =' small:10:2);
			WRITELN;
			WRITELN(' 	X 	BIG-X		X-SMALL');
			FOR i:= 1 TO noofvalues DO
				BEGIN
					bigdiff := big-value[i];
					smalldiff := value[i] - small;
					WRITELN(value[i]:10:2,bigdiff:10:2,
							smalldiff:10:2);
				END;
		END;
END.	 	
