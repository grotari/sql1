USE MusicStore;
GO

select dbo.sf_InstrumentenVerfuegbarkeit_Status(3) -- nicht verfuegbar
select dbo.sf_InstrumentenVerfuegbarkeit_ID(2) -- 4

-- Den Lagerstatus eines bestimmten Instrumentes pruefen
SELECT Bezeichnung, InstrumentenID, Status
FROM tb_Instrumente RIGHT JOIN
tb_Lagerstatus ON
tb_Instrumente.LagerstatusID = tb_Lagerstatus.LagerstatusID
WHERE InstrumentenID = 3



