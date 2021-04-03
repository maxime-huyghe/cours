/* Famille */
femme(marie).
femme(sophie).
femme(jeanne).

homme(pierre).
homme(jules).
homme(richard).
homme(yves).

parent(jules, richard).
parent(jules, pierre).
parent(jules, yves).
parent(yves, sophie).
parent(jeanne, sophie).

conjoint(marie, pierre).
conjoint(yves, jeanne).

beauParent(BP, BE) :- parent(BP, Conjoint), conjoint(BE, Conjoint).
beauParent(BP, BE) :- parent(BP, Conjoint), conjoint(Conjoint, BE).
