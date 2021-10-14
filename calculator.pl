# 3. Write a program to implement Calculator recursively.

domains

predicates
    getinput()
    check(integer)
    calculator(integer,integer,integer)

clauses
    getinput():-
        write("\n1)ADDITION \n2)SUBTRACTION \n3)MULTIPLICATIN \n4)DIVISION \n5)EXIT \n\nEnter your choice:-"),
        readint(C),
        check(C),
        write("\nEnter first number: "),
        readint(X),
        write("Enter second number: "),
        readint(Y),
        calculator(C,X,Y),
        getinput(),
        write("\n");
        write("\nInput is invalid please try again\n"),
        getinput().
    check(C):-
        C=5,
        exit(1);
        C>5,
        write("\nInput is invalid please try again\n"),
        getinput();
        C<5.
    
    calculator(1,X,Y):-
        Z=X+Y,
        write("\nAddition is ",Z,"\n").
    
    calculator(2,X,Y):-
        Z=X-Y,
        write("\nSubtraction is ",Z,"\n").
    
    calculator(3,X,Y):-
        Z=X*Y,
        write("\nMultiplication is ",Z,"\n").
    
    calculator(4,X,Y):-
        Y<>0,
        Z=X/Y,
        write("\nDivision is ",Z,"\n");
        write("\nDivisin by zero is not allowed\n").
    
    /* calculator(C,X,Y):-
        write("\nInvalid choice\n").
    */

goal
    getinput().