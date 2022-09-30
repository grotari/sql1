USE MusicStore
GO

SELECT *
FROM [dbo].[tf_BestellungenKundeZeitraum]('01.01.2021', '31.12.2021', 1, 1)
ORDER BY BestellDatum DESC; -- Weber Bernd, 2x 2 Produkte bestellt vom Hersteller Blender Guitars GmbH


