SELECT 
  CONVERT(CHAR(8),DATEADD(YEAR,12,CAST(CAST(Datekey AS CHAR(8)) AS DATE)),112) AS [Date Key], 
  FORMAT(DATEADD(YEAR,12,FullDateAlternateKey),'dd-MM-yyyy') AS Date, 
  --,[DayNumberOfWeek], 
  [EnglishDayNameOfWeek] AS Day, 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear], 
  [WeekNumberOfYear] AS WeekNo, 
  [EnglishMonthName] AS Month,
  LEFT ([EnglishMonthName],3) AS MonthShort,
  --,[SpanishMonthName]
  --,[FrenchMonthName], 
  [MonthNumberOfYear] AS MonthNo, 
  [CalendarQuarter] AS Quater, 
  CalendarYear + 12 AS Year
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  WHERE CalendarYear >= 
  (SELECT MAX(CalendarYear) - 2
  FROM [AdventureWorksDW2022].[dbo].[DimDate])
 