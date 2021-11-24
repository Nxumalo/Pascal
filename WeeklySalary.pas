PROGRAM WeeklySalary(input,output);(*$B-*)
(*This program illustrates USER-DEFINED TYPES *)
(* Employees are paid every Monday for the no. of 
 	hours they worked during the previous 7 days
   i.e. from Monday to Sunday
   they earn Monday to Friday ........  BASIC RATE
	     Saturday	      ... 1.5 * BASIC RATE
	     Sunday           ... 2.0 * BASIC RATE
   The employee no.(integer) and the no. of hours worked
   each day of the week(real) are input on cards and the
   program terminates when a negative employee no. is
   read.					       *)

CONST basicrate=5.00;
TYPE  days = (monday,tuesday,wednesday,thursday,
	      friday,saturday,sunday,endday);

VAR employeeno:INTEGER;
    rate,weeklysal:REAL;
    workingday:days;
    noofhours:ARRAY[monday...sunday] OF REAL;

BEGIN
     WRITELN('EMPLOYEE NO	HOURS PER DAY'
	     '		 WEEKLY SALARY');
     WRITELN(' ':11,' MON TUE WED THU FRI SAT SUN ');
     READ(employeeno);
     WHILE employeeno >= 0 DO
	BEGIN
	     WRITE(employeeno:8,'   ');
	     workingday:=monday;
	     WHILE workingday<= sunday DO
		   BEGIN
			READ(noofhours[workingday]);
		 	WRITE(noofhours[workingday]:5:1);
			workingday:=SUCC(workingday);
		   END;
	     weeklysal:=0.0;
	     FOR workingday:=monday TO sunday DO
		BEGIN
		
		   CASE workingday OF
			monday,tuesday,
			wednesday,thursday,
			friday	  :rate:=basicrate;
			saturday  :rate:=1.5*basicrate;
			sunday    :rate:=2.0*basicrate;
		   END;
         	   weeklysal:=weeklysal+noofhours[workinday]*rate;
		END;
	     WRITELN(weeklysal:12:2);
	     READ(employeeno);
	END;
END.




 
