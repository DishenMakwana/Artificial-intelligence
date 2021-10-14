# 2. Write a program to generate a random number with respect to entered digit.

domains

predicates
    getinput()

clauses
    getinput():-
        readint(X),
        write("Input is ",X),
        X>0,
        random(X,Y),
        write("\nRandom number is ",Y,"\n").

goal
    getinput();
    write("\nInput is invalid\n").
