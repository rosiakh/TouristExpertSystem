/*
1. Skazani na Shawshank
2. Ojciec chrzestny
3. Dwunastu gniewnych ludzi
4. Lista Schindlera
5. Nietykalni
6. Dobry, zly i brzydki
7. Forrest Gump
8. Leca zurawie
9. Lot nad kukulczym gniazdem
10. Pianista
11. Matrix
12. Siedmiu samurajow
13. Milczenie owiec
14. Casablanca
15. Psychoza
16.	Siedem
17.	Podziemny krag
18.	Piekny umysl
19.	Wyspa tajemnic
20.	Leon zawodowiec
21.	Szeregowiec Ryan
22.	Gladiator
23.	Czas apokalipsy
24.	Bogowie
25.	Goraczka
26.	Adwokat diabla
27.	Wsciekle psy
28.	Mechaniczna pomarancza
29.	Requiem dla snu
30.	Taksowkarz
*/

check(f1) :- f1, !.
check(f2) :- f2, !.
check(f3) :- f3, !.
check(f4) :- f4, !.
check(f5) :- f5, !.
check(f6) :- f6, !.
check(f7) :- f7, !.
check(f8) :- f8, !.
check(f9) :- f9, !.
check(f10) :- f10, !.
check(f11) :- f11, !.
check(f12) :- f12, !.
check(f13) :- f13, !.
check(f14) :- f14, !.
check(f15) :- f15, !.
check(f16) :- f16, !.
check(f17) :- f17, !.
check(f18) :- f18, !.
check(f19) :- f19, !.
check(f20) :- f20, !.
check(f21) :- f21, !.
check(f22) :- f22, !.
check(f23) :- f23, !.
check(f24) :- f24, !.
check(f25) :- f25, !.
check(f26) :- f26, !.
check(f27) :- f27, !.
check(f28) :- f28, !.
check(f29) :- f29, !.
check(f30) :- f30, !.

f1 :- year(y, 94), dur(m, 142), (verify(crime); verify(drama)), from(usa), verify(darabont), verify_not(oscar).
f2 :- year(y, 72), dur(m, 175), (verify(crime); verify(drama)), from(usa), verify(coppola), verify(oscar).
f3 :- year(y, 57), dur(m, 96), (verify(crime); verify(drama)), from(usa), verify(lumet), verify_not(oscar).
f4 :- year(y, 93), dur(m, 195), (verify(history); verify(drama); verify(biography)), from(usa), verify(spielberg), verify(oscar).
f5 :- year(y, 11), dur(m, 112), (verify(biography); verify(drama); verify(comedy)), from(france), verify(nakache), verify_not(oscar).
f6 :- year(y, 66), dur(m, 161), verify(western), from(italy), verify(leone), verify_not(oscar).
f7 :- year(y, 94), dur(m, 142), (verify(comedy); verify(drama)), from(usa), verify(zemeckis), verify(oscar).
f8 :- year(y, 57), dur(m, 97), (verify(drama); verify(romance); verify(war)), from(sssr), verify(kalatozov), verify_not(oscar).
f9 :- year(y, 75), dur(m, 133), verify(drama), from(usa), verify(forman), verify(oscar).
f10 :- year(y, 02), dur(m, 150), (verify(biography); verify(drama); verify(war)), (from(uk); from(france); from(germany); from(poland)), verify(polanski), verify(oscar).
f11 :- year(y, 99), dur(m, 136), (verify(action); verify(scifi)), from(usa), verify(wachowski), verify(oscar).
f12 :- year(y, 54), dur(m, 207), (verify(action); verify(adventure); verify(drama)), from(japan), verify(kurosawa), verify_not(oscar).
f13 :- year(y, 91), dur(m, 118), (verify(crime); verify(drama); verify(thriller)), from(usa), verify(demme), verify(oscar).
f14 :- year(y, 42), dur(m, 102), (verify(drama); verify(romance); verify(war)), from(usa), verify(curtiz), verify(oscar).
f15 :- year(y, 60), dur(m, 109), (verify(horror); verify(thriller)), from(usa), verify(hitchcock), verify_not(oscar).
f16 :- year(y, 95), dur(m, 127), (verify(crime); verify(thriller)), from(usa), verify(fincher), verify_not(oscar).
f17 :- year(y, 99), dur(m, 139), (verify(thriller)), from(usa), verify(fincher), verify_not(oscar).
f18 :- year(y, 01), dur(m, 135), (verify(biography); verify(drama)), from(usa), verify(howard), verify(oscar).
f19 :- year(y, 10), dur(m, 138), (verify(drama); verify(thriller)), from(usa), verify(scorsese), verify_not(oscar).
f20 :- year(y, 94), dur(m, 170), (verify(drama); verify(crime)), from(france), verify(besson), verify_not(oscar).
f21 :- year(y, 98), dur(m, 170), (verify(drama); verify(war)), from(usa), verify(spielberg), verify(oscar).
f22 :- year(y, 00), dur(m, 155), (verify(drama); verify(history)), from(usa), verify(scott), verify(oscar).
f23 :- year(y, 79), dur(m, 154), (verify(drama); verify(war)), from(usa), verify(coppola), verify(oscar).
f24 :- year(y, 14), dur(m, 121), (verify(biography); verify(drama)), from(poland), verify(palkowski), verify_not(oscar).
f25 :- year(y, 95), dur(m, 170), (verify(crime)), from(usa), verify(mann), verify_not(oscar).
f26 :- year(y, 97), dur(m, 144), (verify(thriller)), from(usa), verify(hackford), verify_not(oscar).
f27 :- year(y, 92), dur(m, 99), (verify(thriller); verify(crime)), from(usa), verify(tarantino), verify_not(oscar).
f28 :- year(y, 71), dur(m, 136), (verify(drama); verify(scifi)), from(usa), verify(kubrick), verify_not(oscar).
f29 :- year(y, 00), dur(m, 102), (verify(drama)), from(usa), verify(aronofsky), verify_not(oscar).
f30 :- year(y, 76), dur(m, 113), (verify(drama)), from(usa), verify(scorsese), verify_not(oscar).

