PROGRAM Table8(input,output);
(*$B-*)
(* PROGRAM NOT USING PROCEDURES *)
(* THIS PROGRAM GENERATES 
	n,n*n & n*n*n for n=1,2,3,4 & 5
    and p,p*p & p*p*p for p=7,9,11, & 13 *)

VAR n,n2,n3,p,p2,p3:INTEGER;
BEGIN
	WRITELN('	N	N*N	N*N*N');
	FOR n:=1 TO 5 DO
		BEGIN
			n2:=n*n;
			n3:=n*n*n;
			WRITELN(n:12,n2:12,n3:12)
		END;
	WRITELN;
	p:=7;
	WHILE p<= 13 DO
		BEGIN
			p2:=p*p;
			p3:=p*p*p;
			WRITELN(p:12,p2:12,p3:12);
			p:=p+2;
		END;
END.
