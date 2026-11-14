CREATE DATABASE company_analysis;
USE company_analysis;

CREATE TABLE order_summary (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_amount DECIMAL(10,2)
);

DESCRIBE order_summary;

INSERT INTO order_summary
(order_id, customer_id, order_date, order_amount)
VALUES
(301, 501, '2024-01-05', 5000),
(302, 501, '2024-01-08', 7000),
(303, 502, '2024-01-10', 3000),
(304, 503, '2024-01-12', 9000),
(305, 502, '2024-01-15', 2000);

SELECT * FROM order_summary;

-- TASK 1: Importance of database backup
-- Backup prevents data loss and helps restore
-- original data after accidental deletion,
-- incorrect updates or database failure.


-- TASK 2: Database backup command
-- Execute this in Windows CMD or PowerShell:
-- mysqldump -u root -p company_analysis > company_backup.sql



SELECT
    customer_id,
    SUM(order_amount) AS total_sales
FROM order_summary
GROUP BY customer_id
ORDER BY customer_id;

-- TASK 4: Common SQL mistake
-- Using COUNT() instead of SUM() when calculating
-- total sales gives the number of orders, not revenue.

-- Incorrect query

SELECT
    customer_id,
    COUNT(order_amount) AS total_sales
FROM order_summary
GROUP BY customer_id;

-- Correct query

SELECT
    customer_id,
    SUM(order_amount) AS total_sales
FROM order_summary
GROUP BY customer_id;