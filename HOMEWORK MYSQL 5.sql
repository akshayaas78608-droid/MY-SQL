CREATE DATABASE sales_reporting;
SHOW DATABASES;
USE sales_reporting;
CREATE TABLE sales_data (
    order_id INT,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    product VARCHAR(50),
    amount DECIMAL(10,2)
);
DESCRIBE sales_data;
INSERT INTO sales_data
(order_id, customer_name, city, product, amount)
VALUES
(101, 'Rahul', 'Nagpur', 'Laptop', 52000),
(102, 'Anita', 'Pune', 'Tablet', 28000),
(103, 'Karan', 'Mumbai', 'Mobile', 19000),
(104, 'Neha', 'Delhi', 'Laptop', 61000),
(105, 'Amit', 'Nagpur', 'Monitor', 15000),
(106, 'Pooja', 'Pune', 'Laptop', 55000),
(107, 'Ravi', 'Mumbai', 'Tablet', 32000),
(108, 'Sneha', 'Delhi', 'Mobile', 22000),
(109, 'Arjun', 'Nagpur', 'Laptop', 58000),
(110, 'Meena', 'Pune', 'Monitor', 17000),
(111, 'Sahil', 'Mumbai', 'Laptop', 60000),
(112, 'Divya', 'Delhi', 'Tablet', 30000);
SELECT * FROM sales_data;
-- Find sales between 20000 and 55000
SELECT *
FROM sales_data
WHERE amount BETWEEN 20000 AND 55000;
-- Find sales from selected cities
SELECT *
FROM sales_data
WHERE city IN ('Nagpur', 'Pune', 'Mumbai');
-- Find customer names containing 'an'
SELECT *
FROM sales_data
WHERE customer_name LIKE '%an%';
-- Display records that have an amount
SELECT *
FROM sales_data
WHERE amount IS NOT NULL;
-- Skip the first three records and display the next four
SELECT *
FROM sales_data
ORDER BY order_id
LIMIT 4 OFFSET 3;
USE sales_reporting;

-- 1. Display all sales records
SELECT *
FROM sales_data;

-- 2. Find sales between 20000 and 55000
SELECT *
FROM sales_data
WHERE amount BETWEEN 20000 AND 55000;

-- 3. Find sales from selected cities
SELECT *
FROM sales_data
WHERE city IN ('Nagpur', 'Pune', 'Mumbai');

-- 4. Find names containing 'an'
SELECT *
FROM sales_data
WHERE customer_name LIKE '%an%';

-- 5. Display records with a non-NULL amount
SELECT *
FROM sales_data
WHERE amount IS NOT NULL;

-- 6. Skip the first three rows and retrieve the next four
SELECT *
FROM sales_data
ORDER BY order_id
LIMIT 4 OFFSET 3;