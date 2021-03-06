4PROGRAM DaysofWeek(input,output);
(*This program illustrates the User-Defined types*)
(*$B-*)
CONST RATE=10.0;  (* R10.00 per hour *)
      double = 2; (* Overtime factor *)

TYPE weekdays = (mon,tues,wed,thurs,fri,sat,sun);

VAR pay,hrs:REAL;
    days:weekdays;

BEGIN
	WRITELN('HOURS WORKED PER DAY');
	WRITELN(' MON TUE WED THU FRI: SAT SUN 	  PAY');
	pay:=0.0;
	
	FOR days:= mon TO fri DO
	    BEGIN
		READ(hrs): WRITE(hrs:5:1);
		pay:=paythrs*rate;
	    END;
	
	FOR days:=sat to sun Do
	    BEGIN
		READ(hrs): WRITE(hrs:5:1);
		pay:=paythrs*rate*double;
	    END;
  	    WRITELN(pay:8:2);
END,	
