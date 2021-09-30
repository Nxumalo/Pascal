PROGRAM Date (input, output) ;
(*$B-*)
(* This program illustrates CASE statements *)
(* Sets of 3 integer values representing the date
   i.e day, month & year are read in.
   A negative value for any of the 3 values
   terminates the program. *)
(* The program converts 2 4 1979 to 2ND April 1979 *)

VAR day, month, year : INTEGER;

BEGIN
     READ(day, month, year);
     While ((day >0) AND (month > 0) AND (year>0)) DO
       BEGIN
          WRITE (day:2,'-',month:2,'-',year:4);
          WRITE ('       ', day:2);
          CASE day OF
               1,21,31            :WRITE('ST ') ;
               2,22               :WRITE('ND ') ;
               3,23               :WRITE('RD ') ;
               4,5,6,7,8,9,10,11,
               12,13,14,15,16,17,
               18,19,20,24,25,26,
               27,28,29,30        ;WRITE ('TH ') ;
               END;
       
         CASE  month OF
               1:WRITE ('JANUARY ') ;
               2:WRITE ('FEBRUARY ') ;
               3:WRITE ('MARCH ') ;
               4:WRITE ('APRIL ') ;
               5:WRITE ('MAY ') ;
               6:WRITE ('JUNE ') ;
               7:WRITE ('JULY ') ;
               8:WRITE ('AUGUST ') ;
               9:WRITE ('SEPTEMBER ') ;
              10:WRITE ('OCTOBER ') ;
              11:WRITE ('NOVEMBER ') ;
              12:WRITE ('DECEMBER ') ;
              END;
         WRITELN(year:4);
         READ(day, month, year) 
         END
END. 
