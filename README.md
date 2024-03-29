# TURBO Pascal
AN INTRODUCTION TO 
PASCAL PROGRAMMING
	
|	Ch1 INTRODUCTION
	
		1.1 INTRODUCTION
			
			Pascal is a high-level computer programming language.
			It was created by N Wirth in the late 1060's and named
			after the french scientist Blaise Pascal.
			
			A computer is a machine which is cable of obeying some
			predifined finite set of instructions. 

			While a computer performs operations very fast it's
			incapable of original thought. Humans have to tell a
			computer what to do. Humans use a high-level computing 
			language like pascal,c++,C#,java or python to do this.
			We compose a set of instructions called programs, that 
			tells a computer exactly what to do.
		
			The computer stores these programs in memory and subsequently 
			execytes this program automatically one instruction after another.

		1.2 A SIMPLE EXAMPLE

			PROGRAM Addition(input,output);
			VAR total:INTEGER;
			BEGIN
				total:= 3+5;
				WRITELN(total);
			END.
		
		1.2 A SIMPLE COMPUTER SYSTEM

			The hardware of a simple micro-computer system is shown
			
 					.....................
					.		    .     ---------
					.   --------------  .	 | Visual  |
					.  |   	MEMORY    | .	 | Display |
					.  |--------------| .	 | unit    |
					.  | Central      | .	 | (VDU or |	
			       --->--------| Processing   |-->---| Screen) |		    
			      |         .  | Unit	  | .  |  ---------
  			      |		.   --------------  .  |       --------	
			      |         .  	   |	    .  |      |	Line   |
		       	 ---------	.	   |	    .	--->--|	Printer|
			|qw	op|	.  	-------     .	      |        |
			|as     kl|     .      |  ---  |    .          -------- 
			|zx     nm|     .      |  ---  |    .
			 ---------      .	-------     .
                     			.      |  ---  |    .
					.      |  ---  |    .	
					.	-------     .
					. Floppy Disk Drive .
					.....................


			The computer program is typed into the computer using the
			keyboard. The computer program is stored in the memory of
			the compyuter. The CENTRAL PROCESSING UNIT of the COMPUTER
			excutes each of the instructions of the program, one after
			another, automatically. The output is displayed on the VDU
			SCREEN or Printed 
		
		1.3 COMPILERS
			
			The computer high-level languages has to be convertedinto
			MACHINE CODE. This conversion is done quite automatically
			by a program called a COMPILER. The COMPILER produces the 
			Machine Code version of the PASCAL program, and a listing 
			of the Pascal program.If the program contains one or more
			errors then,when the first error is detected, the compiler
			will stop and indicate where the error is. It will also 
			give you information on the type of error that has occurred.
			You must correct the error and re-compile your program.

		1.3 THE EDITOR
			
			The Editor is a computer program that allows you to enter 
			your program instructions into the computer. It also allows
			you to make changes, insertions and deletions to these
			instructions.


		1.3 TURBO PASCAL


				 ---------------
				|     Start 	|
				|		|	
				 ---------------
					|
					|
			 -----------------------------
			| User written Pascal Program.|
			| Entered using the keyboard  |
			| and the Editor program.     |
			 -----------------------------
					|
					|
			        ------------------	
		-------->------| PASCAL COMPILER  |
	       |	       | used to Compile  |
	       |               | the user program |
	       |                ------------------
	       |                        |
	       |                        |
               |      -----------------------------------
	       |     | 1) Listing of the PASCAL PROGRAM  |
	       |     |                                   |
               |     | 2) Machine Code Version of the    |
	       |     |    PASCAL program.		 |
	       |      -----------------------------------
	       |                        |
	       |                        |
	       |               --------------------
               |              /Are there any errors\
               |       YES ---       in the         --- NO  
	       |       |      \    PASCAL program  /     |                 
	       |       |       --------------------  	 |
	       |       |                                 |
	       |    -----------                       -----------------------
               |   |NO  program|		     | Automatically execute |	
	       |   |is executed|		     | the Machine code      |
   	       |    -----------                      | version of the PASCAL |
	       |       |			     | program               |
               |       |                              -----------------------
	       |    -------------------------            |
	       |   | The PROGRAMMER must now | 		 |
	       |   | correct the error in the|	     -------------------------
	       |   | error in the program    |	    | Answers from the PROGRAM|
	       |   | (Using the Editor pro-  |      | are DISPLAYED on the VDU|
	       |   | gram). The corrected    |      | SCREEN on PRINTED on the|
	       |   | PASCAL program must be  |      | on the line-printer as  |
	       |   | re-submitted to the     |      | case may be.            |
	       |   | PASCAL compiler.        |       -------------------------
	       |    -------------------------
	       |			|
	       |			|
		------<-------<---------


			
				
		1.4 THE MIRCO-COMPUTER SYSTEM
		
		    A PASCAL program is ented in the memory of the computer
		    using the Editor. Then it is compiled using the Compiler.
		    If no errors exist in the program it is automatically
		    executed.
	
		1.5 ERRORS

		   	The Pascal compilter can find two types of errors, called
			SYNTAX and SEMANTIC errors. in our program.

			SYNTAX errors can be spelling mistakes like

				BEGUN instead of BEGIN

		        or mistakes where we have not written a valid PASCAL statement
			for instance:
			
				total:= a + * b;

			SEMANTIC error would be to try and assign a real number, like
		 	22.7 to an integer store.

				VAR x:INTEGER;		x:=22.7;

			  If you gave the computer the statement.
					
				total:= a + b;
				
			  when you really wanted to do a substract the values i.e.

				total:= a - b;

			the computer would not discover this type of mistake. This
			sort of error is known as a LOGICAL errors and you as the 
			PROGRAM-WRITER must detect and correct this type of error.

 
  |     Ch2 ASSIGNMENT STATEMENTS

		2.1 ASSIGNMENT OF VALUES TO VARIABLES
	
			':=' is the assignment symbol.
	
				x:= 999;


		    Values before	Assignment	Values after
					statement


		    --- 				---
	           | x |			       | x |
		   |---|	                       |---|
    		   | ? |	        x:= 22;	       | 22| 	
                   |   |                               |   |
		   | 22|                x:= -54;       |-54|
                   |---|---                            |---|---
	           | x | a |                           | x | a |
                   |---|---|                           |---|---|
                   |-5 | ? |            a:=40;         |-5 |40 |
		   |   |   |                           |   |   |
		   |-5 | 14|            x:=a;          | 40| 40|
		   |---|---|---                        |---|---|---
                   | x | a | b |        a:=14;         | x | a | b |
                   |---|---|---|                       |---|---|---|
                   | 14| 14| ? |        b:=3;          | 14| 14| 3 |
                   |   |   |   |                       |   |   |   |
		   | 14| 14| 3 |       x:= a + b;      | 17| 14| 3 |
                   |   |   |   |                       |   |   |   |
		   | 17| 14| 3 |       x:= x + b;      | 17| 14| 3 |
		   |   |   |   |                       |   |   |   | 
		   | 20| 14| 3 |    x := x + x + b     | 43| 14| 3 |
		    -----------                         -----------

