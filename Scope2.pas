PROCEDURE Scope(input,output);
VAR a,b,c:INTEGER;

	PROCEDURE first;
	VAR a:INTEGER;
		BEGIN
		   a:=10; b:=20;
		   WRITELN('IN FIRST', a, b, c);
		END;
	
	PROCEDURE Second;
	VAR b:INTEGER;
		BEGIN
		   a:=100; b:=200;
		   WRITELN('IN SECOND', a, b, c);
		END;

	BEGIN(* Main *)
	   a:=1; b:=2; c:=3;
	   first;
	   WRITELN('INITIALLY IN MAIN', a,b,c);
	   second;
	   WRITELN('FINALLY IN MAIN'  , a,b,c);
	END.
	
