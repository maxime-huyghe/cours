# Exécution du moteur d'inférence

Base de faits initiale :

- F1 : homicide
- F2 : acte volontaire
- F3 : coupable = la mère
- F4 : acte prémédité
- F5 : victime = un enfant

|Num cycle|ERC|Règle choisie|Faits produits|
----------|---|-------------|---------------
|1|R1, R10, R16|R1|F6 : type-homicide = volontaire|
|2|R5, R10, R16|R5|F7 : meurtre|
|3|R3, R9, R10, R16|R3|aucun (=F6)|
|4|R9, R10, R16|R9|F8 : assassinat|
|5|R10, R16|R10|F9 : cas mère-enfant|
|6|...|...|...|