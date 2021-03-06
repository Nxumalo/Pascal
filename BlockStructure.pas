PROGRAM BlockStructure(input,output);
(* This program illustrates Block Structure *)

VAR A,B,C,D,E,F:INTEGER;

	PROCEDURE BLOCK2;
	   VAR D,E,F,G:INTEGER;

		BEGIN(*BLOCK2*)
	           D:=24; E:=25; F:=26; G:=26
	              WRITELN(´*	**BLOCK2 D,E,F,G DEFINED´);
		      WRITELN(´*	**´);
		      WRITE(´*	**		´);
		      WRITELN(´   A   B   C   D   E   F   G´);
 		      WRITE(´*	**		´);
	  	      WRITELN(A:4,B:4,C:4,D:4,E:4,F:4,G:4);
		      WRITELN(´*	**´);
		      WRITELN(´*	**END BLOCK2´);
		END;
	
		PROCEDURE BLOCK3;
           	   VAR C,D,H,J:INTEGER;
			
			PROCEDURE BLOCK4
			   VAR B,F,G,H:INTEGER;

		       		BEGIN(*BLOCK4*)
				  B:=42; F:=46; G:=47; H:=48;
			             WRITELN(´*	 ***	****BLOCK4 B,F,G,H DEFINED´);
			    	     WRITELN(´*	 ***	****´);
			     	     WRITE(´*	 ***	****		´);
			     	     WRITELN(´   A   B   C   E   F   G   H   J´);
          		     	     WRITE(´*	 ***	****	 	´);
			   	     WRITELN(A:4,B:4,C:4,D:4,E:4,F:4,G:4,H:4,J:4);	
		 	   	     WRITELN(´*	 ***	****´);
			     	     WRITELN(´*  ***	****END BLOCK4´);
		        	END;
        		
		    BEGIN(* BLOCK3 *)
		       C:=33; D:=34; H:=38; J:=39
		          WRITELN(´*	 ***BLOCK3  C,D,H,J DEFINED´);
		          WRITELN(´*  ***´);
		          WRITELN(´*  ***			´);
		          WRITELN(´   A   B   C   E   F   G   H   J´);
		          WRITELN(´*  ***			´);
		          WRITELN(A:4, B:4, C:4, D:4, E:4, F:4, G:4, H:4, J:4);
		          WRITELN(´*  ***´);
		          BLOCK4;
		          WRITELN(´*  ***´);
		          WRITELN(´*  ***			´);
		          WRITELN(´   A   B   C   E   F   G   H   J´);	
		          WRITELN(´*  ***			´);
		          WRITELN(A:4, B:4, C:4, D:4, E:4, F:4, G:4, H:4, J:4);
		          WRITELN(´*  ***´);
		          WRITELN(´*  ***END BLOCK3´);
	           END; (*BLOCK3*);

BEGIN(*BLOCK1*)
   A:=11; B:=12; C:=13; D:=14; E:=15; F:=16;
      WRITELN(´*BLOCK1  A,B,C,D,E,F DEFINED´);
      WRITELN(´*´);
      WRITE(´*	 		       ´);
      WRITELN(´   A   B   C   D   E   F´);
      WRITE(´*	 		       ´);
      WRITELN(A:4, B:4, C:4, D:4, E:4, F:4);
      WRITELN(´*´);
      BLOCK2;
      WRITELN(´*´);
      WRITE(´*	 		       ´);
      WRITELN(´   A   B   C   D   E   F´);
      WRITE(´*	 		       ´);
      WRITELN(A:4, B:4, C:4, D:4, E:4, F:4);
      WRITELN(´*´);
      BLOCK3;
      WRITELN(´*´);
      WRITE(´*	 		       ´);
      WRITELN(´   A   B   C   D   E   F´);
      WRITE(´*	 		       ´);
      WRITELN(A:4, B:4, C:4, D:4, E:4, F:4);
      WRITELN(´*´);
      WRITELN(´*END BLOCK1´);
END.


