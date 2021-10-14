# 1. Write a program for the following task,
# 1) Students who are living in Rajkot.
# 2) Students whose age is greater then 15 and living in Rajkot.
# 3) Student who has more than 60%.

domains

predicates
    student(symbol,symbol,integer,integer)

clauses
    student("Sita","Rajkot",20,70).
    student("Rita","Delhi",35,55).
    student("Nita","Bangalore",19,90).
    student("Mita","Rajkot",55,30).
    student("Hita","Mumbai",60,67).
    
goal
    /* student(Name,"Rajkot",Age,Percentage).*/
    /* student(Name,"Rajkot",Age,Percentage), Age>50.*/
    /* write("Students with percentage greater than 60").*/
    student(Name,City,Age,Percentage), Percentage > 60.