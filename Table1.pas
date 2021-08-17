PROGRAM table1 (input,output);
(* This program illustrates a while loop *)

VAR n,n2,n3: INTEGER;

BEGIN
        WRITELN('             n                 n*n               n*n*n');
        n:=12;                                        (* Intialisation *)
        WHILE n <= 18 DO                              (* Test *)
              BEGIN
                    n2 := n*n;
                    n3 := n*n*n;                      (* Computation *)
                    WRITELN(n:12,n2:12,n3:12);
                    n := n+2;                         (* Increment *)
              END
END.              
