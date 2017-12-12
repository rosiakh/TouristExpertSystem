
 prefix([],_). 
 prefix([H|T1],[H|T2]):-prefix(T1,T2). 
 suffix(S,S). 
 suffix([H|T],L):-suffix(T,L). 

 seq(1,X,[X|_]).
 seq(S,X,[_|T]):- seq(S1,X,T),S is S1+1.

 mo(X):- yo(X).
 yo(ala).
 yo(bab).