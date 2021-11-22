PROGRAM Scope(input,output);

VAR a,b,c:INTEGER;

	PROCEDURE one:
	VAR x,y:INTEGER;
		BEGIN
		     X:=4;
		     Y:=5;
		     WRITELN(a,b,c);
  			...
			...------>------
			...		|
		END;			|		
					|
	BEGIN				|
     	     a:=1;			|
	     b:=2;			|		
	     c:=3;			|
	     WRITELN(a,b,c);		|
             ...			|
	     ...;----->-------    	|		
	     one;	      |		|
	     ...	      | 	|
	     WRITELN(a,b,c);  |		|
	     ...	      |      	|
	     ...------>-------|---------|----------
	END.		      |         |	   |
			      |	        |          |
			      |         |	   |
		       STACK while  STACK while  STACK when
		       in	    in	         your return
		       MAIN prog.   Procedure    to Main prog
				    
				      -------
			            b|	 5   |
				      -------
				    a|   4   | 
			-------	      -------	   -------
		      c|   3   |    c|	 3   |   c|   3   |
			-------	      -------	   -------
			-------	      -------	   -------
		      b|   2   |    c|	 2   |   c|   2   |
			-------	      -------	   -------
			-------	      -------	   -------
		      a|   1   |    a|	 1   |   a|   1   |
			-------	      -------	   -------
