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