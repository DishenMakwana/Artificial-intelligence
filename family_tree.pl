#                         Rohan-Rina
#  ___________________________|____________________
#  |              |           |       |
# Nita-Numa Gita-Gautam Sonu-Sonia Monu-Mina |
#  |
# ____|____ ____|______ ____|_____
# |      |    |  |   |       |
# Rosh Posh Sam Pam John Jenny


domains
    X,Y = String    

predicates
    male(String)
    female(String)
    parent(String,String)
    father(String,String)
    mother(String,String)
    brother(String,String)
    sister(String,String)
    grandfather(String,String)
    grandmother(String,String)
    uncle(String,String)
    uncle1(String,String)
    aunt(String,String)
    aunt1(String,String)

clauses
    male("Rohan").
    male("Sonu").
    male("Monu").
    male("Sam").
    male("John").
    male("Gautam").
    male("Numa").
    male("Rosh").
    male("Posh").
    female("Rina").
    female("Nita").
    female("Gita").
    female("Pam").
    female("Jenny").
    female("Mina").
    female("Sonia").
    parent("Nita","Rohan").
    parent("Gita","Rohan").
    parent("Sonu","Rohan").
    parent("Monu","Rohan").
    parent("Nita","Rina").
    parent("Gita","Rina").
    parent("Sonu","Rina").
    parent("Monu","Rina").
    parent("Rosh","Numa").
    parent("Posh","Numa").
    parent("Rosh","Nita").
    parent("Posh","Nita").
    parent("Sam","Gautam").
    parent("Pam","Gautam").
    parent("Sam","Gita").
    parent("Pam","Gita").
    parent("","Sonu").
    parent("","Sonia").
    parent("John","Monu").
    parent("Jenny","Monu").
    parent("John","Mina").
    parent("Jenny","Mina").

    mother(X,Y):-
        female(Y),
        parent(X,Y).
    
    brother(X,Y):-
        male(Y),
        father(X,Z),
        father(Y,Z),X<>Y.
    
    sister(X,Y):-
        female(Y),
        father(X,Z),
        father(Y,Z),X<>Y.
    
    grandfather(X,Y):-
        male(Y),
        parent(X,Z),
        parent(Z,Y).
    
    grandmother(X,Y):-
        female(Y),
        parent(X,Z),
        parent(Z,Y).
    
    uncle1(X,Y):-
        male(Y),
        parent(X,Z),
        brother(Z,Y).
    
    uncle(X,Y):-
        uncle1(X,Y);
        aunt1(X,Z),
        mother(P,Z),
        father(P,Y).
    
    aunt1(X,Y):-
        female(Y),
        parent(X,Z),
        sister(Z,Y).
        
    aunt(X,Y):-
        aunt1(X,Y);
        uncle1(X,Z),
        parent(P,Z),
        mother(P,Y).
    
    father(X,Y):-
        male(Y),
        parent(X,Y).
        
goal
    aunt1(X,Y).