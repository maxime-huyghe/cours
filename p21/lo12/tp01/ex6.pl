/* Différence ensembliste */

/* Forme fonctionnelle
diff l r = case (l, r) of
    (l, []) -> l
    ([x | xs], [x | ys]) -> diff(xs, [x | ys])
    ([x | xs], [y | ys]) -> diff([x], )
*/

/* pour simplifier le programme */
contains([X | _], X).
contains([_ | RL], X) :- contains(RL, X).

diff([], _, []).
diff([X | XL], YL, [X | RL]) :- not(contains(YL, X)), diff(XL, YL, RL).
diff([X | XL], YL, RL) :- contains(YL, X), diff(XL, YL, RL).
/*
diff([X | XL1], [X | XL2], RL) :- diff(XL1, [X | XL2], RL), !.
diff([X | XL], [_ | YL], RL) :- diff([X | XL], YL, RL), diff(XL, YL, RL).
*/