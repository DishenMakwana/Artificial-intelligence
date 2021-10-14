# 1.Write a program to convert integer list to equivalent symbol list.

domains
    ilist=integer*
    slist=symbol*

predicates
    go
    conv(ilist,slist)
    int_sym(integer,symbol)

clauses
    int_sym(0,zero).
    int_sym(1,one).
    int_sym(2,two).
    int_sym(3,three).
    int_sym(4,four).
    int_sym(5,five).
    int_sym(6,six).
    int_sym(7,seven).
    int_sym(8,eight).
    int_sym(9,nine).
    
    go:-
        I=[1,2,3,4,5,6,7],
        S=[],
        conv(I,S).
    
    conv([],S):-
        write(S).
    
    conv([H|T],S):-
        int_sym(H,A),
        M=[A|S],
        conv(T,M).

goal
    go.