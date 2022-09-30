-- Abfrage welche Instrumente auf Lager sind (Lagerstatus 4)

SELECT        TOP (100) PERCENT dbo.tb_Instrumente.Bezeichnung, dbo.tb_Lagerstatus.Status, dbo.tb_Zustand.Zustand
FROM            dbo.tb_Instrumente INNER JOIN
                         dbo.tb_Lagerstatus ON dbo.tb_Instrumente.LagerstatusID = dbo.tb_Lagerstatus.LagerstatusID INNER JOIN
                         dbo.tb_Zustand ON dbo.tb_Instrumente.ZustandID = dbo.tb_Zustand.ZustandID
WHERE        (dbo.tb_Instrumente.LagerstatusID = 4)
ORDER BY dbo.tb_Instrumente.Bezeichnung;