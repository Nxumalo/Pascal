PROGRAM OldYoung (input,output); (*$B-*)
(* THis progragm illustrates the IF ... THEN ... ELSE ... statements*)
(*  THis programs reads in the age as a REAL number of any number of people
    It is terminated by a negative age. ALll ages read in are listed.
    The program counts the no. of people under 21 and those >= 21. 
    The average age of both age groups are calculated and printed. *)
    
VAR Age, SumOld, SumYoung, avOldage, avYoungage : REAL;
    Old, Young : INTEGER;
    
BEGIN
      Old := 0;
      Young = 0;
      SumOld = 0.0;
      SumYoung = 0.0;
      WRITELN('         YOUNG         OLD');
      READ(age);
      WHILE age>0.0 DO
            BEGIN
                  IF Age >= 21.0 THEN 
                                    BEGIN
                                        WRITELN('             ', Age:10:1);
                                        Old := Old+1;
                                        SumOld := SumOld + Age;
                                    END (* NOTE NO ' ; ' *)
                                 ELSE
                                     BEGIN
                                         WRITELN(Age:10:1);
                                         Young := Young + 1;
                                         SumYoung := SumYoung + Age;
                                     END;    
                   READ(Age)
            END;
      IF Young <> 0         THEN avYoungage := SumYoung/Young
                            ELSE avYoungage := 0.0;
      IF Old <> 0         THEN avOldage := SumOld/Old
                            ELSE avOldage := 0.0;                
      WRITELN;
      WRITELN('Av. under-21 = ', avYoungage:5:1);
      WRITELN('Av. 21 and Over = ', avOldage:5:1);
END;      
