PROGRAM TimeDifference(input,output); (*$B-*)
(*This program illustrates RECORDS and operations on records *)

TYPE time = RECORD
		hrs: INTEGER;
		mins: INTEGER;
		secs: REAL;
	    END;

VAR starttime,finishtime,interval:time;
	PROCEDURE printheadings;
	     BEGIN
               WRITELN('STARTTIME':15,'FINISHTIME':18,'INTERVAL':18);
	       WRITELN;
	       WRITELN(' HRS MINS SECS	  HRS MINS SECS',
			'	HRS MINS SECS');
	       WRITELN;
	     END;

	PROCEDURE readin(VAR t:time);
	    BEGIN
	 	READ(t.hrs, t.mins, t.secs);
	    END;

	PROCEDURE writeout(t:time);
	    BEGIN
		WITH t DO WRITE(hrs:5, mins:5, secs:5:1, '	');
	    END;

	PROCEDURE calctimediff(t1,t2:time;VAR t3:time);
	 VAR time1,time2,diff:REAL;
	    BEGIN
		(* Time diff in secs is calculated *)
		time1:= 3600*t1.hrs + 60*t1.mins + t1.secs;
		time2:= 3600*t2.hrs + 60*t2.mins + t2.secs;
		diff:= time2 - time1;
		(* Time diff is reconverted to hrs, mins & secs *);
		
		WITH t3 DO
		  BEGIN
			hrs:= TRUNC(diff / 3600);
			diff:= diff - hrs*3600;
			mins:= TRUNC(diff / 60);
			secs:= diff - mins*60;
		  END;
	   END;

BEGIN
	printheadings;
	WHILE NOT EOF DO
	BEGIN
		readin(starttime);
		writeout(starttime);
		readin(finishtime);
		writeout(finishtime);
		calctimediff(starttime,finishtime,interval);
		writeout(interval);
		WRITELN;
	END;
END.


