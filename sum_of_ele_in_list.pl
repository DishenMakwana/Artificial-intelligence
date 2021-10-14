# 3.Write a program to generate sum of elements of given list.
domains
    list = integer*

predicates
    go
    count(integer,list)

clauses
    go:-
        X = [1,2,3],
        count(0,X).
    
    count(Sum,[]):-
        T=[],
        write("Sum of elements : ",Sum),
        nl.
    
    count(Sum1,[H|T]):-
        Sum = Sum1 + H,
        count(Sum,T).

goal
    go.