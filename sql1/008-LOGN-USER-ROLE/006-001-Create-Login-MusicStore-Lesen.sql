-- Login fuer Anmeldename MusicStoreLeserRechte und Passwort 123

USE [master]
GO
CREATE LOGIN [MusicStoreLeserRechte] WITH PASSWORD=N'123', 
DEFAULT_DATABASE=[MusicStore], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
