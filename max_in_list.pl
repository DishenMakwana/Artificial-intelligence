# 3.Write a program to find the largest number from a given list.
domains
    list = integer*

predicates
    go
    maximum(integer,list)

clauses
    go:-
        X = [1,7,3,6],
        maximum(-1,X).

    maximum(Max,[]):-
        T=[],
        write("Maximum number : ", Max),
        nl.

    maximum(Max,[H|T]):-
        Max < H,
        maximum(H,T);

        maximum(Max,T).

goal
    go.