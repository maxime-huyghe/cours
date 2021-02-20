# Description d'une application XR par Maxime HUYGHE

Ce document décrit l'application **Holo'section**, de type MR, qui serait
destinée au étudiants en médecine, et fonctionnerait sur un ordinateur.

## Elevator pitch

Cette application permet aux étudiants en médecine de disséquer un corps
virtuel affiché en hologramme.

## Implémentation

- Technologies : affichage hologramme, controleurs à détection de mouvement
    (type controleur VR). On pourrait imaginer une sorte de "base" qui contient
    un ordinateur et un afficheur à hologramme.
- Espace d'interaction : l'espace de l'affichage hologramme.
- Mécanismes d'interaction : les controleurs permettent de saisir le corps et
    de le déplacer dans l'espace, et de déplacer le plan d'une vue en coupe.
    Ils peuvent aussi simuler des scalpels et autres outils de chirurgie.
- Réalisme : le corps doit être le plus réaliste possible, même si la
    perfection n'est pas atteignable (notamment à cause des organes que l'on ne
    connaît pas encore).
- Room-scale ou seated : room-scale dans la mesure où il est possible de
    déplacer le corps et d'utiliser l'application à plusieurs.

## Forces

Cette application permet de manipuler un corps avec une vue en coupe, ce qui
n'est pas possible autrement. Elle réduit grandement le besoin de
s'approvisionner en corps à disséquer.

