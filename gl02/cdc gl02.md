# Cahier des charges de projet GL02 - Équipe 3MR

Version 0
Matthieu Soliman, Maxence Barbançon, Maxime Huyghe, Ronan Gasselin

# Préface (1 page)

Ce document s'adresse à l'équipe qui entreprendra le développement de ce projet
ainsi qu'à notre responsable de TD.

Il liste d'abord brièvement les exigences fonctionnelles et non-fonctionnelles,
avant de donner plus de détails sur ces exigences et sur les formats de données
utilisés.

Ce document sera à la fois versionné sur un système de contrôle de version
comme Git ou SVN et par un numéro de version sous le titre qui devra être
incrémenté à chaque changement, sauf s'il ne consiste que de corrections
orthographiques ou similaire.

# Introduction (1 page)

Rappel général du contexte:

Le cabinet de conseil UIConsult fait appel à notre équipe car il souhaite se
doter d'un outil d'aide à l'analyse des communications. Leurs demande fait
suite au besoin de donner aux responsables de secteur la possibilité de
produire un rapport d'analyse des échanges par emails des différents
collaborateurs. Ce qui leur permettra un suivi individuel se qui est pertinent
pour la préparation des entretiens d'évaluation réguliers sur leurs
performances.

L'équipe de développement devra répondre aux objectifs détaillés ci-dessous.
- extraire les e-mails.
- extraire les informations des contacts des collaborateurs au format VCard (RFC6350).
- développer un outils en ligne de commande

# Glossaire (si nécessaire)

- RCom : rapport d'analyse des échanges par email des collaborateurs

# Liste exigences fonctionnelles et non-fonctionnelles

Objectif: Extraire les données importantes des boîtes emails et préparer les graphiques au format SVG (et/ou PNG) à ajouter dans le rapport.

Extraire des emails: contenu, nom, fonction
disponibles au format VCard (RFC6350).

[10 max fonctionnelles, quelques non-fonctionnelles]
- SPEC1 Compter les emails échangés sur une période
- SPEC2 Retourner la liste des "buzzy days" (email écrit le week-end ou la nuit)
- SPEC3 Donner le top10 des interlocuteurs d'un collaborateur
- SPEC4 Donner le top10 des termes les plus utilisés dans les objets d'une boîte mail
- SPEC5 Visualiser le nombre d'échanges entre collaborateurs pour une boîte mail donnée (nuage de points)
- SPEC6 Retrouver des emails avec différent critères: nom, prénom, email
- SPEC7 Extraire les contacts d'un collaborateur au format VCard (RFC6350)
- SPEC_NF1 ???

# Spécification détaillée (8-15 pages)

## Exigences
format : Identifiant | Titre | Objectifs
| Précondition(s) | Postcondition(s) | Entrées | Traitements | Sorties | Gestion des erreurs

### SPEC1

Compter les emails échangés sur une période

Objectifs : on veut savoir le nombre de mails échangés soit au total soit sur une période temporelle donnée

Préconditions

Postconditions

Entrées

Traitements

Sorties

Gestion des erreurs :
- il n'y a pas de mails échangés dans la période donnée -> retourner 0

## Formats de données

Email :
```abnf
; Some headers could be validated in the grammar.
; Not doing it because they are not relevant to this software.
email =
    "Message-ID" hsep message-id-line
    "Date" hsep date-line
    "From" hsep email-line
    "To" hsep email-line
    "Subject" hsep line
    "Mime-Version" hsep line
    "Content-Type" hsep line
    "Content-Transfer-Encoding" hsep line
    "X-From" hsep line
    "X-To" hsep line
    "X-cc" hsep text *("," text) crlf
    "X-bcc" hsep text *("," text) crlf
    "X-Folder" hsep line
    "X-Origin" hsep line
    "X-Filename" hsep line
    *line

; Header separator
hsep = ": "

line = text crlf

text = *(vchar/wsp)

message-id-line = "<" text "@" text ">" crlf

date-line = day-of-week ", " date wsp time crlf
day-of-week = "Mon" / "Tue" / "Wed" / "Thu" / "Fri" / "Sat" / "Sun"
date = day wsp month wsp 4digit
day = [(1-3)] digit
month = "Jan" / "Feb" / "Mar" / "Apr" / "May" / "Jun" / "Jul" / "Aug" / "Sep"
    / "Oct" / "Nov" / "Dec"
time = hour ":" min-or-sec ":" min-or-sec wsp ("-"/"+") 4digit "(" 3(A-Z) ")"
hour = (0-2) digit
min-or-sec = (0-5) digit

email-line = email crlf
; We shouldn't assume the host part of an email address is a URL
email = text "@" text
```

## Sémantique des données

# Conclusion

# Bibliographie

# Annexes

