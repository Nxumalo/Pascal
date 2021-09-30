PROGRAM CardSuit(input,output) ;(*$B-*)
(* This program illustrates CASE statements. *)

(* An integer in the range 1-4 is read in.
   The value 1 represents CLUBS
             2            DIAMONDS
             3            HEARTS
             4            SPADES.
   The value of the integer and the suit it
   represents is printed. The total no. of spades
   read in is counted and printed.
   The program terminates after reading a negative value *)

VAR suits, noofspades: INTEGER;

BEGIN

     noofspades := 0;
     WRITELN('SUIT NO.    SUIT')
     READ(suit) ;
     WHILE suit > 0 & DO
           BEGIN
              WRITE(suit:4,'            ') ;
              CASE suit OF
                 1:  WRITELN ('CLUBS') ;
                 2:  WRITELN ('DIAMONDS');
                 3:  WRITELN ('HEARTS') ;
                 4:  BEGIN
                       WRITELN('SPADES') ;
                       noofspades :=noofspades +1;
                     END;
                 END;
              READ(suit)
           END;
     WRITELN;
     WRITELN('NO. OF SPADES = ', noofspades:4)
END.
