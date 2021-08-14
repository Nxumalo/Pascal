PROGRAM MinChange(INPUT,OUTPUT);
(*$B-*)
VAR cash, no5cents, no1cents, INTEGER;
BEGIN
		READ(cash);
		no5cents := cash DIV 5;
		no5cents := cash MOD 5;
		WRITELN('     CASH NO OF 5 CENTS NO OF 1 CENTS');
		WRITELN(cash:12,no5cents:12,no1cents:12);
		END.
