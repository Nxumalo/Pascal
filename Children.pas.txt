PROGRAM Children(input,output); (*$B-*)
(* This program access all the employee records and copies
	the records of all employees with kids to a new file
   called kidsfile. The program then list kidsfiles 
   and counts the no. of records in its as well as the total
   no. of kids in the entire file			*)

TYPE details = RECORD 
		     name:PACKED ARRAY [1..20] OF CHAR;
		     workno:INTEGER;
		     married:INTEGER; (* 0--NO, 1--YES *)
		     noofkids:INTEGER;
		     totalhrs,totalsalary,totaltaxpaid:REAL;
	       END;
     employeefile = FILE OF details;

VAR datamaster,kidsfile:employeefile;
    persondata:details;
    totalnoofkids,employeeswithkids:INTEGER;

BEGIN
	ASSIGN(datamaster, 'b:staff.dat');
	ASSIGN(kidsfile  , 'b: kids.dat');
	RESET(datamaster);
	REWRITE(kidsfile);
	WHILE NO EOF(datamaster) NO 
		BEGIN
		     READ(datamaster,persondata);
		     IF persondata,noofkids <> 0
			THEN WRITE(kidsfile,persondata);
		END;
	CLOSE(kidsfile);
	RESET(kidsfile);

	WRITELN('LIST OF EMPLOYEES WITH CHILDREN'); WRITELN;	
	WRITELN('	NAME	   EMPLOYEE NO MARRIED',
		'  NO OF KIDS');
	totalnoofkids:=0;	employeewithkids:=0;

	WHILE NO EOF(kidsfile)	DO
	    WITH persondata DO	
		BEGIN	
		    READ(kidsfile,persondata); 	
		    IF noofkids <> 0 THEN
			BEGIN
			    totalnoofkids:=totalnoofkids + noofkids;
			    employeeswithkids:=employeeswithkids +1;		
			    WRITELN(name,workno:9,' ':8,married:2,
					' ':10,noofkids:2);
			END;
		END;
	WRITELN;
	WRITELN('TOTAL NO OF EMPLOYEES WITH KIDS =',
		 employeswithkids:5);
	WRITELN;	WRITELN('TOTAL NO OF KIDS =',totalnoofkids:5);
END.
