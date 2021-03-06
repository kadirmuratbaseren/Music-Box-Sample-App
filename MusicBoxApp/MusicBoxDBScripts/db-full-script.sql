USE [Master]
GO

CREATE DATABASE [MusicBoxDB]
GO

USE [MusicBoxDB]
GO
/****** Object:  StoredProcedure [dbo].[DeleteAlbum]    Script Date: 5.8.2016 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteAlbum]
	@Id int
AS
BEGIN
	DELETE FROM Albumler WHERE Id=@Id
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteSarki]    Script Date: 5.8.2016 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteSarki]
	@Id int
AS
BEGIN
	DELETE FROM Sarkilar WHERE Id=@Id
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteSarkici]    Script Date: 5.8.2016 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteSarkici]
	@Id int
AS
BEGIN
	DELETE FROM Sarkicilar WHERE Id=@Id
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteTur]    Script Date: 5.8.2016 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[DeleteTur]
	@Id int
AS
BEGIN
	-- Turler tablosundan kayıt siler.
	DELETE FROM Turler WHERE Id = @Id
END

GO
/****** Object:  StoredProcedure [dbo].[InsertAlbum]    Script Date: 5.8.2016 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertAlbum]
	@Adi nvarchar(50),
	@Fiyat decimal(5,2),
	@SarkiciId int
AS
BEGIN
	INSERT INTO Albumler(Adi, Fiyat,SarkiciId)
	VALUES(@Adi, @Fiyat, @SarkiciId)
END

GO
/****** Object:  StoredProcedure [dbo].[InsertSarki]    Script Date: 5.8.2016 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertSarki]
	@Adi nvarchar(50),
	@SozYazari nvarchar(50),
	@Besteleyici nvarchar(50),
	@AlbumId int
AS
BEGIN
	INSERT INTO Sarkilar(Adi, SozYazari, Besteleyici, AlbumId)
	VALUES(@Adi, @SozYazari, @Besteleyici, @AlbumId)
END

GO
/****** Object:  StoredProcedure [dbo].[InsertSarkici]    Script Date: 5.8.2016 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertSarkici]
	@Adi nvarchar(50),
	@Soyadi nvarchar(50),
	@TurId int
AS
BEGIN
	INSERT INTO Sarkicilar(Adi,Soyadi,TurId)
	VALUES(@Adi, @Soyadi, @TurId)
END

GO
/****** Object:  StoredProcedure [dbo].[InsertTur]    Script Date: 5.8.2016 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertTur]	--procedure adı
	-- procedure parametreleri
	@Adi nvarchar(50)
AS
BEGIN
	INSERT INTO Turler(Adi) VALUES (@Adi)
END

GO
/****** Object:  StoredProcedure [dbo].[SelectAllRowsTurler]    Script Date: 5.8.2016 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectAllRowsTurler]
AS
BEGIN
SELECT * FROM Turler
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateAlbum]    Script Date: 5.8.2016 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateAlbum]
	@Adi nvarchar(50),
	@Fiyat decimal(5,2),
	@SarkiciId int,
	@Id int
AS
BEGIN
	UPDATE Albumler SET Adi=@Adi, Fiyat=@Fiyat, SarkiciId=@SarkiciId
	WHERE Id=@Id
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateSarki]    Script Date: 5.8.2016 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateSarki]
	@Adi nvarchar(50),
	@SozYazari nvarchar(50),
	@Besteleyici nvarchar(50),
	@AlbumId int,
	@Id int
AS
BEGIN
	UPDATE Sarkilar SET Adi=@Adi, SozYazari=@SozYazari, 
		Besteleyici=@Besteleyici, AlbumId=@AlbumId 
	WHERE Id=@Id
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateSarkici]    Script Date: 5.8.2016 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateSarkici]
	@Adi nvarchar(50),
	@Soyadi nvarchar(50),
	@TurId int,
	@Id int
AS
BEGIN
	UPDATE Sarkicilar SET Adi=@Adi, Soyadi=@Soyadi, 
	TurId=@TurId WHERE Id=@Id
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateTur]    Script Date: 5.8.2016 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[UpdateTur]
	@Adi nvarchar(50),
	@Id int
AS
BEGIN
	-- Turler tablosunda kayıt günceller..
	UPDATE Turler SET Adi = @Adi WHERE Id = @Id
END

GO
/****** Object:  Table [dbo].[Albumler]    Script Date: 5.8.2016 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Albumler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NOT NULL,
	[Fiyat] [decimal](5, 2) NULL,
	[SarkiciId] [int] NOT NULL,
 CONSTRAINT [PK_Albumler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sarkicilar]    Script Date: 5.8.2016 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sarkicilar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NOT NULL,
	[Soyadi] [nvarchar](50) NOT NULL,
	[TurId] [int] NOT NULL,
 CONSTRAINT [PK_Sarkicilar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sarkilar]    Script Date: 5.8.2016 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sarkilar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NOT NULL,
	[SozYazari] [nvarchar](50) NULL,
	[Besteleyici] [nvarchar](50) NULL,
	[AlbumId] [int] NOT NULL,
 CONSTRAINT [PK_Sarkilar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Turler]    Script Date: 5.8.2016 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Turler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[SelectAllAlbumler]    Script Date: 5.8.2016 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[SelectAllAlbumler]
AS
	SELECT * FROM Albumler

GO
/****** Object:  View [dbo].[SelectAllSarkicilar]    Script Date: 5.8.2016 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[SelectAllSarkicilar]
AS
	SELECT * FROM Sarkicilar

GO
/****** Object:  View [dbo].[SelectAllSarkilar]    Script Date: 5.8.2016 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[SelectAllSarkilar]
AS
	SELECT * FROM Sarkilar

GO
/****** Object:  View [dbo].[SelectAllTurler]    Script Date: 5.8.2016 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[SelectAllTurler]
AS
	SELECT Id,Adi FROM Turler

GO
ALTER TABLE [dbo].[Albumler]  WITH CHECK ADD  CONSTRAINT [FK_Albumler_Sarkicilar] FOREIGN KEY([SarkiciId])
REFERENCES [dbo].[Sarkicilar] ([Id])
GO
ALTER TABLE [dbo].[Albumler] CHECK CONSTRAINT [FK_Albumler_Sarkicilar]
GO
ALTER TABLE [dbo].[Sarkicilar]  WITH CHECK ADD  CONSTRAINT [FK_Sarkicilar_Turler] FOREIGN KEY([TurId])
REFERENCES [dbo].[Turler] ([Id])
GO
ALTER TABLE [dbo].[Sarkicilar] CHECK CONSTRAINT [FK_Sarkicilar_Turler]
GO
ALTER TABLE [dbo].[Sarkilar]  WITH CHECK ADD  CONSTRAINT [FK_Sarkilar_Albumler] FOREIGN KEY([AlbumId])
REFERENCES [dbo].[Albumler] ([Id])
GO
ALTER TABLE [dbo].[Sarkilar] CHECK CONSTRAINT [FK_Sarkilar_Albumler]
GO
