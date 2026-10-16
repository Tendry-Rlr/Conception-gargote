-- Active: 1773080411410@@127.0.0.1@5432@gargoteconception
create table categorie(
    id_categorie SERIAL PRIMARY KEY,
    designation VARCHAR(100)
);

insert into categorie(designation) values
('Plats malagasy'), 
('Plats chinois'), 
('Soupes'), 
('Desserts'), 
('Boissons'); 

alter table plat_carte add COLUMN id_categorie int references categorie (id_categorie);

update plat_carte set id_categorie = 1 where categorie = 'Plat malagasy';
update plat_carte set id_categorie = 2 where categorie = 'Plat chinois';
update plat_carte set id_categorie = 3 where categorie = 'Soupe';
update plat_carte set id_categorie = 4 where categorie = 'Desser et goutre';
update plat_carte set id_categorie = 5 where categorie = 'Boisson';

alter table plat_carte drop column categorie;
alter table plat_carte alter column id_categorie set not null;
