
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[SP_Get_bookDdetailsOrderByAuther]
AS
BEGIN
BEGIn TRY
Select B.BookID,
B.Title AS Title,
A.FirstName AS AutherFirstName,
A.LastName AS AutherLastName, 
P.PublisherName AS Publisher, 
B.Amount AS Price,
B.yearofPublication,
B.Edition,
A.FirstName+' ('+ B.MLACitiation+')' AS MLACitiation,
B.PlaceofPublication,
B.SiteURL
from Book B 
JOIN Auther A ON B.AutherID = A.AutherID
JOIN Publisher P ON B.PublisherID = P.PublisherID 
Order By A.LastName,A.FirstName,B.Title
END TRY
BEGIN CATCH
DECLARE @ErrorMsg NVARCHAR(Max)
SELECT @ErrorMsg = ERROR_MESSAGE()
RETURN 1
END CATCH
END
GO


