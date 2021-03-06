PROGRAM InterChange(input,output);
(*$B-*)
(* This program illustrates variables defined
	inside a procedure 	*)
(* The program reads in setsd of two real values
	It prints out these two values in ascending order.
	Two negative numbers terminates the program. *)

VAR a,b:REAL;
	
	PROCEDURE swop(VAR x,y:REAL);
	VAR temp:REAL;
		BEGIN
			temp:=x;
			x:=y;
			y:=temp;
		END;

	BEGIN
		READ(a,b);
		WRITELN('	LOW	HIGH');
		WRITELN((a>= 0.0 AND (b>=0.0)) DO
			BEGIN
				IF a>b THEN swop(a,b);
				WRITELN(a:10:2,b:10:2);
				READ(a,b);
			END;
	END.
