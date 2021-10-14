domains
predicate
   getinput()
   check(integer)
clauses
   getinput():-
         readchar(X),      
         write("Input is ",X),
         char_int(X,Y),          
         check(Y).         

   check(Y):-
         Y>=97,
         Y<=122,
         write("\nIt is a lowercase character\n").

   check(Y):-
         Y>=65,
         Y<=91,
         write("\nIt is a uppercase character\n").

   check(Y):-
         Y>=47,
         Y<=56,
         write("\nIt is a digit\n").

goal
   getinput();
   write("\nIt is neither a digit nor a character\n").