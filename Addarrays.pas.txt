PROGRAM Addarrays(input,output);
(*$B-*)
(*This program illustrates the use of USER-DEFINED types
  when an array is passed as a parameter to a procedure *)

CONST max=5;

TYPE matrix = ARRAY [1..max] OF INTEGER;

VAR a,b,result:matrix;
	i:INTEGER;
	 
	   	PROCEDURE add(x,y:matrix: VAR z:matrix);
		   VAR j:INTEGER;
			BEGIN
		 	 FOR j:= TO max DO z[j]:=x[j]+y[j];
			END;
	
	PROCEDURE readmatrix(VAR m:matrix);
	VAR i:INTEGER;
	BEGIN
	  FOR i:=1 TO max DO WRITE(m[i]:5);
	END;

	PROCEDURE writematrix(VAR m:matrix);
	VAR i:INTEGER;
	BEGIN
	  FOR i:=1 TO max DO WRITE(m[i]:5);
	  WRITELN;WRITELN;
	END;

BEGIN
	WRITE('1ST MATRIX');
	readmatrix(a);
	writematrix(a);

	WRITE('2ND MATRIX');
	readmatrix(b);
	writematrix(b);

	add(a,b,result);

	WRITE(' SUM MATRIX');
	writematrix(result);

END.
