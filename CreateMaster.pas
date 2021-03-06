PROGRAM CreateMaster(input,output);
(*$B-*)
(* This program creates the master file of staff details *)

TYPE details = RECORD
			name:PACKED ARRAY[1..20] OF CHAR;
			workno:INTEGER;
			married:INTEGER; (* 0--NO, 1--YES *)
			noofkids:INTEGER;
			totalhrs.totalsalary,totaltaxpaid;REAL;
	       END;

VAR datamaster:FILE OF details;
    persondata:details;
    i:INTEGER;

BEGIN
	ASSIGN(datamast,'b:staff.dat');
	REWRITE(data,aster); 
(* This clears the file and initialises the file pointer to 
	the first record of the file 			*)
	WRITELN('	NAME		NO MARRIED NOOFKIDS');
	
	WITH persondata DO
	BEGIN
		totalhrs:=0.0;
		totalsalary:=0.0;
		totaltaxpaid:=0.0;
	
		FOR i:=1 TO 20 DO READ(name[i]);
		(* Read 1st record*)		
		READLN(workno,married,noofkids);

		WHILE (name <> 'last person	') DO
		     BEGIN
			WRITELN(name,workno:5,' ':5,married:1,noofkids:10);
			WRITE(datamaster,persondata);
			FOR i:=1 TO 20 DO READ(name[i]);
			REALN(workno,married,noofkids);
		     END:
		END;
	CLOSE(datamaster);
END.	

