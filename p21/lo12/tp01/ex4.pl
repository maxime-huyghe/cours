/*B1*/ ancetre(X,Y):-parent(X,Z), ancetre(Z,Y).
/*B2*/ ancetre(X,Y):-parent(X,Y).
/*B3*/ parent(paul, jacques).
/*B4*/ parent(marie, jacques).
/*B5*/ parent(jacques, lili).
/*B6*/ parent(martine, lili).

/* Pour ce programme, l'arbre vu en cours correspond au comportement de prolog :
?- trace, ancetre(paul, lili).
   Call: (9) ancetre(paul, lili) ? creep
   Call: (10) parent(paul, _732) ? creep
   Exit: (10) parent(paul, jacques) ? creep
   Call: (10) ancetre(jacques, lili) ? creep
   Call: (11) parent(jacques, _732) ? creep
   Exit: (11) parent(jacques, lili) ? creep
   Call: (11) ancetre(lili, lili) ? creep
   Call: (12) parent(lili, _732) ? creep
   Fail: (12) parent(lili, _732) ? creep
   Redo: (11) ancetre(lili, lili) ? creep
   Call: (12) parent(lili, lili) ? creep
   Fail: (12) parent(lili, lili) ? creep
   Fail: (11) ancetre(lili, lili) ? creep
   Redo: (10) ancetre(jacques, lili) ? creep
   Call: (11) parent(jacques, lili) ? creep
   Exit: (11) parent(jacques, lili) ? creep
   Exit: (10) ancetre(jacques, lili) ? creep
   Exit: (9) ancetre(paul, lili) ? creep
true .
*/
