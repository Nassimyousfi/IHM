Notes sur le SQL
================

Notes table par table

Toutes les tables commencent par le préfix "proj_"

## proj_TypeUtilisateur


### Champ TypeUtilisateur

Défini les types d'utilisateurs possibles:

- admin : administre le site et la base de données
- manager : peut gérér les spectacles et les réservations mais pas le site et la base
- user : client du site, peut créer un compte et faire des réservations

Un utilisateur du site doit obligatoirement avoir un TypeUtilisateur, seul un admin
peut changer le type d'un utilisateur.

varchar 10

## proj_Utilisateur

### IDU
Identifiant Unique utilisateur, **clé primaire**

type numérique auto-incrémenté

### login
Identifiant de l'utilisateur (pseudo, adresse mail)

Varchar 30, **UNIQUE**

Il ne doit pas y avoir 2 login identiques dans la base

### nom

Nom de l'utilisateur

Varchar 30

### prenom

Prenom de l'utilisateur

Varchar 30


### adressePostale1

Première ligne de l'adresse postale

Varchar 50

### adressePostale2

Deuxième ligne de l'adresse postale

Varchar 50

### codePostal

Code postal : traité comme string pour les client étrangers

Varchar 10

### ville

Ville de résidence

Varchar 15

### adresseMail

email de contact, *devra correspondre à un certain format*

**unique**

varchar 50

### telephone

telephone de contact, traité comme string pour les numéros étrangers, *devra
correspondre à un certain format*

varchar 15

### typeUtilisateur

référence le type d'utilisateur

Par défaut, réglé sur *user*, devra être changé ultérieurement par un admin

Clé étrangère sur **proj_TypeUtilisateur.TypeUtilisateur**

varchar 10