|	Ch3 INPUT/OUTPUT	1

		3.1 INPUT COMMANDS
			
				3.1.1 READ

				      This statement means: READ from the keyboard,
				      and assign the values respectively to the 
			              appropriate variables.
	
					  READ(a,b,c);
					       -----
						 |
						 |
						  ----->  List of variables for which
							  values must be read in.
				      
				      PROGRAM readdata(input,output);
				      VAR total, a,b : INTEGER;
				      BEGIN
					   READ(a,b);
					   total:= a + b;
					   WRITELN('	A	B	TOTAL');
					   WRITELN;
					   WRITELN(a:12, b:12, total:12);
				
                3.2 OUTPUT COMMANDS
				
			         3.2.1 WRITELN
					
					The WRITELN statement causes the contents of each
					variables stated in the list of variables to be
					outputted in the order in which they appeared.
                                              
					WRITELN(a,b,c)
						-----
						  |
						  |
						   ----> List of variables whose contents 
							 is to be written out.

                                           PROGRAM print(input,output);
					   VAR a,b,c:INTEGER;
					   BEGIN
						a:=3;
						b:=4;
						c:=a+b;
						WRITELN(a,b,c)
					   END.

 -----------------------------------------------------------------------------------------------                                
|		CHANGES IN THE DESIGN					          		|
 -----------------------------------------------------------------------------------------------
 
 |       Ch4 INTEGERS AND REAL VARIABLES 

		4.1 INTEGERS

			Integer values are numbers that contain no decimal point.		
			Integer values may be positive or negative. The maximum
			or minimum value that an integer can have is dependent on 
			the particulur computer used but is generally big enough
			for all purposes.

			Ex. INTEGER VALUES

			    1	211 -243 +3242556 0 -13541515415 -799 +235098230458
		
		4.2 REAL
			
			Real numbers contain a decimal point and can be positive or 
			negative. The computer does not put a limit on how big the
			real number can be.

			Ex. REAL NUMBERs

			    1.0 +243.2342 -12321.13 0.2345254 -0.000326 683680956072056.1


			4.2.1 EXPONENTIAL FORMAT (E-format)
			
				REAL numbers have an alternatie Exponential format (E-format).


				REAL NUMBER			EXPLANATION
			
				46.3E2			46.3 x 100	4630.0
				0.5E+3			0.5  x 1000     500.0
				-1.2E4                  -1.2 x 10000    -12000.0
				2.7E-3                  2.7  x 0.001    0.0027
				-3.6E-2                 -3.6 x 0.01     -0.036

	       4.3 RULES FOR DEFINING VALID VARIABLE NAMES

			(1) The name of a variable must start with an alphabetic character (a-z).

			(2) All the other letters of the name be either alphabetic (a - z) or 
				numeric (0,1,2 ... ,9).
			
			(3) The name can be as long as you like.
	
			(4) The name cannot be a reserved PASCAL name.




			VALID		|	INVALID
					|
			a		|	2persons
			totals		|	min-max
			fraser		|	e.t.
			FraserNxumalo	|	BEGIN
			harmony176	|	my name	
		
