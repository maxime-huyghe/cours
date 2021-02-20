# Évaluation d'une application XR par Maxime HUYGHE

Ce document évalue l'application **Pokémon Go**, de type AR, qui
est destinée aux joueurs, et est disponible sur iOS et Android.

## Elevator pitch

Le joueur se déplace sur une carte qui reproduit le monde réel en se
déplaçant dans la réalité. Il peut interagir avec des entités qui correspondent
à des lieux réels et capturer des créatures superposées aux monde réel.

## Implémentation

### Partie déplacement sur la carte

- Technologies : GPS, données Google Maps.
- Espace d'interaction : la voie publique.
- Mécanismes d'interaction : déplacements captés par le GPS, appuis sur les
    lieux "interactifs".
- Réalisme : l'affichage de la carte ainsi que de l'avatar du joueur ne sont
    absolument pas réalistes graphiquement.
- Room-scale ou seated : room-scale ?

### Partie capture de créatures

- Technologies : caméra, accéléromètre, gyroscope du téléphone.
- Espace d'interaction : l'espace autour du joueur.
- Mécanismes d'interaction : écran tactile, capteurs (on oriente le téléphone).
- Réalisme : le modèle 3D de la créature est superposé à l'image de la caméra
    et sa position est déterminée grâce aux capteurs de position. Le résultat
    n'est guère convaincant.
- Room-scale ou seated : room-scale.

## Forces

Les lieux dans le jeu correspondent à des lieux réels et les déplacements
in-game sont synchronisé aux déplacements dans le monde réel : le joueur a
accès à un "monde caché".

On peut aussi mentionner que ce jeu encourage l'activité physique, car le
joueur doit marcher pour y jouer.

## Améliorations possibles

On pourrait imaginer utiliser les multiples appareils photo et autres capteurs
des téléphones modernes pour faire du calcul de profondeur et mieux situer les
créatures dans le monde réel, rendant le résultat beaucoup plus convaincant.
Des modèles dans un style plus réalistes pourraient aussi aller dans ce sens.

