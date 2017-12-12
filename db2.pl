/*kontynent, klimat, jezyk, cena, koszt, odleglosc, popularnosc*/

unseen(tajlandia).
unseen(japonia).
unseen(egipt).
unseen(kenia).
unseen(hiszpania).
unseen(francja).
unseen(norwegia).
unseen(usa).
unseen(brazylia).
unseen(chile).
unseen(polska).
unseen(kanada).
unseen(indie).

check(tajlandia) :- tajlandia.
check(japonia) :- japonia.
check(egipt) :- egipt.
check(kenia) :- kenia.
check(hiszpania) :- hiszpania.
check(francja) :- francja.
check(norwegia) :- norwegia.
check(usa) :- usa.
check(brazylia) :- brazylia.
check(chile) :- chile.
check(polska) :- polska.
check(kanada) :- kanada.
check(indie) :- indie.

tajlandia :- distance(8000), verify(asia), verify(hot_climate), (verify(thai_l); verify(eng_l)).
japonia :- distance(8500), verify(asia), verify(temperate_climate), (verify(jap_l); verify(eng_l)).
kenia :- distance(6100), verify(africa), verify(hot_climate), (verify(eng_l)).
egipt :- distance(3000), verify(africa), verify(hot_climate), (verify(arab_l); verify(eng_l)).
hiszpania :- distance(2200), verify(europe), verify(medi_climate), (verify(hisp_l); verify(eng_l)).
francja :- distance(1600), verify(europe), verify(medi_climate), (verify(fr_l); verify(eng_l)).
norwegia :- distance(1500), verify(europe), verify(cold_climate), (verify(norw_l); verify(eng)).
usa :- distance(8400), verify(north_america), verify(temperate_climate), (verify(eng_l)).
brazylia :- distance(10000), verify(south_america), verify(hot_climate), (verify(port_l)).
chile :- distance(13200), verify(south_america), verify(temperate_climate), (verify(hisp_l)).
polska :- distance(0), verify(europe), verify(temperate_climate), (verify(pl_l)).
kanada :- distance(7000), verify(north_america), verify(cold_climate), (verify(eng_l); verify(fr_l)).
indie :- distance(6000), verify(asia), verify(hot_climate), verify(eng_l).

distance(X):- (X < 2500, verify(near); X >= 2500, verify(far)).

descript(tajlandia):- rating(8), popular(7).
descript(japonia):- rating(10), popular(8).
descript(kenia):- rating(6), popular(3).
descript(egipt):- rating(5), popular(6).
descript(hiszpania):- rating(8), popular(9).
descript(francja):- rating(8), popular(9).
descript(norwegia):- rating(9), popular(6).
descript(usa):- rating(7), popular(6).
descript(brazylia):- rating(5), popular(2).
descript(chile):- rating(8), popular(4).
descript(polska):- rating(8), popular(9).
descript(kanada):- rating(8), popular(3).
descript(indie):- rating(4), popular(3).

rating(X) :- X < 4, write('Niestety miejsce to nie jest zbyt dobrze oceniane wśród turystów'), nl.
rating(X) :- X < 7, write('Miejsce to ma średnie oceny wśród turystów'), nl.
rating(_) :- write('Miejsce to jest bardzo dobrze oceniane wśród turystów'), nl.

popular(X) :- X < 4, write('Miejsce to nie jest zbyt popularne'), nl.
popular(X) :- X < 7, write('Miejsce to jest średnio popularne'), nl.
popular(_) :- write('Miejsce to jest bardzo popularne'), nl.

/* ************************* */

/* Kontynent */
translate_pl(asia, 'Czy lubisz Azję? ').
translate_pl(europe, 'Czy lubisz Europę? ').
translate_pl(north_america, 'Czy lubisz Amerykę Północną? ').
translate_pl(south_america, 'Czy lubisz Amerykę Południową? ').
translate_pl(africa, 'Czy lubisz Afrykę? ').

/* Klimat */
translate_pl(hot_climate, 'Czy lubisz gorący klimat? ').
translate_pl(temperate_climate, 'Czy lubisz klimat umiarkowany? ').
translate_pl(cold_climate, 'Czy lubisz zimny klimat? ').
translate_pl(medi_climate, 'Czy lubisz klimat śródziemnomorski? ').

/* Język */
translate_pl(eng_l, 'Czy znasz język angielski? ').
translate_pl(hisp_l, 'Czy znasz język hiszpański? ').
translate_pl(thai_l, 'Czy znasz język tajski? ').
translate_pl(jap_l, 'Czy znasz język japoński? ').
translate_pl(fr_l, 'Czy znasz język francuski? ').
translate_pl(port_l, 'Czy znasz język portugalski? ').
translate_pl(pl_l, 'Czy znasz język polski? ').

/* Destynacje */
translate_pl(tajlandia, 'Tajlandia').
translate_pl(japonia, 'Japonia').
translate_pl(egipt, 'Egipt').
translate_pl(kenia, 'Kenia').
translate_pl(hiszpania, 'Hiszpania').
translate_pl(francja, 'Francja').
translate_pl(norwegia, 'Norwegia').
translate_pl(usa, 'USA').
translate_pl(brazylia, 'Brazylia').
translate_pl(chile, 'Chile').
translate_pl(polska, 'Polska').
translate_pl(kanada, 'Kanada').
translate_pl(indie, 'Indie').

/* Odległość */
translate_pl(near, 'Czy chcesz polecieć gdzieś blisko? ').
translate_pl(far, 'Czy chcesz polecieć gdzieś daleko? ').

yes(pl_l).
