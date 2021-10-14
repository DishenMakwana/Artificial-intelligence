# Write a Prolog program to check whether a given list is palindrome or not.

domains
    list = integer*

predicates
    go
    rev(list,list,list)
    compare(list,list)

clauses
    go:-
        X = [1,2,3,3,2,2,1],
        Y = [],
        rev(X,Y,X).
    
    rev([],Y,X):-
        compare(Y,X).
    
    rev([H|T],Y,X):-
        M = [H|Y],
        nl,
        rev(T,M,X).
    
    compare([],[]):-
        write("\nList is Palindrome"),nl.

    compare([H|Y],[H|X]):-
        compare(Y,X).

    compare([H|Y],[K|X]):-
        write("\nList is not Palindrome"),nl.

goal
    go.