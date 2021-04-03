/*B1*/ ancetre(X,Y):- ancetre(Z,Y), parent(X,Z).
/*B2*/ ancetre(X,Y):-parent(X,Y).
/*B3*/ parent(paul, jacques).
/*B4*/ parent(marie, jacques).
/*B5*/ parent(jacques, lili).
/*B6*/ parent(martine, lili).

/* Le programme entre en récursion infinie sur ancetre(Z, lili) comme dans le cours :
[trace]  ?- trace, ancetre(paul, lili).
   Call: (9) ancetre(paul, lili) ? creep
   Call: (10) ancetre(_1240, lili) ? creep
   Call: (11) ancetre(_1240, lili) ? creep
   Call: (12) ancetre(_1240, lili) ? creep
   Call: (13) ancetre(_1240, lili) ? creep
   Call: (14) ancetre(_1240, lili) ? creep
   Call: (15) ancetre(_1240, lili) ? creep
   Call: (16) ancetre(_1240, lili) ? creep
   Call: (17) ancetre(_1240, lili) ? creep
   Call: (18) ancetre(_1240, lili) ? creep
   Call: (19) ancetre(_1240, lili) ? creep
   Call: (20) ancetre(_1240, lili) ? creep
   Call: (21) ancetre(_1240, lili) ? creep
   Call: (22) ancetre(_1240, lili) ? creep
   Call: (23) ancetre(_1240, lili) ? creep
   Call: (24) ancetre(_1240, lili) ? creep
   Call: (25) ancetre(_1240, lili) ? creep
   Call: (26) ancetre(_1240, lili) ? creep
   Call: (27) ancetre(_1240, lili) ? creep
   Call: (28) ancetre(_1240, lili) ? creep
   Call: (29) ancetre(_1240, lili) ? creep
   Call: (30) ancetre(_1240, lili) ? creep
   Call: (31) ancetre(_1240, lili) ? creep
   Call: (32) ancetre(_1240, lili) ? creep
   Call: (33) ancetre(_1240, lili) ? abort
% Execution Aborted
*/