|	Ch5 ARITEMATIC EXPRESSIONS
	
		5.1 ARITHMETIC OPERATORS

			PASCAL supports the following arithematic operators

			+	Addition
			-	Subtration
			*	Multiplication
			/	Division
			DIV	Division
			MOD	a MOD b = a-((a DIV b) * b)

			(NB) NO EXPONENTIATION
			
			5.1.1 MORE COMPLEX ARITHEMATIC EXPRESSIONS

			 	(1) Any brackets (Innermost pair first).
				
				(2) *,/,DIV,MOD

				(3) +,-
		
				(4) From left to right for operations of the same level.

		5.2 SPECIAL FUNCTIONS 
			
			y := SQR(x);	'x' is squared

			y := ABS(x);	Absolute values of 'x'

			y := SIN(x);	Trigonometric function

			y := COS(x)	(x must be in RADIANS)

			y := ARCTAN(x)  Trigonometric function 

			y := LN(x)	Natural log.( Base e)

			y := EXP(x)	Exponential function

			y := SQRT(x) 	Square Root

			y := TRUNC(x)	Fractional part of 'x' is discarded

			y := ROUND(x)  	for x>= y:=TRUNC(x-0.5)
					for x<= y:=TRUNC(x+0.5)
					(NOTE: x>= means that 
					x is greater than or equal to zero)

		
 		
 
|	Ch6 COMMENTS
		
		6.1 COMMENTS

		Comments can be placed in a Pascal program. A comment is an explanation
		of some point relating to the program and is intended as information
		for the human reader of the program. A comment is however, completely 
		ignored by the computer.

		A comment is enclosed by the symbols (*			*) and be be any length.
		
		(* This is an example of a comment *)

		(* A comment can extend
			over
			as many lines as may be required *)
		
		
|      Ch7 INPUT/OUTPUT	2

		7.1 READ and WRITELN

			A example containing both READ and WRITELN states fro REAL variables.


			PROGRAM RealFomat(input,output);
			(*$B-*)
			VAR a,b,total:REAL;
			BEGIN
				a:=5.2;
				READ(b);
				total:=a+b;
				WRITELN('	A	B	TOTAL');
				WRITELN(a,b,total);
			END.
		
