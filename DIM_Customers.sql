-- Cleaned DIM_Customers Table
SELECT
 c.CustomerKey AS CustomerKey,
--      ,[GeographyKey]
--      ,[CustomerAlternateKey]
--      ,[Title]
 c.FirstName AS [First Name],
--      ,[MiddleName]
 c.LastName AS [Last Name],
 c.FirstName + ' ' + c.LastName AS [Full Name],
--      ,[NameStyle]
--      ,[BirthDate]
--      ,[MaritalStatus]
--      ,[Suffix]
 CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' Then 'Female' END AS Gender,
--      ,[EmailAddress]
--      ,[YearlyIncome]
--      ,[TotalChildren]
--      ,[NumberChildrenAtHome]
--      ,[EnglishEducation]
--      ,[SpanishEducation]
--      ,[FrenchEducation]
--      ,[EnglishOccupation]
--      ,[SpanishOccupation]
--      ,[FrenchOccupation]
--      ,[HouseOwnerFlag]
--      ,[NumberCarsOwned]
--      ,[AddressLine1]
--      ,[AddressLine2]
--      ,[Phone]
 c.datefirstpurchase AS DateFirstPurchase,
--      ,[CommuteDistance]
 g.city AS [Customer City] --Joined in Customer City from Geography Table
FROM
 [AdventureWorksDW2022].dbo.DimCustomer AS c
 LEFT JOIN [AdventureWorksDW2022].dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey
ORDER BY
 CustomerKey ASC --Ordered list by CustomerKey
