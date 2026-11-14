CREATE DATABASE sales_analytics;
USE sales_analytics;
CREATE TABLE sales_data (
    order_id INT PRIMARY KEY,
    order_date DATE,
    region VARCHAR(30),
    sales_amount DECIMAL(10,2)
);
DESCRIBE sales_data;

INSERT INTO sales_data
(order_id, order_date, region, sales_amount)
VALUES
(401, '2024-02-01', 'North', 12000),
(402, '2024-02-03', 'South', 8000),
(403, '2024-02-05', 'North', 15000),
(404, '2024-02-08', 'East', 6000),
(405, '2024-02-10', 'South', 9000);

SELECT*FROM sales_data;

-- ============================================
-- TASK 1: BACKUP USING PHPMYADMIN
-- ============================================

-- 1. Open phpMyAdmin.
-- 2. Select sales_analytics database.
-- 3. Click Export.
-- 4. Select Quick export method.
-- 5. Select SQL format.
-- 6. Click Export to download the backup file.


-- ============================================
-- TASK 2: RESTORE DATABASE FROM BACKUP
-- ============================================

-- Run this in MySQL command-line client:
-- USE sales_analytics;
-- SOURCE C:/Users/YourUsername/Downloads/sales_analytics_backup.sql;

-- Alternatively, use phpMyAdmin:
-- Select database > Import > Choose SQL file > Go.


-- ============================================
-- TASK 3: TOTAL SALES PER REGION
-- ============================================

SELECT
    region,
    SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY region
ORDER BY total_sales DESC;


-- ============================================
-- TASK 4: AVOID INDEX MISUSE WHEN FILTERING 2024
-- ============================================

-- Create an index on order_date

CREATE INDEX idx_order_date
ON sales_data(order_date);

-- Use date range instead of YEAR() function

SELECT *
FROM sales_data
WHERE order_date >= '2024-01-01'
  AND order_date < '2025-01-01';


-- ============================================
-- TASK 5: TWO SQL BEST PRACTICES
-- ============================================

-- 1. Take regular database backups and test restoration
--    to prevent permanent data loss.

-- 2. Write optimized queries by avoiding unnecessary
--    functions on indexed columns and retrieving only
--    the required columns.