|	Ch8 HOW TO WRITE AND TEST A SIMPLE PROGRAM

		8.1 DEBUGGING A PROGRAM

			(1) Decide how to do the program.
	
			(2)	(2.1) Write the program
				
				(2.2) Anticipate that you may have errors in your programand
				      insert 'debug' WRITELN statements, at suitable places,
				      in your program.

			(3) Decide upon various sets of test data that thoroughly test ALL
			    possible circumstances that can arise in your program.

			(4) Calculate, by hand the correct answer for each of these test cases.

			(5)	(5.1) Compile the program.

				(5.2) No errors exist in the program --> proceed to step 6.
				      Errors exist in the program    --> (5.2.1) Find and eliminate
										 all the compilation 
										 errors.
									 (5.2.2) Repeat step 5.

			(6) For each test case

				(6.1) Run the program and produce results.
			
				(6.2) Results correct --> proceed to next test case
				      Results incorrect --> (6.2.1) FIND ERROR 

								    This is done by comparing expected
								    and observed results for all the 
								    program and then looking back in the
								    program from the point where the 
								    expected and observed results differ
								    to find the error(s). If you cant find
								    the error INSERT MORE DEBUG WRITELN
								    STATEMENTS and rerun the test.
							    
							    (6.2.2) CORRECT THE ERROR 

					
								    Ensure that any changes made to correct
								    one test case do not invalidate test
								    already done. If necessary repeat the 
								    previous tests.
			
			(7) Remove the 'debug' WRITELN statements. The program is now ready for general use.

		 
			
|	Ch9 LOOPS

		9.1 INTRODUCTION

			- FOR LOOPS
			- WHILE LOOPS
			- REPEAT LOOPS

		9.2 FOR LOOPS
		
			FOR loop variable := intial value TO final value DO statement;

				FOR n := 1 TO 5 DO WRITELN(n);
				
				Display's

						1
						2
						3
						4	
						5

			Any loop can be explained in terms of the following components:

			INTIALISATION	TEST	COMPUTATION 	INCREMENTATION

	INTIALISATION				n:=1
						 |
						 |
					 ---->---|
	TEST				|	 |
					|	n > 5 Yes: Terminate loop statement -->--
					|	 |					 |
					|	 NO;					 |
					|	Carry on and do computation		 |
					|	 |					 |
					|	 |					 |
					|	 |					 |
	COMPUTATION			|	WRITELN(n)				 |
					|	 |					 |
					|	 |					 |
					|	n:=n+1;					 |	
	INCREMENTATION			|	 |					 |
					|	 |					 |
					 ---Return to the TEST step			 |
											 |
											 |
							 -------------------<------------
							|
							|
						Next Program statement 

			9.2.1 ANOTHER FORM OF THE FOR LOOP

				FOR loop variable := initial value DOWNTO final value DO


				PROGRAM table(input,output);

				VAR n, n2, n3 : INTEGER;

				BEGIN
					WRITELN('	n 	n*n	n*n*n ');
					FOR n:= 10 DOWNTO 6 DO
						BEGIN
						 	n2:= n*n;
							n3:= n*n*n;
							WRITELN(n:12,n2:12,n3:12);
						END
				END;

	INTIALISATION				n:=1
						 |
						 |
					 ---->---|
	TEST				|	 |
					|	n < 6 Yes: Terminate loop ------->-------
					|	 |					 |
					|	 NO;					 |
					|	Carry on and do computation		 |
					|	 |					 |
					|	 |					 |
					|	 |					 |
	COMPUTATION			|	Calculate n*n and n*n*n			 |
					|	 |					 |
					|	 |					 |
					|	n:=n-1;					 |	
	DECREMENT			|	 |					 |
					|	 |					 |
					 ---Return to the TEST step			 |
											 |
											 |
							 -------------------<------------
							|
							|
						Execute the next program statement  


		9.3 COMPOUNT STATEMENTS

			A Compound statement is a series of any number of Pascal statements
			preceded by BEGIN and terminated by an END. BEGIN and END can be 
			thought of as a pair of brackets.

		
			BEGIN
				statement 1;		
				statement 2;
				...
				statement n
			END;
	
		9.4 WHILE LOOPS

				The while loop has the form:
	
			WHILE condition DO statement;

				PROGRAM table2(input,output);

				VAR n, n2, n3 : INTEGER;

				BEGIN
					WRITELN('	n 	n*n	n*n*n ');
					n:=12;
					WHILE n<= 18 DO 
						BEGIN
							n2:= n*n;
							n3:= n*n*n;
							WRITELN(n:12,n2:12,n3:12);
							n:= n+2;
						END;
				END.

		9.5 REPEAT LOOPS

				 The REPEAT loop has the following form:

			REPEAT statement UNTIL condition;

				PROGRAM table2(input,output);

				VAR n, n2, n3 : INTEGER;

				BEGIN
					WRITELN('	n 	n*n	n*n*n ');
					n:=21;
					REPEAT
						n2:= n*n;
						n3:= n*n*n;
						WRITELN(n:12,n2:12,n3:12);
						n:= n+3;
					
					UNTIL n>30;
				END.
	
	a) 1		b)	1	c)	4 4 4 4	   d)		1 1
	   2 2		       2 2	         3 3 3	  	       2 2 2
	   3 3 3 	      3 3 3		  2 2		      3 3 3 3
	   4 4 4 4	     4 4 4 4		   1                 4 4 4 4 4 			


		
