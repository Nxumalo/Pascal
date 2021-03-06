PROGRAM Choice(input,output);	(*$B-*)
(* This program illustrates the use of the function
	'fac' which calculates the  factorial of a number.
   The program itself computes the number of ways
   NCR you can choose R objects from N objects.
	NCR = N! / (R!*(N-R)!)
   Negative values for either or both of
   N and R terminates the program *)

VAR ncr:REAL;
    n,r:INTEGER;

    FUNCTION fac(x:INTEGER):INTEGER;
    (* x! = 1*2*3* .... * (x-1)*(x)  *)
    VAR i,product:INTEGER;
		BEGIN
			product:=1;
			FOR i:=1 TO x DO product:=product*i;
			fac:=product
		END;
	BEGIN
	     n:=1;
	     READ(n,r);
	     WRITELN('	N	R	NCR');
	     WHILE((n>=1) AND (r>=1)) DO
	          BEGIN
	            IF r>= THEN WRITELN(n:8,r:8, '  ERROR  R>=N')
			ELSE
			  BEGIN
				ncr:=fac(n)/(fac(r)*fac(n-r));
				WRITELN(n:8,r:8,ncr:10:2);
			  END;
		    READ(n,r);
		  END
	END.
				
