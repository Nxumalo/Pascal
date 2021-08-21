PROGRAM AgeCount(input,output); (*$B-*);

(* This program illustrates IF ... THEN ... statements *)

(* This program reads in any number of peoples' ages and 
  calculates:
    (a) The number of people over 65
    (b) The number of people over 60. and
    (c) The average age of the people over 60.
  finally each of these values is printed.
  
  The program is terminated by reading a negative number *)
  
VAR Over65Total, Over65Total : INTEGER;
    Age, SumOver60, AverageOver60 : REAL;
    
    
BEGIN
      Over65Total := 0;
      Over60Total := 0;
      SumOver60 := 0.0;
      
      READ(Age);
      WHILE Age >= 0.0 DO
            BEGIN
                  IF Age > 65.0 THEN Over65Total := Over65Total +1;
                  IF Age > 60.0 THEN
                                    BEGIN
                                          Over60Total := Over60Total +1;
                                          SumOver60 := SumOver60 + Age;
                                          END;
                  READ(Age)                        
            END;
      WRITELN('No. of people over 65 years = ', Over65Total :5);
      WRITELN('No. of people over 60 years = ', Over60Total :5);
      IF Over60Total > 0 THEN
         BEGIN
              AverageOver60 := SumOver60/Over60Total;
              WRITELN('Av. age of people over 60 yrs = ', AverageOver60:6:1)
         END     
END.      
    
