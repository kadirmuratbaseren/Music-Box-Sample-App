CREATE PROCEDURE InsertTur	--procedure ad�
	-- procedure parametreleri
	@Adi nvarchar(50)
AS
BEGIN
	INSERT INTO Turler(Adi) VALUES (@Adi)
END
GO



CREATE PROCEDURE UpdateTur
	@Adi nvarchar(50),
	@Id int
AS
BEGIN
	-- Turler tablosunda kay�t g�nceller..
	UPDATE Turler SET Adi = @Adi WHERE Id = @Id
END
GO


CREATE PROCEDURE DeleteTur
	@Id int
AS
BEGIN
	-- Turler tablosundan kay�t siler.
	DELETE FROM Turler WHERE Id = @Id
END
GO


CREATE VIEW SelectAllTurler
AS
	SELECT Id,Adi FROM Turler
GO