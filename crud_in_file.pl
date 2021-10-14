# 2.Write a program to create, read, write and delete a file.

domains
    file=textFile

predicates
    go
    operation(integer)
    readfile
    writefile

clauses
    go:-
        disk("C:\\"),
        write("1.create"),nl,
        write("2.read"),nl,
        write("3.write"),nl,
        write("4.delete"),nl,
        write("5.exit"),nl,
        write("enter choice:"),
        readint(C),
        operation(C),
        go.
    
    operation(1):-
        write("enter Filename to create:"),
        readln(Name),
        openwrite(textFile,Name),
        writedevice(textFile),nl,
        closefile(textFile),
        writedevice(screen),
        write("File Sucessfully created.").
    
    operation(2):-
        write("enter Filename to read:"),
        readln(Name),
        openread(textFile,Name),
        readfile,
        closefile(textFile).
    
    operation(3):-
        write("enter Filename to Write:"),
        readln(Name),
        openwrite(textFile,Name),
        writefile,
        writedevice(screen),
        write("file successfully written.").
    
    operation(4):-
        write("Enter filename to delete:"),
        readln(Name),
        deletefile(Name),
        write("file successfully deleted"),nl.
    
    operation(_):-
        write("invalid choice."),nl.
    
    readfile:-
        readdevice(textFile),
        readln(L),
        writedevice(screen),
        readdevice(keyboard),
        write(L),nl,
        eof(textFile);
        readfile.
    
    writefile:-
        writedevice(screen),
        write("enter file content:"),
        readln(N),
        writedevice(textFile),
        write(N),nl,
        writedevice(screen),
        write("do you want to enter more?[y/n]"),
        readchar(C),
        C='y',
        writefile;
        C='n',
        closefile(textFile).

goal
    go.