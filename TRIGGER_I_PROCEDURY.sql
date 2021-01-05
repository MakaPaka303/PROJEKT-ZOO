--Procedura sprawdzająca zwierzęta bez partnera

CREATE PROCEDURE Partner() 
SELECT Nazwa FROM zwierzeta
GROUP BY Nazwa
HAVING MOD(COUNT(Nazwa),2);

--Trigger dodajacy nowa strefe po dodaniu nowego wybiegu

DELIMITER $$
CREATE TRIGGER `Dodaj_strefe` AFTER INSERT ON `wybieg`
    FOR EACH ROW
        BEGIN
            INSERT INTO `strefa`(Nazwa, Ilosc_wybiegow, Magazyn)
            VALUES ("Pusta",1,0);
        END; $$
DELIMITER ;

--Trigger2 Wyswietlajacy tabele zwierzeta zaraz po zmodyfikowaniu jej.

DELIMITER $$
CREATE TRIGGER `Wyswietl` AFTER UPDATE ON `zwierzeta`
    FOR EACH ROW
        BEGIN
            SELECT * FROM `zwierzeta`;
        END; $$
DELIMITER ;