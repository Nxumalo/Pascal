PROGRAM ParallelResistance5(input,output) (*$B-*)

(* Calculation of the total reistance of two resistance in parallel *)

VAR pr,r1,r2,recip:REAL;

BEGIN
        READ(r1,r2)l
        WRITELN('R1=',r1:6:2, ' R2=', r2:6:2);       (*  DEBUG WRITE *)
        recip:= (1/r1) + (1/r2);
        WRITELN('RECIP=', recip:10:4);               (*  DEBUG WRITE *)
        pr:=1/recip;
        WRITELN('       R1         R2         TOTAL PARALLEL RESISTANCE');
        WRITELN(r1:6:2,r2:6:2,pr:16:2);
END.       
