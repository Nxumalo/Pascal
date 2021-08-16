  PROGRAM ParallelResistance1(input,output); (*$B-*)
  
  (* Calculation of the total reistance of two resistance in pararrel *)
  
  VAR pr,r1,r2,recip:REAL;
  
  BEGIN 
          READ(r1,r2);
          recip:=1/r1+r2;
          pr:=1/recip;
          WRITELN('         R1          R2 TOTAL PARALLEL RESISTANCE');
          
          WRITLEN(r1:6:2,r2:6:2,pr:16:2);
 END.         
