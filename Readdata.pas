PROGRAM Readdata(input,output);
(*$B-*)
(* This program uses EOS to read in any no, of data cards *)

VAR age,height,weight:REAL;

BEGIN
	WRITELN('AGE':10,'HEIGHT':10,'WEIGHT':10);
	WRITELN;
	WHILE NOT EOF DO
	     BEGIN
		READLN(age,height,weight);
		WRITELN(age:12:2,height:10:2,weight:10:2);
	     END
END.
