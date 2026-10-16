create table type_paiement(
    id_type SERIAL PRIMARY KEY,
    designation VARCHAR(100)
);

create table paiement(
    id_paiement SERIAL PRIMARY KEY,
    id_type int not null REFERENCES type_paiement(id_type),
    id_commande int not null REFERENCES commande(id_commande),
    montant_payee integer
);

insert into type_paiement(designation) VALUES
('Especes'),
('MVOLA'),
('Orange Money'),
('Airtel');

insert into paiement(id_type, id_commande, montant_payee) values
(1, 1, 5000),
(3, 2, 6000);