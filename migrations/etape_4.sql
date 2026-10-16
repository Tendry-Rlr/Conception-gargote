create table client(
    id_client SERIAL PRIMARY KEY,
    nom VARCHAR(100)
);

alter table commande add COLUMN id_client int references client (id_client);

insert into client(nom) VALUES
('Alice'),
('Bob');

update commande set id_client = 1 where id_commande = 1;
update commande set id_client = 2 where id_commande = 2;

INSERT INTO commande (designation, daty) values
('Commande 3', '2026-10-17');

