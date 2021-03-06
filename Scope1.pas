PROGRAM Scope1(input,output);

(* This program illustrates call by REFERENCE
			and call by VALUE       *)

VAR a,b,c:INTEGER;
	
	PROCEDURE proc1(VAR x:INTEGER; b:INTEGER; VAR c:INTEGER);
 -----------BEGIN
|		 x:=4;
|   		 b:=b+3;
|		 c:=6;
|		WRITELN(' IN PROC1 	X=',
|			  x:2,' B=',b:2,' C=',c:2);
|  ........ END;
|  !	
|  !    BEGIN (* Main Program *)
|  ! 	    a:=1;
|  !	    b:=2;
|  !	    c:=3;
|  !	    WRITELN('INITIALLY IN MAIN PROGRAM A=',
|  !			a:2,' B=',b:2,' C=',c:2);
|  !	    WRITELN;
|  !        PROC1(a,b,c);
|  !	    WRITELN;			------------
|  !	    WRITELN('FINALLY IN MAIN PROGRAM A=',   |
|  !			a:2,' B=',b:2,' C=',c:2);   |
|  !   END.					    |
|  !						    |
|  !...............................		    |
|  !			   	   !		    |
 ------------------            	   !                |
                   |          	   !                |
 Stack while   Stack Initially   Stack after	Stack finally   
 Initially     on entry to 	 statements     on return to
 in Main       PROC1   		 of PROC1	Main program
 Program                         executed

		  ----		  ----
	      b  |  2 |       b  |  5 |
    ----          ----            ----            ----
  c|  3 |     c c|  3 |       c c|  6 |         c|  6 |
    ----          ----            ----            ----
    ----          ----            ----            ----
  b|  2 |       b|  2 |         b|  2 |         b|  2 |
    ----          ----            ----            ----
    ----          ----            ----            ----
  a|  1 |     x b|  1 |       x a|  4 |         a|  4 |
    ----      |   ----        |   ----            ----
	      |		      |
	      |	              |
	       -------|-------
		      |
	       Names of variables
	       while in PROC1.

	
