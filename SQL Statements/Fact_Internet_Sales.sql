SELECT 
[ProductKey],
CONVERT(CHAR(8),DATEADD(YEAR,12,CAST(CAST(OrderDateKey AS CHAR(8)) AS DATE)),112) AS [Order Date Key],
CONVERT(CHAR(8),DATEADD(YEAR,12,CAST(CAST(DueDateKey AS CHAR(8)) AS DATE)),112) AS [Due Date Key],
CONVERT(CHAR(8),DATEADD(YEAR,12,CAST(CAST(ShipDateKey AS CHAR(8)) AS DATE)),112) AS [Ship Date Key],
[CustomerKey],
--,[PromotionKey]
--,[CurrencyKey]
--,[SalesTerritoryKey]
[SalesOrderNumber],
--,[SalesOrderLineNumber]
--,[RevisionNumber]
--,[OrderQuantity]
--,[UnitPrice]
--,[ExtendedAmount]
--,[UnitPriceDiscountPct]
--,[DiscountAmount]
--,[ProductStandardCost]
--,[TotalProductCost]
[SalesAmount]
--,[TaxAmt]
--,[Freight]
--,[CarrierTrackingNumber]
--,[CustomerPONumber]
--,[OrderDate]
--,[DueDate]
--,[ShipDate]
FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]
WHERE CAST(LEFT(OrderDateKey, 4) AS INT) 
>= (SELECT MAX(CAST(LEFT(OrderDateKey, 4) AS INT)) - 2
FROM FactInternetSales)
ORDER BY OrderDateKey ASC