|	Ch10 WRITE AND READLN STATEMENTS

		10.1 MORE ABOUT THE WRITELN STATEMENT

			a:=1 b:=2 WRITELN(a,b) -------> Values Outputted 1 2

			There are hidden steps in the WRITELN statement.

			(1) The values of the variables in the list of the WRITELN
			    statement are appened to the OUTPUT BUFFER.This 	
			    OUTPUT BUFFER is a storage area that is defined and
			    controlled by the Pascal system and is completely 				
			    hidden fromyou as the user. This output buffer is used
			    to hold the values to be printed.

			(2) The contents of the OUTPUT BUFFER is printed
	
			(3) The OUTPUT BUFFER is cleared.

		 10.1 READLN
				The statement

					READLN(a,b,c);


			(1) READ in a value for each of the variables given in the list
			    from the keyboard.

			(2) Skip over any extra data that may have been entered on the 
				keyboard.

			(3) Go to the beginning of the next line.

|	Ch11 ALTERNATIVE STATEMENTS

		11. INTRODUCTION

				IF...THEN...
				IF...THEN...ELSE...
				CASE...OF...

			11.1 IF...THEN...

					IF conditional statement THEN statement

					IF age > 65.0 THEN over65total := over65total + 1;

						
							|
							|
							|
						  ------------
					FALSE	 /Conditional  \	   TRUE
					 --------  age > 65.0  ---------
					|	 \ statement   /	|
					|	  ------------		|
					|				|
					|				|								
					|		 ---------------
					|		|
					|		|
					|	 ----------------------------
					|	|   Statement or Compound    |
					|	|over65total:=over65total + 1|
					|	|	Statement	     |
					|	 ----------------------------
					|		|
					|		|
					|		|
					|		|
					 ---------------|
							|
						  Next statement of the program 
				
				11.1.1	CONDITIONAL STATEMENTS

					<	less than
					>	greater than
					<= 	less than or equal to
					>=	greater than or equal to
					= 	equal to 
					<>	not equal to 

			11.2 IF...THEN...ELSE




		
							|
							|
							|
						  ------------
					FALSE	 /Conditional  \    TRUE
					 --------		--------
					|	 \ statement   /	|
					|	  ------------		|
					|				|
					|				|		
				----------------		 ---------------
			       | Statement 2 or	|		| Statement 1 or|
			       | Compound 	|		| Compound	|
			       | Statement 2	|		| Statement 1	|
				----------------		 ---------------
					|				|
					|				|
					|				|
					 -------------------------------
							 |
							 |
						Next Program Statement
			
			11.3 NESTED ALTERNATIVE STATEMENTS


				INCOME		TAX
				<=1000		0
				<=5000		0.10(INCOME-1000)
				<=10000		0.20(INCOME-5000)  + TAX ON 5000
				<=20000		0.30(INC0ME-10000) + TAX ON 10000
				> 20000		0.40(INCOME-20000) + TAX ON 20000


				    |
				    |
				----------		 ---------------
			       / INCOME	  \		| TAX :=0.0	|
			FALSE--  	   ---TRUE-->---|		|------->-------
			|      \ <= 1000  /		|POOR :=POOR +	|		|
			|	 ---------		 ---------------		|
			|								|
			|								|
			 ----->-----							|
				    |							|
				    |							|
			        ------------						|
			       / INCOME	    \						|
			FALSE--		     --TRUE-->-- TAX:= 0.1 (INCOME - 1000)--->--|
			|      \ <= 5000    /						|
			|	------------						|
			|								|
			|								|
			 ----->-----							|	
				    |							|
				    |							|
			        ------------						|
			       / INCOME	    \						|
			FALSE--		     --TRUE-->-- TAX:= 0.2 (INCOME-5000)-->-----|
			|      \ <= 10000   /		 + TAX ON 5000			|
			|	------------						|
			|								|
			|								|
			|								|
			|       ------------						|
			|      / INCOME	    \						|
			FALSE--		     --TRUE-->-- TAX:= 0.3 (INCOME - 10000)	|
			|      \ <= 20000    /		 + TAX ON 10000		-->-----|
			|	------------						|
			|								|
			|				    ---------------------	|
			 ------------------------->--------| TAX:= 0.4*(INCOME - |	|
							   | 20000) + TAX ON 	 |	|
							   | 20000		 |	|
							   | RICH:=RICH + 1	 |	|
							    ---------------------	|
									|		|
									|		|
									 ----->---------|
											|
											|

