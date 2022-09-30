USE [MusicStore]
GO
-- Neue Eingabe in die Tabelle Instrumente
PRINT 'before INSERT'
---------------------------------------------
INSERT INTO [dbo].[tb_Instrumente]
       ( 
	   Bezeichnung,
	   Gewicht,
	   HerstellerID,
	   EK,
	   VK, 
	   InstrumentenArtID, 
	   ZustandID, 
	   LagerstatusID)
-- Eingabe der neuen Werte
     VALUES
           (
           'Hammer Klavier',
           '250',
		   '2',
           '3200',
		   '4000',
		   '5',
		   '3',
		   '1');

PRINT 'nach INSERT'

SELECT *
FROM [dbo].[PreisInstrumenteLog]