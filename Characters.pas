PROGRAM Characters(input,output);
(*$B-*)
(* This program reads in and list exactly 3 telephone
	subscriber entries each of which consists of 20 chacters
	and an integer telephone number. The program also
	illustrates simple CHARACTER reads. *)

VAR ch:CHAR;
	i,j,telno:INTEGER;

BEGIN
	WRITELN('	NAME		PHONE NO');
	WRITELN;
	FOR j := 1 TO 3 DO
            BEGIN
              FOR i := 1 TO 20 DO (* Read & print 20 charcters *)
		BEGIN
		   READ(ch);
		   WRITE(ch);
		END;
	      READLN(telno);
	      WRITELN(telno:10);
	    END;
END.
