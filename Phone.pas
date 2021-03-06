PROGRAM Phone(input,output);
(*$B-*)
(* This program illustrates an ARRAY of RECORDS as well as
	operations on elements of this array of records    *)

TYPE ntry = RECORD 
		name:ARRAY[1...10] OF CHAR;
		telno:INTEGER;

VAR subscriber:ARRAY[1...5] OF ntry;
	phoneno:INTEGER;
	
		PROCEDURE writesubscriber(recordno:INTEGER);
		    VAR i:INTEGER;
		      BEGIN
			WITH subscriber[recordno] DO
			  BEGIN
			    FOR i:= 1 TO 10 DO WRITE(name[i]);
		 	    WRITELN(telno);
			  END;
		      END;	

	PROCEDURE setupdirectory;
	VAR i,j:INTEGER;
	BEGIN
	   WRITELN(' TELEPHONE DIRECTORY LIST');WRITELN;
	   FOR i:= 1 TO 5 DO
		BEGIN
		  FOR j:=1 TO 10 DO READ(subscriber[i].name[j]);
		  READ(subscriber[i].telno);
		  writesubscriber(i);
		END; WRITELN('LIST OF QUERIES');WRITELN;
	END;
	
	PROCEDURE listsubscriberof(phoneno:INTEGER);
	VAR i:INTEGER:
	    found:BOOLEAN;
	BEGIN
	    i:=1; found:=FALSE;
	    WHILE ( (i<=5) AND (NOT found)) DO
		 IF subscriber[i].telno <> phoneno
			THEN i:= i+1;
			ELSE found:=TRUE;   
	
	    IF found THEN writesubscriber(i)
		     ELSE WRITELN('NO SUBSCRIBER WITH NO.',phoneno:5);
		END;

	BEGIN
		setupdirectory;
		READ phoneno > 0 DO  
			BEGIN
				listsubscriberof(phoneno);
				READ(phoneno);
			END;
	END. 



