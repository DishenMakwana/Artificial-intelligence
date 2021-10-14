parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).
 
female(pam).
female(pat).
female(liz).
female(ann).
male(jim).
male(tom).
male(bob).
 
offspring(Y, X) :-
    parent(X, Y).
 
predecessor(X, Z) :-
    parent(X, Z).
 
predecessor(X, Z) :-
    parent(X, Y),
    predecessor(Y, Z).
 
somebody_has_child :- 
    parent(_, _).
 
mother(X, Y) :-
    parent(X, Y),
    female(X).
 
father(X, Y) :-
    parent(X, Y),
    male(X).
 
grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).
 
sister(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    female(X).
 
brother(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    male(X).
 
aunt(X, Y) :-
    parent(Z, Y),
    sister(X, Z).
 
uncle(X, Y) :-
    parent(Z, Y),
    brother(X, Z).