
-- ==========================================
-- SALES PERFORMANCE & CUSTOMER INSIGHTS
-- SQL DATA ANALYSIS PROJECT
-- Database: SQLite
-- Dataset: 1,000 Sales Records
-- ==========================================

-- SECTION 1: SALES PERFORMANCE KPIs

-- 1. Total Number of Orders
SELECT COUNT(*) AS Total_Orders
FROM sales;

-- 2. Total Sales Revenue
SELECT
    ROUND(SUM(CAST(SalesAmount_GHS AS REAL)), 2)
    AS Total_Sales_Revenue
FROM sales;

-- 3. Total Profit
SELECT
    ROUND(
        SUM(CAST(SalesAmount_GHS AS REAL))
        - SUM(CAST(TotalCost_GHS AS REAL)),
        2
    ) AS Total_Profit
FROM sales;

-- 4. Profit Margin Percentage
SELECT
    ROUND(
        (
            SUM(CAST(SalesAmount_GHS AS REAL))
            - SUM(CAST(TotalCost_GHS AS REAL))
        ) * 100.0
        / NULLIF(SUM(CAST(SalesAmount_GHS AS REAL)), 0),
        2
    ) AS Profit_Margin_Percentage
FROM sales;

-- 5. Average Order Value
SELECT
    ROUND(AVG(CAST(SalesAmount_GHS AS REAL)), 2)
    AS Average_Order_Value
FROM sales;



-- ==========================================
-- SECTION 2: PRODUCT & CUSTOMER ANALYSIS
-- ==========================================

-- 6. Top 5 Products by Revenue
SELECT
    Product,
    ROUND(SUM(CAST(SalesAmount_GHS AS REAL)), 2)
        AS Total_Revenue
FROM sales
GROUP BY Product
ORDER BY Total_Revenue DESC
LIMIT 5;

-- 7. Top 5 Customers by Revenue
SELECT
    CustomerID,
    ROUND(SUM(CAST(SalesAmount_GHS AS REAL)), 2)
        AS Total_Revenue
FROM sales
GROUP BY CustomerID
ORDER BY Total_Revenue DESC
LIMIT 5;

-- 8. Revenue and Profit by Product Category
SELECT
    Category,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(CAST(SalesAmount_GHS AS REAL)), 2)
        AS Total_Revenue,
    ROUND(SUM(CAST(Profit_GHS AS REAL)), 2)
        AS Total_Profit
FROM sales
GROUP BY Category
ORDER BY Total_Revenue DESC;

-- ==========================================
-- SECTION 3: MONTHLY & REGIONAL ANALYSIS
-- ==========================================

-- 9. Monthly Sales Revenue
WITH FormattedDates AS (
    SELECT
        substr(OrderDate, 1, instr(OrderDate, '/') - 1)
            AS SalesMonth,
        substr(OrderDate, -4) AS SalesYear,
        CAST(SalesAmount_GHS AS REAL) AS Revenue
    FROM sales
)
SELECT
    SalesYear,
    SalesMonth,
    ROUND(SUM(Revenue), 2) AS Monthly_Revenue
FROM FormattedDates
GROUP BY SalesYear, SalesMonth
ORDER BY
    CAST(SalesYear AS INTEGER),
    CAST(SalesMonth AS INTEGER);

-- 10. Sales Revenue by Region
SELECT
    Region,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(CAST(SalesAmount_GHS AS REAL)), 2)
        AS Total_Revenue
FROM sales
GROUP BY Region
ORDER BY Total_Revenue DESC;

-- 11. Sales Revenue by Sales Channel
SELECT
    SalesChannel,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(CAST(SalesAmount_GHS AS REAL)), 2)
        AS Total_Revenue
FROM sales
GROUP BY SalesChannel
ORDER BY Total_Revenue DESC;

-- ==========================================
-- SECTION 4: PAYMENT & ORDER STATUS
-- ==========================================

-- 12. Sales by Payment Method
SELECT
    PaymentMethod,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(CAST(SalesAmount_GHS AS REAL)), 2)
        AS Total_Revenue
FROM sales
GROUP BY PaymentMethod
ORDER BY Total_Orders DESC;

-- 13. Order Status Distribution
SELECT
    OrderStatus,
    COUNT(*) AS Total_Orders,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM sales),
        2
    ) AS Percentage
FROM sales
GROUP BY OrderStatus
ORDER BY Total_Orders DESC;

-- ==========================================
-- SECTION 5: RETURNS ANALYSIS
-- ==========================================

-- 14. Returned Orders by Region
SELECT
    Region,
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN OrderStatus = 'Returned'
        THEN 1 ELSE 0 END) AS Returned_Orders,
    ROUND(
        SUM(CASE WHEN OrderStatus = 'Returned'
            THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Return_Rate_Percentage
FROM sales
GROUP BY Region
ORDER BY Return_Rate_Percentage DESC;

-- 15. Product Return Rates
SELECT
    Product,
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN OrderStatus = 'Returned'
        THEN 1 ELSE 0 END) AS Returned_Orders,
    ROUND(
        SUM(CASE WHEN OrderStatus = 'Returned'
            THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Return_Rate_Percentage
FROM sales
GROUP BY Product
ORDER BY Return_Rate_Percentage DESC;

-- 16. Revenue and Profit by Order Status
SELECT
    OrderStatus,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(CAST(SalesAmount_GHS AS REAL)), 2)
        AS Total_Revenue,
    ROUND(SUM(CAST(Profit_GHS AS REAL)), 2)
        AS Total_Profit
FROM sales
GROUP BY OrderStatus
ORDER BY Total_Revenue DESC;
