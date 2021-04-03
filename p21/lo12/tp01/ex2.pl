/* List reverse */

reverse([],T,T).
reverse([X|Y],T,R) :- reverse(Y,[X|T],R).