/* ************************* */

from(usa) :- from(america).
from(france) :- from(europe).
from(italy) :- from(europe).
from(uk) :- from(europe).
from(germany) :- from(europe).
from(poland) :- from(europe).
from(sssr) :- from(europe); from(asia).
from(japan) :- from(asia).

from(asia) :- verify(asia).
from(europe) :- verify(europe).
from(america) :- verify(america).

/* ************************* */

dur(m, X) :- (X < 120, dur(short, X)); (X >= 120, dur(long, X)).
dur(short, _) :- verify(short).
dur(long, _) :- verify(long).

/* ************************* */

year(y, X) :- ((X < 49, X >= 40), year(decade40, X));
				((X < 59, X >= 50), year(decade50, X));
				((X < 69, X >= 60), year(decade60, X));
				((X < 79, X >= 70), year(decade70, X));
				((X < 99, X >= 90), year(decade90, X));
				((X < 9, X >= 0), year(decade00, X));
				((X < 19, X >= 10), year(decade10, X)).
year(decade00, _) :- verify(decade00). 
year(decade10, _) :- verify(decade10).
year(decade40, _) :- verify(decade40).
year(decade50, _) :- verify(decade50).
year(decade60, _) :- verify(decade60).
year(decade70, _) :- verify(decade70).
year(decade90, _) :- verify(decade90).

/* Czas trwania */
translate_pl(short, 'Czy lubisz filmy krotsze niz 2h? ').
translate_pl(long, 'Czy lubisz filmy dluzsze niz 2h? ').

/* Kraj */
translate_pl(asia, 'Czy lubisz filmy z Azji? ').
translate_pl(europe, 'Czy lubisz filmy z Europy? ').
translate_pl(america, 'Czy lubisz filmy z Ameryki? ').

/* Dekada */
translate_pl(decade00, 'Czy lubisz filmy z lat 2000? ').
translate_pl(decade10, 'Czy lubisz filmy z lat 2010? ').
translate_pl(decade40, 'Czy lubisz filmy z lat 1940? ').
translate_pl(decade50, 'Czy lubisz filmy z lat 1950? ').
translate_pl(decade60, 'Czy lubisz filmy z lat 1960? ').
translate_pl(decade70, 'Czy lubisz filmy z lat 1970? ').
translate_pl(decade90, 'Czy lubisz filmy z lat 1990? ').

/* Gatunek */
translate_pl(crime, 'Czy lubisz filmy z gatunku kryminal? ').
translate_pl(drama, 'Czy lubisz filmy z gatunku dramat? ').
translate_pl(history, 'Czy lubisz filmy z gatunku historyczne? ').
translate_pl(biography, 'Czy lubisz filmy z gatunku biograficzne? ').
translate_pl(comedy, 'Czy lubisz filmy z gatunku komedia? ').
translate_pl(western, 'Czy lubisz filmy z gatunku western? ').
translate_pl(romance, 'Czy lubisz filmy z gatunku romantyczne? ').
translate_pl(action, 'Czy lubisz filmy akcji? ').
translate_pl(war, 'Czy lubisz filmy wojenne? ').
translate_pl(scifi, 'Czy lubisz filmy z gatunku Sci-Fi? ').
translate_pl(adventure, 'Czy lubisz filmy przygodowe? ').
translate_pl(thriller, 'Czy lubisz filmy z gatunku thriller? ').
translate_pl(horror, 'Czy lubisz filmy z gatunku horror? ').

