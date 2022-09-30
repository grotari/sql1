-- Bestimmung der (Lese)Rechte fuer den Benutzer Leser

USE [MusicStore]
GO
CREATE USER [Leser] FOR LOGIN [MusicStoreLeserRechte]
GO
use [MusicStore]
GO
GRANT SELECT ON [dbo].[tb_Hersteller] ([HerstellerID]) TO [Leser]
GO
use [MusicStore]
GO
GRANT SELECT ON [dbo].[tb_Kunden] ([KundenID]) TO [Leser]
GO
use [MusicStore]
GO
GRANT SELECT ON [dbo].[tb_Lagerstatus] TO [Leser]
GO
use [MusicStore]
GO
GRANT SELECT ON [dbo].[tb_Kunden] ([KundenstatusID]) TO [Leser]
GO
use [MusicStore]
GO
GRANT SELECT ON [dbo].[tb_Kunden] ([Ort]) TO [Leser]
GO
use [MusicStore]
GO
GRANT SELECT ON [dbo].[tb_Instrumente] TO [Leser]
GO
use [MusicStore]
GO
GRANT SELECT ON [dbo].[tb_Kunden] ([Kommentar]) TO [Leser]
GO
use [MusicStore]
GO
GRANT SELECT ON [dbo].[tb_Hersteller] ([Ort]) TO [Leser]
GO
use [MusicStore]
GO
GRANT SELECT ON [dbo].[tb_InstrumentenVerkauf] TO [Leser]
GO
