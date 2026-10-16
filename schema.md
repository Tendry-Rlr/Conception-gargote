# Etape 1 : La carte

## Travail : premiere table

PLAT_CARTE (**id_plat**, nom,categorie, prix) 
 
 ## Piege : 
- J'ai utilise le type **INTEGER** pour le prix
- L'identifiant utilise est **SERIAL**

# Etape 2 : Les categories
## Travail :
CATEGORIE(**id_categorie**, designation)
PLAT_CARTE (**id_plat**, nom, #id_categorie, prix) 

## Piege : 
- L'ajout d'une colonne categorie dans PLAT n'est pas pratique car on peut inserer n'importe quoi lors de l'insertion d'un nouveau plat sur la categorie
Exemple : une plat de meme categorie n'est pas reconnu si la case est differente (dessert et Dessert)

# Etape 3 : Les commandes

## Travail : 

COMMANDE (**id_commande**, designation, date)

COMMANDEDETAIL(**id_commande_detail**, #id_commande, #id_plat,nombre)

## Piege : 
- on place la quantite dans le detail de la commande pour savoir le quantite par plat

# Etape 4 : Les habitues

## Travail

CLIENT(**id_client**, nom)

COMMANDE (**id_commande**, designation, date, #id_client)

COMMANDEDETAIL(**id_commande_detail**, #id_commande, #id_plat, nombre)


## Piege :
 - La cle etrangere id_client est NOT NULL car on peut ne pas garder les clients de passage
 -  La jointure utilisee est LEFT JOIN pour ne pas perdre aucune commande

 # Etape 5 : Servers et tables

 ## Travail :

TABLES(**id_table**, designation)

SERVEUR(**id_serveur**, nom)

COMMANDE (**id_commande**, designation, date, #id_client, #id_table, #id_serveur)

## Piege :
- Une table de la salle et une commande sont deux choses differentes : on peut faire plusieurs commandes sur une meme table
- Le nom table pose probleme en SQL car ce mot est utilise pour creer une table en base de donnee relationnelle