/* Rezyser */
translate_pl(darabont, 'Czy lubisz filmy, ktorych rezyserem jest Darabont? ').
translate_pl(coppola, 'Czy lubisz filmy, ktorych rezyserem jest Coppola? ').
translate_pl(lumet, 'Czy lubisz filmy, ktorych rezyserem jest Lumet? ').
translate_pl(spielberg, 'Czy lubisz filmy, ktorych rezyserem jest Spielberg? ').
translate_pl(nakache, 'Czy lubisz filmy, ktorych rezyserem jest Nakache? ').
translate_pl(leone, 'Czy lubisz filmy, ktorych rezyserem jest Leone? ').
translate_pl(zemeckis, 'Czy lubisz filmy, ktorych rezyserem jest Zemeckis? ').
translate_pl(kalatozov, 'Czy lubisz filmy, ktorych rezyserem jest Kalatozov? ').
translate_pl(forman, 'Czy lubisz filmy, ktorych rezyserem jest Forman? ').
translate_pl(polanski, 'Czy lubisz filmy, ktorych rezyserem jest Polanski? ').
translate_pl(wachowski, 'Czy lubisz filmy, ktorych rezyserem jest Wachowski? ').
translate_pl(kurosawa, 'Czy lubisz filmy, ktorych rezyserem jest Kurosawa? ').
translate_pl(demme, 'Czy lubisz filmy, ktorych rezyserem jest Demme? ').
translate_pl(curtiz, 'Czy lubisz filmy, ktorych rezyserem jest Curtiz? ').
translate_pl(hitchcock, 'Czy lubisz filmy, ktorych rezyserem jest Hitchcock? ').
translate_pl(fincher, 'Czy lubisz filmy, ktorych rezyserem jest Fincher? ').
translate_pl(howard, 'Czy lubisz filmy, ktorych rezyserem jest Howard? ').
translate_pl(scorsese, 'Czy lubisz filmy, ktorych rezyserem jest Scorsese? ').
translate_pl(besson, 'Czy lubisz filmy, ktorych rezyserem jest Besson? ').
translate_pl(scott, 'Czy lubisz filmy, ktorych rezyserem jest Scott? ').
translate_pl(palkowski, 'Czy lubisz filmy, ktorych rezyserem jest Lukasz Palkowski? ').
translate_pl(mann, 'Czy lubisz filmy, ktorych rezyserem jest Mann? ').
translate_pl(hackford, 'Czy lubisz filmy, ktorych rezyserem jest Hackford? ').
translate_pl(tarantino, 'Czy lubisz filmy, ktorych rezyserem jest Quentin Tarantino? ').
translate_pl(kubrick, 'Czy lubisz filmy, ktorych rezyserem jest Kubrick? ').
translate_pl(aronofsky, 'Czy lubisz filmy, ktorych rezyserem jest Aronofsky? ').

/* Oskar */
translate_pl(oscar, 'Czy wolisz filmy, ktore zdobyly Oskara? ').

/* Filmy */
translate_pl(f1, 'Skazani na Shawshank').
translate_pl(f2, 'Ojciec chrzestny').
translate_pl(f3, 'Dwunastu gniewnych ludzi').
translate_pl(f4, 'Lista Schindlera').
translate_pl(f5, 'Nietykalni').
translate_pl(f6, 'Dobry, zly i brzydki').
translate_pl(f7, 'Forrest Gump').
translate_pl(f8, 'Leca zurawie').
translate_pl(f9, 'Lot nad kukulczym gniazdem').
translate_pl(f10, 'Pianista').
translate_pl(f11, 'Matrix').
translate_pl(f12, 'Siedmiu samurajow').
translate_pl(f13, 'Milczenie owiec').
translate_pl(f14, 'Casablanca').
translate_pl(f15, 'Psychoza').
translate_pl(f16, 'Siedem').
translate_pl(f17, 'Podziemny krag').
translate_pl(f18, 'Piekny umysl').
translate_pl(f19, 'Wyspa tajemnic').
translate_pl(f20, 'Leon zawodowiec').
translate_pl(f21, 'Szeregowiec Ryan').
translate_pl(f22, 'Gladiator').
translate_pl(f23, 'Czas apokalipsy').
translate_pl(f24, 'Bogowie').
translate_pl(f25, 'Goraczka').
translate_pl(f26, 'Adwokat diabla').
translate_pl(f27, 'Wsciekle psy').
translate_pl(f28, 'Mechaniczna pomarancza').
translate_pl(f29, 'Requiem dla snu').
translate_pl(f30, 'Taksowkarz').

/*
dur(long, _) :- verify(long).
dur(m142) :- dur(long).
dur(m175) :- dur(long).
dur(m96) :- dur(short).
dur(m195) :- dur(long).
dur(m112) :- dur(short).
dur(m161) :- dur(long).
dur(m142) :- dur(long).
dur(m97) :- dur(short).
dur(m133) :- dur(long).
dur(m150) :- dur(long).
dur(m136) :- dur(long).
dur(m207) :- dur(long).
dur(m118) :- dur(short).
dur(m102) :- dur(short).
dur(m109) :- dur(short).

dur(short) :- verify(short).
dur(long) :- verify(long).
*/