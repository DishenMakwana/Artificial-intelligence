# 2.Write a program to reverse a given list.

domains
    list = integer*

predicates
    go
    rev(list,list)
    disp(list)

clauses
    go:-
        X = [1,2,3],
        Y = [],
        rev(X,Y).
    
    rev([],Y):-
        disp(Y).
    
    rev([H|T],Y):-
        M = [H|Y],
        nl,
        rev(T,M).
        disp([]).
    
    disp([H1|T1]):-
        write(H1),
        nl,
        disp(T1).

goal
    go.