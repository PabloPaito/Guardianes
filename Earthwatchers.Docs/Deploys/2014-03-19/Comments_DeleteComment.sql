USE [Earthwatchers]
GO
/****** Object:  StoredProcedure [dbo].[Comments_DeleteComment]    Script Date: 03/19/2014 15:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Comments_DeleteComment] 
@commentId INT
AS
BEGIN
Update Comments Set IsDeleted = 1 where Id=@commentId
END
