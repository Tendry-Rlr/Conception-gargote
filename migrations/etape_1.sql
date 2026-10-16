
create table plat_carte(
    id_plat serial primary key,
    nom_plat varchar(100),
    categorie varchar(100),
    prix integer
);

insert into plat_carte(nom_plat, categorie, prix) values
('Romazava', 'Plat malagasy', 7000),
('Ravitoto sy henakisoa', 'Plat malagasy', 8000),
('Akoho sy voanjo', 'Plat malagasy', 8500),
('Mi sao', 'Plat chinoic', 6000),
('Soupe chinoise', 'Soupe', 6000),
('Mofogasy (Les 4)', 'Desser et goutre', 1000),
('Ranon Ampango', 'Boisson', 500);