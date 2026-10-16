create table tables(
    id_table SERIAL PRIMARY KEY,
    nom VARCHAR(100)
);

create table serveur(
    id_serveur SERIAL PRIMARY KEY,
    nom VARCHAR(100)
);

insert into tables(nom) VALUES
('Table 1'),
('Table 2'),
('Table 3'),
('Table 4'),
('Table 5'),
('Table 6'),
('Table 7'),
('Table 8');

insert into serveur(nom) VALUES
('Njaka Rakoto'),
('Lalao Rasoa');

alter table commande add COLUMN id_serveur int references serveur (id_serveur);
alter table commande add COLUMN id_table int references tables (id_table);

update commande set id_serveur = 1, id_table = 1 where id_commande = 1;
update commande set id_serveur = 2, id_table = 2 where id_commande = 2;
