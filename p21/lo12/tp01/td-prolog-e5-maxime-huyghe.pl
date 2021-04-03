/* Ajout sans doublon */

add(Elt, [], [Elt]).
add(Elt, [Elt | Rest], [Elt | Rest]) :- !.
add(Elt, [OtherElt | Rest], [OtherElt | ResultRest]) :- add(Elt, Rest, ResultRest).

/* Conclusion : c'est mystique. ? */
