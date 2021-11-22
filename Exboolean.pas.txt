PROGRAM Exboolean(input,output);
(* This program illustrates Boolean Variables
	abd operations on such variables *)

VAR ok,found : BOOLEAN;

BEGIN
	ok:= TRUE;
	found:= FALSE;

	IF ok THEN WRITELN('OK HAS THE VALUE TRUE')
	      ELSE WRITELN('OK HAS THE VALUE FALSE');
	WRITELN;

	IF found THEN WRITELN('FOUND HAS THE VALUE TRUE')
		 ELSE WRITELN('FOUND HAS THE VALUE FALSE');

   	IF ok = found THEN WRITELN('BOTH OK AND FOUND ',
				    'HAVE THE SAME VALUE ');
		      ELSE WRITELN('OK AND FOUND HAVE',
				   ' DIFFERENT VALUES');
END.

