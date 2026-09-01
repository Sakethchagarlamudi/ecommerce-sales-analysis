 ## E-Commerce Sales Analysis
  Project Overview:
This project analyzes e-commerce sales data to identify revenue trends, product performance, regional sales performance, payment preferences, and overall business performance.

The analysis was performed using 'Microsoft Excel and SQL'.

## Tools Used

- Microsoft Excel
  - Data Cleaning
  - PivotTables
  - PivotCharts
  - Slicers
  - Dashboard
- SQL
  - Aggregations
  - GROUP BY
  - ORDER BY
  - Filtering
  - Business analysis queries

##  Dataset

The dataset contains **5,000 e-commerce orders** with information including:

- Order ID
- Order Date
- Customer ID
- Product Category
- Region
- Quantity
- Unit Price
- Discount
- Payment Method
- Delivery Days
- Customer Rating
- Revenue

## Key Business Metrics

| KPI | Value |
|---|---:|
| Total Orders | 5,000 |
| Total Revenue | ₹5,109,775.74 |
| Average Order Value | ₹1,021.96 |
| Top Product Category | Electronics |

## Excel Dashboard

The Excel dashboard provides an interactive view of:

- Revenue by Product Category
- Revenue by Region
- Orders by Payment Method
- Yearly Revenue Trend

### Dashboard Filters

Users can filter the dashboard by:

- Product Category
- Region
- Payment Method
- Year

##  SQL Analysis

SQL was used to answer key business questions such as:

- What is the total revenue?
- How many orders were placed?
- What is the average order value?
- Which product category generates the highest revenue?
- Which region generates the highest revenue?
- Which payment method is most frequently used?
- What are the yearly revenue trends?
- Who are the top customers by revenue?
- How do discounts and customer ratings relate to sales performance?

## Key Insights

- **Electronics** generated the highest revenue among product categories.
- **West** was the highest-revenue region.
- **Card** was the most commonly used payment method.
- Revenue varied significantly across different years.
- The dashboard allows business performance to be explored interactively using slicers.

## Project Structure

```text
ecommerce-sales-analysis/
│
├── README.md
│
├── data/
│   └── ecommerce_sales_analytics_5000.csv
│
├── excel/
│   └── E-commerce_Sales_Dashboard.xlsx
│
├── sql/
│   └── ecommerce_sales_analysis.sql
│
└── images/
    └── ecommerce_dashboard.png
