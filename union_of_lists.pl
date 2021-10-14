# 1.Write a program to union of two lists.

domains
    list = symbol*

predicates
    go
    union(list,list,list)
    disp(list)

clauses
    go:-
        X = [a1,b1,c1],
        Y = [d1,e1],
        Z = [],
        union(Z,X,Y).
    
    union(Z,[],[]):-
        disp(Z).
    
    union(Z,S,[H|T]):-
        N = [H|Z],
        union(N,S,T).
    
    union(Z,[H|T],S):-
        M = [H|Z],
        union(M,T,S).
        disp([]).
    
    disp([H|T]):-
        write(H),
        nl,
        disp(T).

goal
    go.