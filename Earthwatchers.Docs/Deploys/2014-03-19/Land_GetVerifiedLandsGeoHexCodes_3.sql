USE [Earthwatchers]
GO
/****** Object:  StoredProcedure [dbo].[Land_GetVerifiedLandsGeoHexCodes_3]    Script Date: 03/19/2014 15:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Land_GetVerifiedLandsGeoHexCodes_3] 

AS
BEGIN
Select GeohexKey From (Select TOP 30 GeohexKey From Land l Inner Join Verifications v on l.Id = v.Land and v.IsDeleted = 0 Where l.Confirmed = 1 And l.LandStatus = 4
                            Group By GeohexKey Order By COUNT(GeohexKey) DESC) data1 UNION 
                            Select GeohexKey From (Select TOP 30 GeohexKey From Land l Inner Join Verifications v on l.Id = v.Land and v.IsDeleted = 0 Where l.Confirmed = 1 And l.LandStatus = 3
                            Group By GeohexKey Order By COUNT(GeohexKey) DESC) data2
END
