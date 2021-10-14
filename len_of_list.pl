# 2.Write a program to find length of list.
domains
    list = symbol*

predicates
    go
    count(integer,list)

clauses
    go:-
        X = [abc,asdf,qwer],
        count(0,X).
    
    count(C,[]):-
        T=[],
        write("Total number of elements : ",C),
        nl.
    
    count(C,[H|T]):-
        B = C + 1,
        count(B,T).

goal
    go.
