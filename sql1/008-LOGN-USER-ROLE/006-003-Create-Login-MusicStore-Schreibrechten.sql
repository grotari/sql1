-- Login fuer Anmeldename MusicStoreSchreibrechten und Passwort '123'

USE [master]
GO
CREATE LOGIN [MusicStoreSchreibrechten] WITH PASSWORD=N'123', 
DEFAULT_DATABASE=[MusicStore], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
