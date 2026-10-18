-- Sales Performance & Customer Insights Analysis
-- Dataset: data/sales_data_1000_rows.csv
-- These examples use standard SQL concepts. Import the CSV into a table named sales_data first.

-- 1. Preview a sample of the data
SELECT *
FROM sales_data
LIMIT 10;

-- 2. Total orders, sales, and profit
SELECT
    COUNT(*) AS order_count,
    ROUND(SUM(SalesAmount_GHS), 2) AS total_sales_ghs,
    ROUND(SUM(Profit_GHS), 2) AS total_profit_ghs
FROM sales_data;

-- 3. Sales by product category
SELECT
    Category,
    ROUND(SUM(SalesAmount_GHS), 2) AS total_sales_ghs,
    ROUND(SUM(Profit_GHS), 2) AS total_profit_ghs
FROM sales_data
GROUP BY Category
ORDER BY total_sales_ghs DESC;

-- 4. Monthly sales trend
SELECT
    SUBSTR(OrderDate, 1, 7) AS order_month,
    ROUND(SUM(SalesAmount_GHS), 2) AS total_sales_ghs
FROM sales_data
GROUP BY SUBSTR(OrderDate, 1, 7)
ORDER BY order_month;
