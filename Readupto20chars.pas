PROGRAM Readupto20chars(input,output);
(*$B-*)
VAR dummy:CHAR;
    ch:ARRAY[1..20] OF CHAR;
    i:INTEGER;
BEGIN
	WRITELN('1ST 20 CHARACTERS PRINTED');
	WRITELN;
	WRITELN('ANY TRAILING BLANKS IN THESE 20 CHARACTERS',
		'ARE REPLACED BY ASTRICKS');
	WRITELN;
	
	WHILE NOT EOF DO 
	   BEGIN
		FOR i:= 1 TO 20 DO ch[i] :='*';
		i:=1;
		WHILE ((i<=20) AND (NOT (EOLN))) DO
			BEGIN
				READ(ch[i]);
				i := i+1;
			END;
		READLN;
		FOR i:= 1 TO 20 DO WRITE(ch[i]);
		WRITELN;
	   END
END.
				
			
