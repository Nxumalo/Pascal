PROGRAM Table9(input,output);
(*$B-*)
(* THIS PROGRAM GENERATES
	n*,n*n & n*n*n for n = 1,2,3,4 & 5
   AND p,p*p & p*p*p for p = 7,9,11 & 13
   USING ONE PROCEDURE WITH PARAMETERS   *)

VAR n,n2,n3,p,p2,p3:INTEGER;
	
	PROCEDURE calc (VAR x,x2,x3:INTEGER);
		BEGIN
			x2:=x*x;
			x3:=x*x*x;
			WRITELN(x:12,x2:12,x3:12)
		END;

	BEGIN
		WRITELN('	N	N*N	N*N*N');
		FOR n:=1 TO 5 DO calc(n,n2,n3);
		WRITELN;
		p:=7;
		WHILE p <= 13 DO
			BEGIN
				calc(p,p2,p3);
				p:=p+2;
			END;
	END.
