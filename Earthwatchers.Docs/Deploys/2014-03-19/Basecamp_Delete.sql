USE [Earthwatchers]
GO
/****** Object:  StoredProcedure [dbo].[Basecamp_Delete]    Script Date: 03/17/2014 19:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Basecamp_Delete] 
@id INT
AS
BEGIN
delete from BasecampLandDistance where BasecampDetailId = @id
delete from BasecampDetails where id= @id
END
