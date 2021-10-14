# 1.Write a program to Calculate factorial of N

domains

predicates
    go
    find_factorial(integer,integer)

clauses
    go:-
        write("Enter a number = "),
        readint(Num),
        Result = 1,
        find_factorial(Num,Result).
    
    find_factorial(Num,Result):-
        Num <> 0,
        NewResult = Num * Result,
        NewNum = Num - 1,
        find_factorial(NewNum,NewResult).
    
    find_factorial(_,Result):-
        write("Factorial = ",Result),nl.

goal
    go.