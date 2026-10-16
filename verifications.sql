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
