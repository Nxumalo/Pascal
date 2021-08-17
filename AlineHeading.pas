PROGRAM AlineHeading(input,output);
(*$B-*)
VAR hrs,mins:INTEGER;
        secs:REAL;
        
BEGIN
      WRITELN('HOURS':6,'MINUTES':8,'SECONDS':10);
      READ(hrs,mins,secs);
      WHILE hrs>0 DO
            BEGIN
                WRITELN(hrs:6,mins:8,secs:10:2);
                READ(hrs,mins,secs);
            END
END.            
