SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS [Product Item Code], 
  --p.[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  p.[EnglishProductName] AS [Product Name], 
  --,[SpanishProductName]
  --,[FrenchProductName]
  --[StandardCost]
  --,[FinishedGoodsFlag]
  p.[Color] AS [Product Color], 
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  p.[Size] AS [Product Size], 
  --,[SizeRange]
  p.[Weight] AS [Product Weight], 
  --,[DaysToManufacture]
  p.[ProductLine] AS [Product Line], 
  --,[DealerPrice]
  --,[Class]
  --,[Style]
  p.[ModelName] AS [Product Model Name], 
  --,[LargePhoto]
  --,[EnglishDescription]
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
  ps.[EnglishProductSubcategoryName] AS [Product Sub-Category], 
  pc.[EnglishProductCategoryName] AS [Product Category], 
  ISNULL (status, 'Outdated') AS [Product Status] 
FROM [AdventureWorksDW2022].[dbo].[DimProduct] AS P 
LEFT JOIN [dbo].[DimProductSubcategory] AS PS ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey 
LEFT JOIN [dbo].[DimProductCategory] AS PC ON ps.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY p.ProductKey ASC
