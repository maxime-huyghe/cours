Maxime Huyghe

# TP IF37 Unity - Compte rendu

## Processus

J'ai commencé par ajouter quelques objets à ma scène.

![](Screenshot from 2020-10-22 11-31-26.png)

Le matériau du cube utilise une normal map d'une texture de tapis, comme on
peut le voir sur la deuxième capture.

L'apparence du sol est due à une normal map ainsi qu'une height map sur le
matériau.

![](Screenshot from 2020-10-22 11-31-50.png)

J'ai ensuite ajouté boxboy à la scène.

![](./Screenshot from 2020-10-22 11-51-52.png)

Puis d'autres cubes, affectés par la physique (ils étaient originellement
empilés verticalement).

![](./Screenshot from 2020-10-22 11-54-41.png)

J'ai également fait en sorte que boxboy se déplace lorsqu'on appuie sur les
flèches, et j'ai lié la position de la caméra à la sienne pour créer une sorte
de vue isométrique.

![](./Screenshot from 2020-10-22 14-50-30.png)

J'ai ensuite essayé quelques skybox, premièrement avec une des textures
intégrées à Unity, étant donné que je n'arrivais pas à faire fonctionner
l'asset store.

![](Screenshot from 2020-10-23 15-28-14.png)

Grâce à l'aide de mes camarades, j'ai finalement pu télécharger une skybox.
J'ai également modifié les paramètres d'éclairage.

![](Screenshot from 2020-10-26 18-01-26.png)

Ici, boxboy n'est pas affecté par la physique, mais le cube qu'il tient
commence à tomber.

![](Screenshot from 2020-10-26 18-07-07.png)

Première intégration du TPC : on peut se déplacer et on respawn après une
chute.

![](Screenshot from 2020-10-26 18-14-22.png)

J'ai tenté de rendre boxboy jouable en le plaçant en enfant de l'armature du
TPC. On voit cependant toujours le modèle par défaut du TPC, et il faut un
"avatar" pour remplacer le modèle par défaut, boxboy n'en est malheureusement
pas un.

![](Screenshot from 2020-10-29 18-43-06.png)

J'ai aussi fait quelques changements d'eclairage tout au long de mes
modifications.

## Conclusion

J'ai trouvé ce TP très intéressant, et j'ai été surpris par la puissance
d'Unity. Je ne pensais en effet pas qu'on puisse simplifier le prototypage
d'applications 3D à ce point.

