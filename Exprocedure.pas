PROCEDURE Exprocedure(input,output);

VAR a,b,c:REAL;
	
	PROCEDURE procedurename;
		BEGIN
		     ... <-----------<----------
		     ...			|
		     ...			|
		     ...			|
  ----<-------------				|
 |		END;				|
 |	BEGIN	(* of main prog. *)		|
 |		...				|
 | 		...				|
 |		procedurename;	------>---------	
  ----------->  ...
		...
	END.
