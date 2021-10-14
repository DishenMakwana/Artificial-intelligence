# 2.Write a program to check whether the given element is in the list or not.

domains
    list = integer*

predicates
    go
    present(integer,list)

clauses
    go:-
        X = [1,2,3,0],
        write("Enter element: "),
        readint(I),
        write("Element = ",I),
        nl,
        present(I,X).
    
    present(I,[]):-
        T=[],
        write("Not present"),
        nl.
    
    present(I,[H|T]):-
        I=H,
        write("Present"),
        nl,
        exit(0);
    
        present(I,T).

goal
    go.