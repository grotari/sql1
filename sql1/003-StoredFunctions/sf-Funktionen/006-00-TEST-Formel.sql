/* Testen wie das Skript der Funktion aufgebaut sein muss, 
um den Gesamtpreis der Instrumente (Preis x Anzahl) zu bestimmen*/

SELECT SUM(tb_Instrumente.VK * tb_InstrumentenVerkauf.Anzahl) AS GesamtPreis
FROM tb_Instrumente 
	INNER JOIN tb_InstrumentenVerkauf 
		ON tb_Instrumente.InstrumentenID = tb_InstrumentenVerkauf.InstrumentenID 
	INNER JOIN  tb_Bestellung 
		ON tb_InstrumentenVerkauf.BestellungID = tb_Bestellung.BestellungID
WHERE (tb_Bestellung.BestellungID = 2);

SELECT SUM(tb_Instrumente.VK * tb_InstrumentenVerkauf.Anzahl) AS GesamtPreis
FROM tb_Instrumente 
	INNER JOIN tb_InstrumentenVerkauf 
		ON tb_Instrumente.InstrumentenID = tb_InstrumentenVerkauf.InstrumentenID
WHERE (tb_InstrumentenVerkauf.BestellungID = 2);