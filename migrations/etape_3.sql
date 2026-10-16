create table commande(
    id_commande SERIAL PRIMARY KEY,
    designation VARCHAR(100),
    daty DATE
);

create table commandedetail(
    id_commande_detail SERIAL PRIMARY KEY,
    id_commande int NOT NULL REFERENCES commande (id_commande),
    id_plat int NOT NULL REFERENCES plat_carte (id_plat),
    nombre int
);

INSERT INTO commande (designation, daty) values
('Commande 1', '2026-10-16'),
('Commande 2', '2026-10-16');

insert into commandedetail(id_commande, id_plat, nombre) VALUES
('1', 1, 2),
('1', 4, 1),
('2', 2, 1),
('2', 2, 2);

