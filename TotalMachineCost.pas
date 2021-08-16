PROGRAM TotalMachineCost(input,output);
(* This program calculates the totla cost of all the candy machines bought.
 It also illustrates the use of a comment statements in Pascal programs*)
 
VAR price,    (* the price, in Rand, of a Candy Machine*)
    number,   (* the number of candy-machines bought*)
    totalcost: REAL;
    
BEGIN   (* main program *)
        price := 1.10;    (* R1.10*)
        number := 5.0;
        totalcost := price * number;
        WRITELN(number:12,price:12,totalcost:12);
END.    (* main program *)        

