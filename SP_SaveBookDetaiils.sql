USE [BookDB]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[SP_SaveBookDetaiils]
(
@Title AS NVARCHAR(100),
@AutherID AS INT,
@PublisherID AS INT,
@Price decimal,
@yearofPublication INT,
@Edition INT,
@MLACitiation NVARCHAR(200),
@PlaceofPublication NVARCHAR(50), 
@SiteURL NVARCHAR(300)
)
AS

BEGIN
BEGIN TRY
BEGIN TRANSACTION

INSERT INTO Book VALUES(@Title,@PublisherID,@AutherID,@Price,@yearofPublication,@Edition,@MLACitiation,@PlaceofPublication,@SiteURL)

COMMIT TRANSACTION
END TRY
BEGIN CATCH
ROLLBACK
END CATCH
END
GO


