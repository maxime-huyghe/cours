Maxime Huyghe

# TP IF37 Unity - Compte rendu

## Processus

La scène de départ.

![](img/camera en place.png)

J'ai ajouté la première Image Target (billet). J'ai dû télécharger la database
depuis le site de Vuforia et l'importer manuellement.

![](img/database telechargee et image ajoutee.png)

Dans un premier temps, j'ai essayé de faire le TP sous Linux, mais j'avais
des erreurs et des écrans noirs. J'ai donc réessayé sous Windows, et ça
fonctionne. J'ai aussi ajouté la deuxième target.

![](img/ca fonctionnne sous windows.png)

J'ai ajouté le modèle de Trump.

![](img/on ajoute trump.png)

J'ai changé son orientation et mis l'animation en mode loop (la position de
cette option a changé).

![](img/trump ajoute, animation en mode loop.png)

Tout fonctionne dans le mode simulateur.

![](img/tout marche dans le simulateur.png)

Dans la réalité (augmentée) Trump est un peu trop grand...

![](img/trump est un peu trop grand....png)

J'ai donc réglé la scale de la target correspondante à 0.1.

![](img/scale reduite, c'est mieux.png)

J'ai ensuite désactivé le démarrage automatique de l'animation.

![](img/l'animation etait en play automatically donc je l'ai desactive.png)

J'ai ensuite ajouté un deuxième personnage (Amane Kisora-chan), qui s'affiche
bien, mais Vuforia ne détecte malheureusement pas les deux targets en même
temps.

![](img/amane kisora-chan ajoutee, vuforia a du mal a detecter les deux marqueurs a la fois.png)

Après ça, j'ai ajouté le script d'animation...

![](img/le script d'animation.png)

...puis un bouton.

![](img/magnifique bouton.png)

J'ai eu quelques difficultés à ajouter le OnClick au bouton, notamment car le
drag-and-drop ne fonctionnait pas. Il a fallu que je cherche le modèle de Trump
dans la scène depuis le menu d'ajout du OnClick.

![](img/trump marche, quelques difficultes a trouver comment ajouter le onclick, nottament car le drag and drop ne marchait pas.png)

J'ai répété la procédure pour donner une animation "pose de victoire" au
deuxième personnage.

![](img/animation de pose de victoire pour amane kisora.png)

## Conclusion

Je suis toujours aussi impressioné par les possibilités de prototypage offertes
par Unity, mais assez déçu d'avoir passé tout ce temps à essayer de faire
fonctionner Vuforia sous Linux.

