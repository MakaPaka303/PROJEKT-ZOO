  CREATE VIEW kwerenda1 AS 
SELECT Imie,Nazwa FROM zwierzeta
INNER JOIN wybieg ON zwierzeta.wybieg = wybieg.id
WHERE wybieg.strefa = 1  ;

  CREATE VIEW kwerenda2 AS
SELECT Nazwa, Rodzaj, magazyn.Id as Magazyn FROM pokarm
INNER JOIN magazyn on magazyn.id=pokarm.magazyn
WHERE pokarm.ilosc<20;
  
CREATE VIEW kwerenda3 AS
SELECT COUNT(wybieg.id) AS Liczba_wybiegow, strefa.nazwa
FROM wybieg
INNER JOIN strefa ON strefa.Id=wybieg.Strefa
GROUP BY strefa.nazwa;
  
CREATE VIEW kwerenda4 AS
SELECT Imie, Nazwa, Wiek FROM zwierzeta
WHERE wiek = (SELECT MAX(wiek) FROM zwierzeta);
  
CREATE VIEW kwerenda5 AS
SELECT AVG(Wiek) AS Srednia_wieku_zwierzat_w_1_i_4_strefie
FROM zwierzeta
LEFT JOIN wybieg ON wybieg.id=zwierzeta.Wybieg
RIGHT JOIN strefa ON wybieg.strefa=strefa.id
WHERE strefa.id=4 OR strefa.id=1;
  
CREATE VIEW kwerenda6 AS
SELECT magazyn.id, 
SUM(Ilosc) AS Ilosc_pokarmu, 
magazyn.Pojemnosc 
FROM pokarm
INNER JOIN magazyn ON pokarm.Magazyn=magazyn.Id
GROUP BY magazyn.id;
  
CREATE VIEW kwerenda7 AS
SELECT wybieg.id, wybieg.rodzaj, wybieg.klatka FROM wybieg
LEFT JOIN zwierzeta ON zwierzeta.wybieg = wybieg.id
WHERE zwierzeta.wybieg IS NULL;
  
CREATE VIEW kwerenda8 AS
SELECT Imie AS Imie_konczace_sie_na_A, wiek FROM zwierzeta
WHERE Imie LIKE '%a' AND wiek<=4;
  
CREATE VIEW kwerenda9 AS
SELECT Nazwa, Ilosc FROM Pokarm
GROUP BY Nazwa
ORDER BY Ilosc DESC;
  
CREATE VIEW kwerenda10 AS
SELECT COUNT(zw.plec) AS suma_samic, st.nazwa FROM zwierzeta zw
INNER JOIN wybieg wb ON zw.Wybieg=wb.id
INNER JOIN strefa st ON wb.Strefa=st.id
WHERE zw.plec='samica'
GROUP BY st.nazwa
HAVING suma_samic>2;

-- Kwerenda1: Wyswietla zwierzeta z strefy 1.
-- Kwerenda2: Wyswietla pokarm w danym magazynie gdzie ilosc jest mniejsz niz 20.
-- Kwerenda3: Wyswietla ilosc wybiegow na danych rodzajach stref.
-- Kwerenda4: Wyswietla zwierzeta ktore maja wiek równy maksymalnemu wiekowi w tabeli zwierzeta.
-- Kwerenda5: Wyswietla srednia wieku zwierzat w strefach 1 i 4.
-- Kwerenda6: Wyswietla sume ilosci pokarmu w danych magazynach.
-- Kwerenda7: Wyswietla puste wybiegi.
-- Kwerenda8: Wyswietla zwierzeta z imionami konczacymi sie na "a" oraz wiekiem mniejszym lub rownym 4.
-- Kwerenda9: Wyswietla pokarm z calego zoo oraz jego ilosc.
-- Kwerenda10: Wyswietla suma samic wieksza niz 2 w strefach grupowanych nazwa.
