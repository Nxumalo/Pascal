PROGRAM Area(input,output);
(*$B-*)
TYPE figure = (square,triangle,hexagon);

VAR shape:figure;
    area,side:REAL;
    areatype:INTEGER;

BEGIN
     WRITELN('	   FIGURE SIDE 		AREA');
     WRITELN;
     READ(side,areatype);
     WHILE side>0.0 DO
	  
	  BEGIN
            CASE areatype OF
   		 1: shape:=square;
		 2: shape:=triangle;
		 3: shape:=hexagon;
	    END;

	    CASE shape OF
     		
		 square: BEGIN
			  area:=side*side;
     			  WRITELN('	SQUARE',side:6:2,area:8:2);
			 END;
		
		 triangle: BEGIN
			    area:=(SQRT(3.0)/4.0)*(side*side);
			    WRITELN('TRIANGLE',side:6:2,area:8:2);
		           END;
		 
		 hexagon: BEGIN
			   area:=(3*SQRT(3.0)/2.0)*side*side;
			   WRITELN('	HEXAGON',side:6:2,area:8:2);
			  END;
		 END;
	   		    		 
	    READ(side, areatype);
	   END;
END.	

