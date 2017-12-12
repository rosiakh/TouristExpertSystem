load_db :-
	write('Ładuję bazę danych...'), nl, reconsult(db2), write('Załadowano bazę danych'), nl.


go :- 
	load_db, nl,
	check(Dest), 
    write('Myślę, że spodoba Ci się '), 
    write_pl(Dest), nl, descript(Dest), undo;

	write('Nie znaleziono w bazie miejsca dla Ciebie.'), nl, undo.

	   
write_pl(Question) :-
	translate_pl(Question, X),
	write(X).
	   
	   
/* asking questions */ 
ask(Question) :- 
	write_pl(Question), flush_output,
    read(Response), nl, 
    (
        (Response == yes ; Response == y) -> assert(yes(Question));
        (Response == no ; Response == n) -> assert(no(Question)), fail;
        write('Proszę wpisywać tylko y/yes lub n/no.'), nl, flush_output, ask(Question)
    ). 


% we inform the interpreter that the definition of yes/1 and no/1 predicates may change 
% during execution (using assert/1 or retract/1)
:- dynamic yes/1, no/1. 


/* verifying */ 
verify(S) :- (yes(S) -> true ; (no(S) -> fail ; ask(S))). 
verify_not(S) :- (no(S) -> true ; (yes(S) -> fail ; ask(S))). 

/* undo all yes/no assertions */ 
undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail. 
undo.

/* program state */

stan(ask, true).

flip_state(X) :- 
	stan(X, true) -> (retract(stan(X, true)), assert(stan(X, false)));
	stan(X, false) -> (retract(stan(X, false)), assert(stan(X, true))).

set_state(X, TF) :-
	retract(stan(X, true)), assert(stan(X, TF));
	retract(stan(X, false)), assert(stan(X, TF)).

bo(S) :- stan(ask,true) -> write('das').
lo(S) :- stan(ask,true), write('bas').