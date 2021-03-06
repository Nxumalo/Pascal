PROGRAM MarriedList(input,output);
(*$B-*)
(* This program access all the employee records, counts
	and list all the employees that are married 
   This program illustrates how a file created by one
   program can be used by a different program 		*)

TYPE details = RECORD
		     name:PACKED ARRAY[1..20] OF CHAR;
		     workno:INTEGER;
		     married:INTEGER; (* 0--NO, 1--YES *)
		     noofkids:INTEGER;
		     totalhrs,totalsalary,totaltaxpaid:REAL;
	       END;

VAR datamaster:FILE OF details;
    persondata:details;
    marriedcount:INTEGER;

BEGIN
	ASSIGN(datamster,'b:staff.dat');
	WRITELN('LIST OF ALL MARRIED EMPLOYEES');
	WRITELN;
	WRITELN('	NAME 	    NO MARRIED 	NOOFKIDS');
	marriedcound:=0;
	RESET(datamaster);
	WHILE NO EOF(datamaster) DO
	   BEGIN
		READ(datamaster,persondata);
		WITH persondata DO 
		    IF married = 1 THEN
		 	BEGIN
			    marriedcount:=marriedcount+1;
			    WRITELN(name,workno:6,married:6,noofkids:11);
			END;
	   END;
 	WRITELN;
	WRITELN('TOTAL NO OF MARRIED EMPLOYEE =',marriedcount:5);
END.
