PROGRAM Real&Int(input,output);

VAR int1,int2,diff : INTEGER;
	r1,r2,realtotal: REAL;
	
BEGIN 
		int1 := 27;
		int2 := 10;
		diff := int1 - int2;
		WRITELN('           INT1           INT2           DIFF');
		WRITELN(int1:12,int2:12,diff:12);
		WRITELN;
		
		r1 := 5.6;
		r2 := 98.24;
		realtotal := r1 + r2;
		WRITELN('           R1             R2             R1+R2');
		WRITELN(r1,r2,realtotal);
		END.
		