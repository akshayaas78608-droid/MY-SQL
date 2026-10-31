CREATE DATABASE retail_analytics;
show databases;
use retail_analytics;
CREATE TABLE sales_data (
    order_id INT,
    city VARCHAR(30),
    product VARCHAR(50),
    sales_amount DECIMAL(10,2)
);
DESCRIBE sales_data;
INSERT INTO sales_data
(order_id, city, product, sales_amount)
VALUES
(1, 'Kochi', 'Laptop', 60000.00),
(2, 'Trivandrum', 'Mobile', 25000.00),
(3, 'Kochi', 'Mobile', 30000.00),
(4, 'Calicut', 'Laptop', 55000.00),
(5, 'Trivandrum', 'Laptop', 65000.00),
(6, 'Kochi', 'Tablet', 15000.00),
(7, 'Calicut', 'Mobile', 20000.00),
(8, 'Kochi', 'Laptop', 70000.00),
(9, 'Trivandrum', 'Tablet', 18000.00),
(10, 'Calicut', 'Laptop', 45000.00),
(11, 'Kochi', 'Mobile', 35000.00),
(12, 'Trivandrum', 'Mobile', 28000.00),
(13, 'Calicut', 'Tablet', 22000.00),
(14, 'Kochi', 'Tablet', 12000.00),
(15, 'Trivandrum', 'Laptop', 50000.00);
select*from sales_data;
SELECT COUNT(*) AS total_records
FROM sales_data;
SELECT
    city,
    SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY city;
SELECT
    city,
    SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY city
HAVING SUM(sales_amount) > 50000;
SELECT
    product,
    SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY product
ORDER BY total_sales DESC
LIMIT 3;