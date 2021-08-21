PROGRAM IncomeTax(input,output); (*$B-*)
(* An Income Tax Problem that illustrates Nested
   IF ... THEN ... ELSE ... Statements *)
(* The Input Data is a person income (a real value)
   Any negative income will terminate the program *)
(*     Income           Tax   
       
       <= 1000          0
       <= 5000          .10(Income - 1000)
       <= 10000         .20(Income - 5000)        + Tax on 5000
       <= 20000         .30(Income - 10000        + Tax on 10000
       >  20000         .40(Income - 20000        + Tax on 20000 *)
       
VAR    Income,Tax: REAL;  
       Rich,Poor : INTEGER;
       Taxon5000,Taxon10000,Taxon20000:REAL;
       
BEGIN
      Taxon5000 := 400.0;
      Taxon10000  := 1400.0;
      Taxon20000  := 4400.0;
      Poor :=0;
      Rich :=0;
      WRITELN('       INCOME        TAX');
      READ(Income);
      WHILE Income >= 0.0 DO
            BEGIN
                 IF Income <= 1000.0
                    THEN  
                        BEGIN
                             Tax := 0.0;
                             Poor := Poor + 1;
                        END
                    ELSE
                        IF Income <= 5000.0
                                   THEN Tax := (Income-5000.0) * 0.2 
                                       + Taxon5000
                        ELSE IF Income <= 20000.0
                                   THEN Tax:= (Income - 10000.0) * 0.3
                                        + Taxon10000
                                   ELSE
                                      BEGIN
                                            RICH := RICH + 1;
                                            Tax := (Income - 20000.0) 
                                                  * 0.4 + Taxon20000
                                      END;            
                 WRITELN(Income:10:2,Tax:10:2);
                 READ(income);
            END;
      WRITELN;
      WRITELN(Poor:12,' PEOPLE PAID NO TAX AT ALL ');
      WRITELN(Rich:12,' PEOPLE EARNED MORE THAN R20000');
END.
