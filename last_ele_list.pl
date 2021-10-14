# 1.Write a program to print last element of the list.
domains
    list = symbol*

predicates
    go
    last(list)

clauses
    go:-
        X = [abc,asdf,qwer],
        last(X).
    
    last([H|T]):-
        T=[],
        write("Last element is ",H),
        nl.
    
    last([H|T]):-
        last(T).

goal
    go.