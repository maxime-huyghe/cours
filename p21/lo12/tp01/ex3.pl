inc([X], [Y]) :- Y is X + 1.
inc([X | XRest], [Y | YRest]) :- Y is X + 1, inc(XRest, YRest).

/*
 * Requêtes :
 *   inc([2], R). R = [3].
 *   inc([], R). false.
 *   inc([1, 2], R). R = [2, 3].
 *   inc([2], [3]). true.
 *   inc([2], [2]). false.
 *   inc([2], [4]). false.
 */

/* Trace pour inc([1, 2], R).
[trace]  ?- inc([1, 2], R).
   Call: (8) inc([1, 2], _4404) ? creep
   Call: (9) _4636 is 1+1 ? creep
   Exit: (9) 2 is 1+1 ? creep
   Call: (9) inc([2], _4638) ? creep
   Call: (10) _4648 is 2+1 ? creep
   Exit: (10) 3 is 2+1 ? creep
   Exit: (9) inc([2], [3]) ? creep
   Exit: (8) inc([1, 2], [2, 3]) ? creep
R = [2, 3] .

Similaire à l'arbre.
 */
