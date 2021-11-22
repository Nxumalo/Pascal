PROGRAM Mainline(input,output);
VAR a,b,c:INTEGER;
	
	PROCEDURE proc1;
	VAR a, c:INTEGER;
	
		PROCEDURE proc2;
		VAR b:INTEGER;
		BEGIN (* proc2 *)
		    a:=4; b:=5;
		    WRITELN('IN PROC2 A, B & C = ' a,b,c);
		END; (* proc2 *)

	BEGIN (* proc1 *)
	   c:=6;
	   WRITELN('IN PROC1 A, B & C =', a, b, c);
	   proc2;
	   WRITELN('STILL IN PROC1 A, B & C=', a, b, c);
	END; (* proc1 *)

BEGIN (* main * ) 
   a:=1; b:=2; c:=3;
   proc1;
   WRITELN('  IN MAIN A, B & C=', a, b, c);
END (* main *)
	
