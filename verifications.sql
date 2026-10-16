-- etape 1
select * from plat_carte order by prix desc;

-- etape 2
select count(p.id_plat) nombrePlats, c.*
from plat_carte p join categorie c 
on p.id_categorie = c.id_categorie
group by c.id_categorie;

select count(p.id_plat) nombrePlats, c.*
from plat_carte p join categorie c 
on p.id_categorie = c.id_categorie
group by c.id_categorie
HAVING count(p.id_plat) = 0;


-- etape 3
select c.*, sum(cd.nombre * p.prix) montant
from
    commande c
    join commandedetail cd on c.id_commande = cd.id_commande
    join plat_carte p on p.id_plat = cd.id_plat
    group by c.id_commande;group by c.id_commande;

-- etape 4
select cd.*, cl.nom
from 
commande cd left join client cl on cd.id_client = cl.id_client;


-- etape 5
select s.*, count(c.id_commande) nbCommande, sum(cd.nombre * p.prix) ca
from
    commande c
    left join commandedetail cd on c.id_commande = cd.id_commande
    left join plat_carte p on p.id_plat = cd.id_plat
    left join serveur s on s.id_serveur = c.id_serveur
    group by s.id_serveur;