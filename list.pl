# 1.Write a program to display the element of given list.
domains
    list = symbol*

predicates
    go
    disp(list)

clauses
    go:-
        X = [abc,asdf,qwer],
        disp(X).
        
    disp([]).
    
    disp([H|T]):-
        write(H),
        nl,
        disp(T).

goal
    go.