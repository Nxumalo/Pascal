PROGRAM Readtext(input,output);
(*$B-*)
(* This program reads and prints text *)

VAR ch:CHAR;

BEGIN
	WRITELN('**** THIS PROGRAM ECHOS THE INPUT DATA ****');
	WRITELN;
	WHILE NOT EOF DO
	  BEGIN (* Process all the characters on this line *)
	    WHILE NOT EOLN DO
		BEGIN
		  READ(ch);
		  WRITE(ch);
		END;
	    READLN;	(* Go to next line *)
	    WRITELN; 	(* Print the contents of the line *)
	  END;
END.
