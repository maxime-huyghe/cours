count(_, [], 0).
count(Elt, [Elt | Rest], X) :- count(Elt, Rest, Y), X is Y + 1.
count(Elt, [_ | Rest], X) :- count(Elt, Rest, X).

