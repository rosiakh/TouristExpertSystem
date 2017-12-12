

load_db :-
	write('Ładuję bazę danych...'), nl, reconsult(db2), write('Załadowano bazę danych'), nl.

start :- 
	assert(stan(ask, true)), assert(stan(flush, true)), load_db, go.

go :- 
	nl, unseen(Dest), check(Dest), 
    write('Myślę, że spodoba Ci się '), 
    write_pl(Dest), nl, descript(Dest), retract(unseen(Dest)),
    write('Pokazać inne miejsca spełniające kryteria? '), flush_output,
    read(Response), nl, 
    (
        (Response == yes ; Response == y) -> 
        	(stan(ask, true) -> retract(stan(ask, true)), assert(stan(ask, false)), go);
        (Response == no ; Response == n) -> undo
    ), undo;

	write('Nie znaleziono w bazie danych miejsca dla Ciebie.'), nl, undo.

	   
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
:- dynamic yes/1, no/1, unseen/1, stan/2. 


/* verifying */ 
verify(S) :- yes(S) -> true.
verify(S) :- no(S) -> fail.
verify(S) :- stan(ask, true) -> ask(S).
verify(_) :- fail. 
verify_not(S) :- (no(S) -> true ; (yes(S) -> fail ; ask(S))). 

/* undo all yes/no assertions */ 
undo :- retract(yes(_)), fail. 
undo :- retract(no(_)), fail. 
undo :- retract(visited(_)), fail.
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