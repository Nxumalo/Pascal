PROGRAM CommonError(input,output);
(*$B-*)
(* This program illustates a very common error
	that occurs when parameters are passed to
   a procedure using call by reference.		*)
(* This program should calculate the volume of a 
	sphere for radii 1,2,3, ... ,9,10	*)

VAR factor,r,volume:REAL;

	PROCEDURE spherevolume(VAR x,factor,vol:REAL);
		BEGIN
		     x:=x*x*x;
		     vol:=factor*x;
		END;

	BEGIN
	     factor:=(4.0/3.0)*3.141593;
	     WRITELN('RADIUS  VOLUME OF SPHERE');
	     WRITELN('		(4/3)*PI*R*R*R ');
	     WRITELN;
	     r:=1.0;
	     WHILE r<= 10.0 DO
		  BEGIN
			spherevolume(r,factor,volume);
			WRITELN(r:6:1,volume:15:2);
			r:=r+1;
		  END;
	END.
