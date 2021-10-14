# 1.Write a program to implement login system.
domains
    Name, Password = symbol

predicates
    getinput(Name,Password).
    user(Name, Password).
    login.

clauses
    getinput(Name,Password):-
        write(“Enter User Name : ”),nl,
        readln(Name),nl,
        write(“Enter Password”),nl,
        readln(Password),nl,
        user(Name,Password).
        user(“abc”,”123”).
        user(“def”,”456”).
        
    login:-
        getinput(Name,Password),nl,
        write(“Login Successful.”).

    login:-
        write(“Your are not authorized to login.”).

goal
    login.