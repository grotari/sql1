USE [MusicStore]
GO

INSERT INTO [dbo].[tb_Kunden](
    [Nachname],
	[Vorname], 
	[Ort] ,
	[PLZ],
	[Strasse], 
	[HausNr], 
	[Tel],
	[Mobil], 
	[Mail],
	[GebDat],
	[KundenstatusID])
	--[Kommentar])
       
     VALUES

	 ('Weber', 'Bernd', 'Duisburg', '45479', 'Rosenweg', '4', '12346789', '98654321', 'wb80@gmail.com', '31.07.1980', 1),
	 ('Mustermann', 'Max', 'Berlin', '10115', 'Sachsenstrasse', '5', '', '015655544466', 'mm@gmail.com', '05.07.1978', 3),
	 ('Scarlet', 'Richard', 'Stuttgart', '70174', 'Nullastrasse', '2', '', '0132848879', '', '01.01.1991', 2),
	 ('Hopper', 'Alice', 'Finmark', '75581', 'Augustus Str.', '45', '023588554', '06241145887', 'alice@hoppers.com', '05.04.1967', 2),
	 ( 'Carpenter', 'Amber', 'Dresden', '01067', 'Traubenstr.', '56', '', '0587466885', '', '09.09.1999', 1),
	 ('Lena', 'Friedrich', 'München', '80331', 'Bier Allee', '25', '', '', '', '18.07.1998', 2);
        