|	Ch12	CONSTANTS

		12.1 CONSTANTS
			
			Constants, by contrast to variables, are assigned a value
			ONCE only, in the constants section of a program i.e

				CONST	 pi=3.1415926;
					 max=59;
					 min=27;

			Notice that 

				(a) An '=' sign is used when defining the value of a constant.

				(b) No type is specified explicitely for a consant.
				    The type is implied from the value on the r.h.s.
				    of the '='. In this example 'pi' is a REAL and
				    max and min are both INTEGER.

|	Ch13	ARRAYS

		13.1 DEFINITION OF ARRAYS

			Arrays are defined in the VARiable section of the program.
			Arrays have the following format.

			arrayname:ARRAY[ lowerbound .. uppperbound ] OF variabletype:
			arrayname	: Any valid Pascal name.
			upperbound 	>= lowerbound
			lowerbound & upperbound : An integer or and integer constant.
			variabletype 	: Any valid Pascal type.

			Ex of ARRAY

			size:ARRAY[-2..3] OF REAL; 

			value:ARRAY[2..4] OF INTEGER;

			ok:ARRAY[0..3] OF REAL;

		13.2	2-DIMENSIONAL ARRAYS

				VAR x:ARRAY[1..4,1..3] OF REAL

					   X[ 2, 3 ]
					      |	 |
					      |	 |
					      |  |
				      ROW index  COLUMN index



						COLUMN
	                 		 1	  2        3

			ROW	==================================
			 1     | X[1,1]	   | X[1,2]	| X[1,3]  | <------- NAME
			        ----------------------------------
			       |	   |            |	  | <------- VALUE
			       |	   |		|	  |
			       |==================================|
			 2     | X[2,1]	   | X[2.2]	| X[2,3]  |
			       |-----------|------------|---------|
			       |	   |		|/////////|
			       |	   |		|/////////|
			       |==================================|
			 3     | X[3,1]    | X[3,2]     | X[3,3]  |
			       |-----------|------------|---------|
			       |	   |		|	  |
			       |	   |		|	  |
			 4     |==================================|
			       | x[4,1]	   | x[4,2]	| x[4,3]  |
			       |-----------|------------|---------|
			       |  	   |		|	  |
			       |	   |            |         |
				==================================

			13.2.1 DEFINITION OF 2 - DIMENSIONAL ARRAYS
			
				 arrayname:ARRAY[Row-1-b .. Row-u-b , Col-1-b .. Col-u-b] OF type
				 arrayname : any valid PASCAL name
				 ROW-1-b   <= Row-u-b
				 Col-1-b   <= Col-u-b
				 Row-1-b, Row-u-b, Col-1-b, Col-u-b; Integers or Integer constants
				 type: Any valid Pascal type

				 Ex 2 - Dimensional Arrays

				 x:ARRAY[1..5,1..4] OF REAL;
				 
				 p:ARRAY[0..3,0..2] OF REAL;

				 q:ARRAY[-3..1,-6..-4] OF INTEGER;

				 large:ARRAY[1..100,0..50] OF INTEGER;

		(a)	PASCAL TRIANGLE    	
						
				1			1 0 0 0 0 
			       1 1   			1 1 0 0 0
  			      1 2 1			1 2 1 0 0
			     1 3 3 1   			1 3 3 1 0
			    1 3 6 3 1   		1 3 6 3 1

