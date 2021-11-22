PROGRAM Find(input,output);(*$B-*)
(* This program illustrates the use of a Boolean Variable *)

VAR notfound: BOOLEAN;
    i,index:INTEGER;
    val:ARRAY[1..10] OF INTEGER;

BEGIN
	WRITELN('THE 10 DATA VALUES ARE PRINTED');
	FOR i:=1 TO 10 DO
		BEGIN
			READ(val[i]);
			WRITE(val[i]:5);
		END;
	WRITELN; WRITELN;

	i:=1;
	notfound:=TRUE;
	WHILE ((i<=10) AND notfound) DO
	      BEGIN
		IF val[i] > 100 THEN
		   BEGIN
			notfound := FALSE;
			index :=i;
                   END;
		i:=i+1;
	      END;
	IF notfound THEN WRITELN('NO VALUE  >= 100 PRESENT')
		    ELSE WRITELN('FIRST VALUE >= 100 IS',
			 val[index]:5,'  IT IS IN ARRAY ELEMENT',
			 ' VAL[',index:2,']');
END.
		
