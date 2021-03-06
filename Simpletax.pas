PROGRAM Simpletax(input,output);
(*$B-*)
(* This program illustrates the use of a CONSTANTS   *)
(* Tax is calculated as follows: 
	Income <= 1000.0 	tax = 0
	Income >  1000.0	tax = (income-1000.0)*0.1 *)
(* This program terminates when a negative value for
	the income is read in				*)

CONST notch1max = 1000.0;
	rate1 = 0.0;
	rate2 = 0.1;

VAR income, tax : REAL;

BEGIN
	WRITELN('	INCOME 		TAX');
	READ(income);
	WHILE	income > 0.0	DO
		BEGIN
			IF income <= notch1max
				THEN tax:= income*rate1
				ELSE tax:= (income-notch1max)*rate2;
			WRITELN(income:10:2,tax:10:2);
			READ(income);
		END
END.	
