SELECT 
  c.customerkey AS CustomerKey, 
  --[CustomerKey] --,[GeographyKey] --,[CustomerAlternateKey] --,[Title]
  c.firstname AS [First Name], 
  --,[MiddleName]
  c.lastname AS [Last Name], 
  c.firstname + ' ' + lastname AS [Full_Name], 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.gender when 'M' then 'Male' when 'F' then 'Female' END AS Gender, 
  --,[EmailAddress] --,[YearlyIncome] --,[TotalChildren] --,[NumberChildrenAtHome] --,[EnglishEducation]
  --,[SpanishEducation] --,[FrenchEducation] --,[EnglishOccupation] --,[SpanishOccupation]
  --,[FrenchOccupation] --,[HouseOwnerFlag] --,[NumberCarsOwned] --,[AddressLine1] --,[AddressLine2] --,[Phone]
  c.datefirstpurchase AS DateFirstPurchase, 
  --,[CommuteDistance]
  g.city AS [Customer City] --join in customer city from gergraphy table
FROM 
  [AdventureWorksDW2022].[dbo].[dimcustomer] as c 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[dimgeography] AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC
  --ordered list by customer key