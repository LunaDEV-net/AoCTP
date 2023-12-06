nomen(auto).
nomen(stringtheorie).
nomen(haus).
nomen(mann).
nomen(frau).
nomen(hund).
nomen(freundschaft).
nomen(liebe).

verb(fährt).
verb(berechnen).
verb(berechnet).
verb(geht).
verb(wird-gebaut).
verb(entsteht).


artikel(der).
artikel(die).
artikel(das).

allow_artikel(das, auto).
allow_artikel(die, stringtheorie).
allow_artikel(das, haus).
allow_artikel(die, frau).
allow_artikel(der, hund).
allow_artikel(die, freundschaft).
allow_artikel(die, liebe).

allow_verb(auto,fährt).

allow_verb(stringtheorie,berechnen).
allow_verb(mann,berechnet).
allow_verb(frau,berechnet).

allow_verb(haus,wird-gebaut).

allow_verb(haus,entsteht).
allow_verb(freundschaft,entsteht).
allow_verb(liebe,entsteht).

allow_verb(mann,geht).
allow_verb(frau,geht).
allow_verb(hund,geht).




satz([X,Y,Z]) :- artikel(X),nomen(Y),verb(Z),allow_artikel(X,Y),allow_verb(Y,Z).


/** <examples>
?- satz(K).
*/
