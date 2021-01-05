INSERT INTO 
	zwierzeta(Imie, nazwa, Rodzaj, Wybieg, wiek, plec)
VALUES

    ('Pepe','Dziobak','Ssak',1,4,'samiec'),
	('Morfeusz','Lew','Ssak',11,9,'samiec'),
    ('Toffi','Papuga','Ptak',16,2,'samiec'),
    ('Cukierek','Dziobak','Ssak',1,5,'samica'),
    ('Baton','Zyrafa','Ssak',12,8,'samica'),
    ('Pączek','Nosorozec','Ssak',13,9,'samiec'),
    ('Ambrozja','Hipopotam','Ssak',2,30,'samica'),
    ('Cedryk','Zyrafa','Ssak',12,6,'samiec'),
    ('Greta','Hipopotam','Ssak',2,26,'samica'),
    ('Palma','Papuga','Ptak',16,3,'samica'),
    ('Frezja','Slon','Ssak',14,34,'samica'),
    ('Tornado','Hełmiatka','Ptak',19,2,'samiec'),
    ('Karmel','Alpaka','Ssak',15,4,'samiec'),
    ('Keks','Akara','Ryba',7,1,'samiec'),
    ('Fanta','Gupik','Ryba',8,2,'samica'),
    ('Czoko','Bóbr','Ssak',4,4,'samiec'),
    ('Czili','Brzana ssąca','Ryba',6,1,'samiec'),
    ('Figa','Wydra','Ssak',3,4,'samica'),
    ('Frytka','Hełmiatka','Ptak',19,2,'samica'),
    ('Imbir','Emu','Ptak',20,3,'samiec'),
    ('Brandy','Neon innesa','Ryba',10,1,'samica'),
    ('Kotlet','Slon','Ssak',14,27,'samiec'),
    ('Cezar','Kirysek czarny','Ryba',9,1,'samiec'),
    ('Eris','Wydra','Ssak',3,8,'samiec'),
    ('Ozyrys','Czernica','Ptak',17,2,'samiec'),
    ('Wagner','Dudek','Ptak',18,2,'samiec'),
    ('Jersey','Gupik','Ryba',8,1,'samiec'),
    ('Ural','Alpaka','Ssak',15,4,'samica'),
    ('Warta','Bóbr','Ssak',4,8,'samica'),
    ('Mort','Dudek','Ptak',18,1,'samiec'),
    ('Gerda','Czernica','Ptak',17,3,'samica');
    
    INSERT INTO 
	wybieg(Id, Rodzaj, Klatka, Ilosc_miejsc, Strefa)
VALUES
(1,'Ogrodzone','Nie','4','1'),
(2,'Ogrodzone','Tak','4','1'),
(3,'Ogrodzone','Nie','4','2'),
(4,'Ogrodzone','Nie','4','2'),
(5,'Ogrodzone','Nie','5','3'),
(6,'Akwarium','Nie','7','4'),
(7,'Akwarium','Nie','7','4'),
(8,'Akwarium','Nie','7','5'),
(9,'Akwarium','Nie','7','5'),
(10,'Akwarium','Nie','1','6'),
(11,'Ogrodzone','Nie','2','7'),
(12,'Ogrodzone','Nie','2','7'),
(13,'Ogrodzone','Nie','2','8'),
(14,'Ogrodzone','Nie','2','8'),
(15,'Ogrodzene','Nie','3','9'),
(16,'Klatka','Tak','5','10'),
(17,'Klatka','Tak','5','10'),
(18,'Klatka','Tak','4','11'),
(19,'Klatka','Tak','4','11'),
(20,'Klatka','Tak','3','12');
    
    INSERT INTO 
	strefa(Id, Nazwa, Ilosc_wybiegow, Magazyn)
VALUES
(1,'Wodno-Ladowe',2,1),
(2,'Wodno-Ladowe',2,2),
(3,'Wodno-Ladowe',1,3),
(4,'Ryby',2,4),
(5,'Ryby',2,5),
(6,'Ryby',1,6),
(7,'Ladowe',2,7),
(8,'Ladowe',2,8),
(9,'Ladowe',1,9),
(10,'Ptaki',2,10),
(11,'Ptaki',2,11),
(12,'Ptaki',1,12);

INSERT INTO 
	pokarm(Nazwa, Rodzaj, Magazyn, Ilosc)
    VALUES
    ('Surowa ryba','Ryba',1,22),
    ('Siano','Roslinne',1,36),
    ('Cielecina','Mieso',2,15),
	('Wolowina','Mieso',2,16),
    
    ('Suszone Dżdżownice','robaki',4,75),
    ('Larwy Muchy','robaki',4,43),
    ('Mieszanka dla ryb','robaki',5,23),
    ('Mieszanka dla ryb','robaki',5,23), 
    ('Dżdżownice','robaki',6,56),
    
    ('Wolowina','Mieso',7,11),
    ('Siano','Roslinne',7,46),
    ('Wieprzowina','Mieso',8,98),
    ('Jablka','Roslinne',8,45), 
    ('Kiszonka','Roslinne',9,32),
    
    ('Mieszanka ziaren','Roslinne',10,65),
    ('Ziarno zyta','Roslinne',10,34),
    ('Ziarno pszenicy','Roslinne',11,34),
    ('Ziarno jeczmienia ','Roslinne',11,64),
    ('Siano','Roslinne',12,43);

INSERT INTO 
	magazyn(Id, Strefa, Pojemnosc, chlodzenie)
    VALUES
    (1,1,200,'Tak'),
    (2,2,300,'Tak'),
    (3,3,600,'Nie'),
    (4,4,1000,'Nie'),
    (5,5,100,'Nie'),
    (6,6,100,'Nie'),
	(7,7,700,'Tak'),
    (8,8,700,'Tak'),
    (9,9,300,'Tak'),
    (10,10,300,'Nie'),
    (11,11,200,'Tak'),
    (12,12,200,'Nie');
    