|	Ch14 BOOLEAN VARIABLES

		14.1 BOOLEAN VARIABLES

			A Boolean variables is defined in the VARiable section of the program. 
			
			A Boolean variables is a special type of variable that can take only
			one of two variable --- either TRUE or FALSE.
		
		14.2 RATIONALE FOR BOOLEAN VARIABLES

			Boolean variables can be used to solve Boolean Algebra type problems.


|	Ch15 CHARACTERS

		15.1 CHARACTERS

			A Character variables is defined in the VARiable section of the program.
			
			The abbreviation CHAR is used to designate a variable of type CHARacter.

		15.2 CHARACTER DATA (TEXT FILES)
			
			EOLN - End Of Line

			EOF  - End of File

		PACKED ARRAYS

		NON - TEXT FILES

		15.3 STANDARD FUNCTIONS

			ORD - The function ORD treats the bit pattern of the character as if the 
				bit  pattern of an integer and returns that integer value.

			CHR - The function CHR does the reverse operation. CHR takes as its 	
			    	argument any integer value and returns the character that is 
				represented by that specific bit pattern.

|	Ch16 PROCEDURE
		
		16.1 PROCEDURE
			
			A Procedure is a set of PASCAL instructions which is given a
			name. The Procedure is called (or invoked) by placing the procedure
			name, as a statement, in the appropriate place it the program.
			When the name is encounted all the statements of the procedure
			executed. A procedure can be called as many times as required in
			a program.


				PROCEDURE procedure name;
				BEGIN
					statement 1;
					statement 2;
					...
					...
					statment  n;
				END;

				PROGRAM explaingprocedure(input,output);
				VAR a,b,c:REAL

					PROCEDURE procedurename;
					BEGIN
					    .... <-----------<----------
					    ....			|
					    ....			|
					    ....			|
			 ---------<---------				|
			|		END;				|
			|						|
			|	BEGIN( * of main prog. *)		|
			|	     .....				|
			|	     .....				|
			|	     procedurename;			|
			 ----------> .....				|
				     ..... ------------------->--------	
				END.

				PROCEDURE manyprocedure(input,output);

					PROCEDURE one;
						BEGIN ...... END;
				
					PROCEDURE two;
						BEGIN ...... END;

				BEGIN (* Main Program *)

				   ........
				   ........
				END.

		16.2 PARAMETERS

			A procedure may have parameters associated with it.
			There are two types of parameters:- reference and value.

			16.2.1 REFERENCE PARAMETERS

					A REFERENCE parameter provides method of association
					nick-name or second name, within a procedure, for 
					some variable that has already been defined in a program.
				
				(a) The number and type of variables in the parameter list the
				    calling statement [ sum (a,b,total)] must be the same as in 
				    the parameter list of the Procedure definition statement.
	
					[ PROCEDURE sum(VAR, x, y, result) ]

				(b) The names of the parameters in the calling statement are 
				    usually different from the names of the parameters in
				    the procedure definition statement.

				(C) REFERENCE parameters are specified by placing the word VAR
				    before the parameters in the Procedure definition statement.

			16.2.2 VALUE PARAMETERS

				To specifiy a VALUE parameter the VAR is omitted from the parameter
				list in the Procedure specification statement. When a VALUE parameter
				is defined it is equivalent to defining a NEW procedure the value 
				of the respective variable in the calling statement is assigned to this 
				new variable. Within the procedure variable is destroyed as is the value 
				in it. No value is passed back to the calling program.

				VALUE parameters are used to pass values TO a procedure and ensure that
				the procedure can never change the main program value of this value.

		16.2 LOCAL VARIABLES DEFINED INSIDE A PROCEDURE


				PROCEDURE name(parameter list);
				
				VAR list of local variables;

				BEGIN (* Body of the procedure *)
					........
					........
				END;

			
|	Ch17	FUNCTION 

		17.1 INTRODUCTION

			SQRT is a Special Function.

				Code of SQRT			
			
			root1 := -b + SQRT(b*b-4*a*c)
			
		17.2 USER DEFINED FUNCTIONS

			The form that a USER-DEFINED function takes is as follows:

			FUNCTION function-name (parameter list): function type;
			VAR list of local variables;
			BEGIN
				.......
				.......
				function-name := result of the computation
			END;

