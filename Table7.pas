PROGRAM Table7(input,output);
(*$B-*)
(* PROGRAM USING PROCEDURES *)
(* THIS PROGRAM GENERATES n,n*n & n*n*n
	FOR n=1,2,3,4 & 5 and 7,9,11 & 13  *)

VAR n,n2,n3:INTEGER;
PROCEDURE calc;
		BEGIN
			n2:=n*n;
			n3:=n*n*n;
			WRITELN(n:12,n2:12,n3:12);
		END;
	BEGIN
		WRITELN('	N	N*N	N*N*N');
		FOR n:=1 TO 5 DO calc;
		WRITELN;
		n:=7;
		WHILE	n<= 13 DO
		     BEGIN
			calc;
			n:=n+2;
		     END;
	END;
