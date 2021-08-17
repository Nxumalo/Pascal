PROGRAM Table2(input,output);

(* This program illustrates the REPEAT ... UNTIL ... loop *)

VAR n, n2, n3: INTEGER;

BEGIN
      WRITELN('              n              n*n                n*n*n');
      n:=21;                                (* Initialisation *)
      REPEAT
          n2:= n*n;
          n3:= n*n*n;                       (* Computation *)
          WRITELN(n:12,n2:12,n3:12);
          n:= n+3;                          (* Increment *)
      UNTIL  n>30;                          (* Test *)
END.      
