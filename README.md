# Sales Performance & Customer Insights Analysis

## Project overview
This beginner-friendly data analytics portfolio project explores sales performance, customer activity, product categories, regional trends, discounts, and profitability using a synthetic dataset of 1,000 sales records.

**Tools:** Excel 2024, SQL, Power BI, GitHub  
**Data period:** 1 January 2025 – 31 December 2025  
**Currency:** Ghana cedi (GHS)  
**Data privacy:** The dataset is synthetic and contains no real customer names or contact details.

## Business questions
1. What are total sales and total profit?
2. Which products and categories generate the most sales and profit?
3. Which regions perform best?
4. How do sales change month by month?
5. Which sales channels and payment methods are most common?
6. How do discounts relate to sales and profit?
7. What share of orders are returned?

## Project workflow

- [x] Validate and clean the data in Excel.
- [x] Create summary tables and charts in Excel.
- [x] Answer business questions with SQL.
- [ ] Build an interactive Power BI dashboard.
- [ ] Document findings and practical recommendations.
- [ ] Add screenshots and final deliverables to this repository.

## Dataset dictionary
| Column | Description |
|---|---|
| OrderID | Unique order identifier |
| OrderDate | Order date in YYYY-MM-DD format |
| CustomerID | Synthetic customer identifier |
| Region | Sales region |
| SalesChannel | In-store, online, or phone |
| Product | Product name |
| Category | Product category |
| Quantity | Units in the order |
| UnitPrice_GHS | Unit selling price in GHS before discount |
| DiscountPct | Discount rate, from 0 to 0.20 |
| SalesAmount_GHS | Quantity × unit price after discount |
| UnitCost_GHS | Cost per unit in GHS |
| TotalCost_GHS | Quantity × unit cost |
| Profit_GHS | Sales amount minus total cost |
| PaymentMethod | Payment method used |
| OrderStatus | Completed or returned |

## Repository structure
- `data/` — source dataset
- `excel/` — Excel workbook and analysis
- `sql/` — SQL queries
- `power_bi/` — Power BI project and dashboard screenshots
- `insights/` — findings and recommendations

## Important note
This is a practice project using synthetic data. It is not affiliated with a real company. Before interpreting results, we will review data assumptions, including how returned orders should be treated in sales and profit calculations.



## SQL Analysis Results

The sales dataset contains 1,000 transactions from January to December 2025. SQL analysis was performed using SQLite in Visual Studio Code.

### Key Performance Indicators

| KPI | Result |
|---|---:|
| Total Orders | 1,000 |
| Total Sales Revenue | GH₵5,166,868.50 |
| Total Profit | GH₵1,488,349.50 |
| Profit Margin | 28.81% |
| Average Order Value | GH₵5,166.87 |
| Completed Orders | 925 |
| Returned Orders | 75 |
| Return Rate | 7.50% |

Note: Total sales revenue includes returned orders. Returned orders are analyzed separately.

### Top 5 Products by Revenue

| Product | Revenue (GH₵) |
|---|---:|
| Laptop | 1,694,700.00 |
| Smartphone | 1,624,000.00 |
| Monitor | 608,850.00 |
| Desk | 386,875.00 |
| Office Chair | 310,840.00 |

### Regional Sales Performance

Greater Accra generated the highest sales revenue at GH₵1,737,205.00, followed by Ashanti at GH₵1,126,576.50.

### Sales Channel Performance

- In-store: GH₵2,912,291.50
- Online: GH₵1,542,396.25
- Phone: GH₵712,180.75

In-store sales generated the highest revenue.

### Product Returns

- Overall return rate: 7.50%
- Eastern Region had the highest regional return rate at 9.35%.
- Backpacks had the highest product return rate at 10.00%.

### SQL Skills Demonstrated

- SELECT and WHERE
- GROUP BY and ORDER BY
- COUNT, SUM, and AVG
- ROUND and CAST
- CASE expressions
- Conditional aggregation
- Profit margin calculations
- Sales trend analysis
- Customer and product performance analysis

SQL queries are saved in the sql/sales_analysis.sql file.



## Business Insights and Recommendations

### 1. Sales Performance
Insight:
The business generated GH₵5,166,868.50 in total recorded revenue from 1,000 orders, with a profit margin of 28.81%.

Recommendation:
Monitor revenue, profit margins, and average order value monthly to identify performance changes and improve profitability.

### 2. Product Performance
Insight:
Laptops generated the highest revenue at GH₵1,694,700, followed by smartphones at GH₵1,624,000.

Recommendation:
Prioritize inventory planning for high-revenue products while reviewing their profitability and demand trends.

### 3. Regional Performance
Insight:
Greater Accra generated the highest revenue at GH₵1,737,205, followed by Ashanti at GH₵1,126,576.50.

Recommendation:
Investigate successful sales practices in Greater Accra and evaluate whether they can be applied in lower-performing regions.

### 4. Sales Channels
Insight:
In-store sales generated GH₵2,912,291.50, outperforming online and phone sales.

Recommendation:
Maintain strong in-store operations while investigating opportunities to improve online sales conversions.

### 5. Product Returns
Insight:
The overall return rate was 7.50%. Eastern Region recorded the highest regional return rate at 9.35%, while backpacks had the highest product return rate at 10.00%.

Recommendation:
Investigate the reasons for returns, particularly in Eastern Region and for backpacks. Review product quality, order accuracy, and customer feedback.

### 6. Customer Insights
Insight:
Customer CUST-1118 generated the highest recorded revenue at GH₵82,873.75.

Recommendation:
Explore customer retention strategies and identify purchasing patterns among high-value customers.

## Conclusion

This project demonstrates practical data analysis skills using Excel and SQL to clean data, calculate business KPIs, identify sales patterns, and develop data-driven recommendations.

The next phase is to create an interactive Power BI dashboard to visualize these findings and communicate them effectively.
