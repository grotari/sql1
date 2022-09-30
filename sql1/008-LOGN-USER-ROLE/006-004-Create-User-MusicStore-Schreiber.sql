-- Bestimmung der (Schreib)Rechte fuer den Benutzer Schreiber

USE [MusicStore]
GO
CREATE USER [Schreiber] FOR LOGIN [MusicStoreSchreibrechten]
GO
use [MusicStore]
GO
GRANT UPDATE ON [dbo].[tb_Rechnung] TO [Schreiber]
GO
use [MusicStore]
GO
GRANT SELECT ON [dbo].[tb_Rechnung] TO [Schreiber]
GO
use [MusicStore]
GO
GRANT INSERT ON [dbo].[tb_Rechnung] TO [Schreiber]
GO
use [MusicStore]
GO
GRANT SELECT ON [dbo].[tb_Position] TO [Schreiber]
GO
use [MusicStore]
GO
GRANT UPDATE ON [dbo].[tb_Bestellung] TO [Schreiber]
GO
use [MusicStore]
GO
GRANT SELECT ON [dbo].[tb_Bestellung] TO [Schreiber]
GO
use [MusicStore]
GO
GRANT INSERT ON [dbo].[tb_Bestellung] TO [Schreiber]
GO
use [MusicStore]
GO
GRANT SELECT ON [dbo].[tb_Personal] TO [Schreiber]
GO
