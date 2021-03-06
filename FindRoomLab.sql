/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [BookingID]
      ,[StatusID]
      ,[RequesterID]
      ,[RequestDate]
      ,[RoomID]
      ,[ActivityID]
      ,[Remarks]
      ,[StartDate]
      ,[EndDate]
      ,[StartTime]
      ,[EndTime]
      ,[AdminID]
      ,[AdminApprovedDate]
      ,[OfficerID]
      ,[OfficerApprovedDate]
      ,[EngineerID]
      ,[EngineerApprovedDate]
      ,[BuildingOfficerID]
      ,[BuildingOfficerApprovedDate]
  FROM [ICTBooking].[dbo].[Booking] 
  where Cast(RequestDate as date) >= '2019-10-01' and Cast(RequestDate as date) <= GETDATE()
  and RoomID in (2,3,4,5,6,20,41,42,43,45,48,77,78,79,80,82,83,84,85,86,90,92,93,94,95,97,98,99,100,101,107,119)
  ;