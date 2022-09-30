-- Uebersicht welche Hersteller welche Instrumente herstellen, inkl. Ansprechpartner

SELECT dbo.tb_Instrumentenart.InstrBezeichnung AS InstrGruppe, dbo.tb_Instrumente.Bezeichnung AS Intrument, dbo.tb_Instrumente.Gewicht, dbo.tb_Instrumente.VK, dbo.tb_Lagerstatus.Status, dbo.tb_Zustand.Zustand, 
			dbo.tb_Hersteller.Ansprechpartner, dbo.tb_Hersteller.Ort, dbo.tb_Hersteller.PLZ, dbo.tb_Hersteller.Strasse, dbo.tb_Hersteller.Hausnr, dbo.tb_Hersteller.Tel, dbo.tb_Hersteller.Mobil, dbo.tb_Hersteller.Mail
FROM   dbo.tb_Instrumente INNER JOIN
            dbo.tb_Instrumentenart ON dbo.tb_Instrumente.InstrumentenartID = dbo.tb_Instrumentenart.InstrumentenartID INNER JOIN
            dbo.tb_Lagerstatus ON dbo.tb_Instrumente.LagerstatusID = dbo.tb_Lagerstatus.LagerstatusID INNER JOIN
            dbo.tb_Zustand ON dbo.tb_Instrumente.ZustandID = dbo.tb_Zustand.ZustandID INNER JOIN
            dbo.tb_Hersteller ON dbo.tb_Instrumente.HerstellerID = dbo.tb_Hersteller.HerstellerID