# 3.Write a program to implement login system using repeat predicate.

domains
    Name, Password = symbol

predicates
    getinput(Name,Password).
    user(Name, Password).
    login.
    Repeat.
clauses
    repeat.
    repeat:-
    repeat.
    getinput(Name,Password):-
    write(“Enter User Name : ”),nl,
    readln(Name),nl,
    write(“Enter Password”),nl,
    readln(Password),nl,

    user(Name,Password).
    user(“abc”,”123”).
    user(“def”,”456”).
    login:-
        repeat,
        getinput(_,_),nl,
        write(“Login Successful.”).
    
    login:-
        repeat,
        write(“Your are not authorized to login. Try Again…”),
        getinput(_,_),nl,
        write(“Login Successful”).

goal
    login.