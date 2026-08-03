SELECT 
  c.[CustomerKey] AS CustomerKey,
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title], 
  c.[FirstName] AS [First Name] , 
  --,[MiddleName], 
  c.[LastName] AS [Last Name],
  c.FirstName + ' ' + c.LastName AS [Full Name],
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix], 
  CASE Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone],  
  --,[CommuteDistance]
  FORMAT(DATEADD(YEAR, 12, c.DateFirstPurchase), 'dd-MM-yyyy') AS [Date First Purchase],
  g.City AS [Customer City]
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] AS C
  LEFT JOIN [dbo].[DimGeography] AS G ON g.GeographyKey = c.GeographyKey
  ORDER BY c.CustomerKey ASC