|	Ch18	SCOPE OF VARIABLES

		18.1 STACKS

			A stack is a common-place concept.
		
				A STACK OF BOOKS ON A TABLE
					
						--------
					       | Book 3 |
				  --------      --------       --------
				 | Book 2 |    | Book 2 |     | Book 2 |
		   --------       --------      --------       --------
		  | Book 1 |     | Book 1 |    | Book 1 |     | Book 1 |
		   --------       --------      --------       --------	

		18.2 PASCAL VARIABLES 

		  	When the variables of a PASCAL program are defined storage
			locations for these variables are set aside for these variables
			in the memory of the computer using a stack.		
			
			VAR a,b,c:INTEGER; -------		--------	STACK OF
					       	  |	     C |        |	VARIABLES
						  |		--------
					       	  |	     b |        |
						  |		--------
					       	   ---->     a |        |
								--------

|	Ch19	TOP-DOWN DESIGN OF A PROGRAM 

				DIVIDE ET IMPERA
				
		19.1 INTRODUCTION 	
				
			First an analogy, that of writing a textbook, is used to illustrate
			the top-down design method.

			19.1.1 AN ILLUSTRATION OF TOP DOWN DESIGN

			19.1.2 AN INTRODUCTION TO PASCAL PROGRAMMING

				Ch1 INTRODUCTION
				Ch2 ASSIGNMENT STATEMENTS
				Ch3 INPUT/OUTPUT

					3.1 INPUT COMMANDS
					
						3.1.1 READ
							  .........
							  .........
							  .........

						3.1.2 READLN
							  .........
							  .........
					
					3.2 OUTPUT COMMANDS

						3.2.1 WRITELN
							  .........
							  .........

						3.2.2 WRITE
							  .........
							  .........
             						  .........

				Ch4 ALTERNATIVE STATEMENTS				     
				Ch5 REPETATIVE STATEMENTS				     

				
				Ch6 PROCEDURES
				Ch7 FILES
						

		19.2 FINDING AND CORRECTING ERROS 

			'Debug'		

|	Ch20 USER DEFINED TYPES

		20.1 TYPE STATEMENTS

			It is possible for the user to define ORIGINAL data-types
			for uses in a program.

			(1) The statement

				TYPE figure = (square, triangle, hexagon)
			
			(2) The statement

				VAR shape:figure;

			(3) The statement

				CASE areatype OF
					1: shape:=square
					2: shape:=triangle
					3: shape:=hexagon;
				     END;

		20.2 PASSING ARRAYS AS PARAMETERS 

			PROCEDURE pass(a:INTEGER: VAR b:REAL);

|	Ch21	RECORDS 

		21.1 RECORDS

			(a) How to define a RECORD.
			
			(b) How to define a variable of type RECORD

			(c) How the naming convention for variables (or fieldds) of 
			    RECORD works.

		     A RECORD is defined in the TYPE sections

			TYPE time = RECORD
					hrs:  INTEGER;
					mins: INTEGER;
					secs: REAL;
				    END;

|	Ch22 	FILES

		22.1 INTRODUCTION AND RATIONALE FOR FILES

			A FILE is the mechanism that is used to store this data
			in the computer on a permanent basis.

		22.2 THE STRUCTURE OF A SEQUENTIAL FILE

			File name: DATAMASTER

		         -------------------------------	--------
		   	|	|	|	|	| .... |	|
			 -------------------------------	--------
			
			1st	2nd	3rd			Last
			element	element	element			element
	
		
			(1) READ(filename,store)

			(2) WRITE(filename,store)

			(3) RESET(filename)

			(4) REWRITE(filename)

			(5) CLOSE(filename)


		TURBO PASCAL FILES

			TURBO Pascal

			PROGRAM	p1(input,output);
			VAR ........;
			BEGIN

				ASSIGN(datafile, ´b:x.y ´);
				REWRITE(datafile);
			END;




		
	
				1st     2nd		 3rd             4th      5th
				Level   Level  		 Level           Level    Level
                        
				OLD ORDER			         NEW ORDER    
