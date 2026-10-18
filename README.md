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
- [ ] Validate and clean the data in Excel.
- [ ] Create summary tables and charts in Excel.
- [ ] Answer business questions with SQL.
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
