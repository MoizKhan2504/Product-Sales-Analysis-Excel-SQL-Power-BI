SELECT 
p.[ProductKey],
p.[ProductAlternateKey] as ProductItemCode,
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
p.[EnglishProductName] as ProductName,
ps.EnglishProductSubcategoryName as [Sub Category], -- joined it from Sub Category table
pc.EnglishProductCategoryName as [Product Category], -- joined it from Category table
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
p.[Color] as [Product Color],
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
p.[Size] as [Product Size],
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
p.[ProductLine] as [Product Line],
      --,[DealerPrice]
      --,[Class]
      --,[Style]
p.[ModelName] as [Product Model Name],
      --,[LargePhoto]
p.[EnglishDescription] as [Product Description],
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
ISNULL (p.Status, 'Outdated') as [Product Status] -- replace NULL value with Outdated
FROM 
    [AdventureWorksDW2022].[dbo].[DimProduct] as p
LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProductSubcategory] as ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProductCategory] as pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
Order by
p.ProductKey asc