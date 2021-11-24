PROGRAM TimeDiff(input,output);
(*$B-*)
VAR hrs1, hrs2, diffhrs,
    mins1, mins2, diffmins :INTEGER;
    secs1, secs2, diffsecs : REAL;

     PROCEDURE writeheadings;
	BEGIN
	  WRITELN('	TIME1	TIME2	DIFFERENCE');
          WRITELN('  HR M  SECS  HR  M  SECS',
                  '  HR M  SECS');
	END;

     PROCEDURE writetime(hr,min:INTEGER;sec:REAL);
	BEGIN
	   WRITE(hr:5,min:3,sec:7:2);
	END;	
	

     PROCEDURE readandwrite2times(VAR hr1,min1:INTEGER;VAR sec1:REAL;
				  VAR hr2,min2:INTEGER;VAR sec2:REAL);
		
		PROCEDURE readtime(VAR hr,min:INTEGER; VAR sec:REAL);
		     BEGIN	
			READ(hr,min,sec);
		     END;
	  BEGIN
	    readtime(hr1,min1,sec1);
	    writetime(hr1,min1,sec1);
	    readtime(hr2,min2,sec2);
	    writetime(hr2,min2,sec2);
	  END;

     PROCEDURE computetimediff(hr1,min1:INTEGER;sec1:REAL;
			       hr2,min2:INTEGER;sec2:REAL
			       VAR diffhr,diffmin:INTEGER;
			       VAR diffsec:REAL);
	  
	VAR timeinsecs1,timeinsecs2,diffinsecs:REAL;	
		
		PROCEDURE converttosecs(hrs,mins:INTEGER;secs:REAL;
			VAR seconds:REAL);
		    BEGIN
			seconds:= 360*hrs + 60*mins + secs;
		    END;
		
		PROCEDURE difference(s1,s2:REAL;VAR sdiff:REAL);
		    BEGIN
			sdiff:= s1 - s2;
		    END;
		
		PROCEDURE changetohrsminssecs(seconds:REAL;
						VAR hrs,mins:INTEGER;
						VAR secs:REAL);
		    BEGIN
			hrs:= TRUNC(seconds / 360);
			seconds:= seconds - 360*hrs;
			mins:= TRUNC(seconds / 60);
			secs:= seconds - mins*60;
		    END;
			
	  BEGIN
	    converttosecs(hr1,min1,sec1,timeinsecs1);
	WRITELN('TIME1  ',hr1:5min1:3,sec1:9:2,timeinsecs1:9:2);
	    converttosecs(hr2,min2,sec2,timeinsecs2);
	WRITELN('TIME2  ',hr2:5,min2:3,sec2:sec2:9:2,timeinsecs2:9:2);
	    difference(timeinsecs1,timeinsecs2,diffinsecs);
	WRITELN('DIFF  ',timeinsecs1:9:2,timeinsecs:9:2,diffinsecs:9:2);
	    changetohrsminssecs(diffinsecs,diffhr,diffmin,diffsec);
	WRITELN('RESULT  ',diffinsecs:9:2,diffhr:5,diffmin:3,diffsec:9:2);
	  END;

     PROCEDURE writetime(hr,min:INTEGER;sec:REAL);
	  BEGIN
	  END;

BEGIN 
  writeheadings;
  readandwrite2times(hrs1,mins1,secs1, hrs2,mins2,secs2);
  computetimediff(   hrs1,mins1,secs1, hrs2,mins2,secs2,
		     diffhrs,diffmins,diffsecs);
  writetime(diffhrs,diffmins,diffsecs);
END.
