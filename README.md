# Executive-Sales-Analytics-Dashboard-SQL-Power-BI
Designed an end-to-end sales analytics dashboard in Power BI by integrating SQL data extraction, star schema modeling, and DAX measures to deliver interactive insights into sales performance, budget tracking, customer trends, and product performance.
## Dashboard Preview

![Executive Sales Dashboard](Executive_Sales_Dashboard.png)
## Technologies Used

- SQL Server
- Power BI
- DAX
- Microsoft Excel
- ## Features

- Executive Sales KPI Dashboard
- Sales vs Budget Analysis
- Monthly Sales Trend Analysis
- Top 5 Customers by Sales
- Top 5 Best Selling Products
- Product Category Analysis
- Global Customer Distribution
- Interactive Slicers and Filters
## Data Model

- Built using a Star Schema
- Fact Table:
    - Fact_Internet_Sales

- Dimension Tables:
    - Dim_Calendar
    - Dim_Customer
    - Dim_Product

- Budget Table:
    - Sales_Budget
├── Data
│   ├── Dim_Calendar.csv
│   ├── Dim_Customer.csv
│   ├── Dim_Product.csv
│   ├── Fact_Internet_Sales.csv
│   └── Sales_Budget.xlsx
│
├── SQL
│   ├── Dim_Calendar.sql
│   ├── Dim_Customer.sql
│   ├── Dim_Product.sql
│   └── Fact_Internet_Sales.sql
│
├── Executive_Sales_Dashboard.pbix
├── Executive_Sales_Dashboard.png
└── README.md
