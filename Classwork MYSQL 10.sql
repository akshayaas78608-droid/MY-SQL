CREATE DATABASE ecommerce_analytics;
SHOW DATABASES;
USE ecommerce_analytics;
CREATE TABLE orders (
    order_id INT,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    order_date DATE,
    order_amount DECIMAL(10,2)
);
DESCRIBE orders;
INSERT INTO orders
(order_id, customer_name, city, order_date, order_amount)
VALUES
(1, 'Rahul Kumar', 'delhi', '2024-01-15', 4500),
(2, 'Anita Sharma', 'Mumbai', '2024-01-20', 5200),
(3, 'neha singh', 'Delhi', '2024-02-05', 6100),
(4, 'AMIT Verma', 'mumbai', '2024-02-18', 4800),
(5, 'Pooja Mehta', 'Chennai', '2024-03-02', 7000),
(6, 'karan patel', 'chennai', '2024-03-25', 5300);
SELECT*FROM orders;
SELECT
    customer_name,
    TRIM(customer_name) AS cleaned_name
FROM orders;
SET SQL_SAFE_UPDATES = 0;
UPDATE orders
SET customer_name = TRIM(customer_name);
SELECT
    city,
    UPPER(city) AS uppercase_city
FROM orders;
UPDATE orders
SET city = UPPER(city);
SELECT
    customer_name,
    LENGTH(customer_name) AS name_length
FROM orders;
SELECT
    order_date,
    YEAR(order_date) AS order_year
FROM orders;
SELECT
	order_date,
    MONTH(order_date) AS order_month
FROM orders;    
SELECT
    order_date,
    DATE_FORMAT(order_date, '%d-%b-%Y') AS formatted_date
FROM orders;
SELECT
    order_id,
    TRIM(customer_name) AS cleaned_name,
    UPPER(city) AS uppercase_city,
    LENGTH(TRIM(customer_name)) AS name_length,
    order_date,
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    DATE_FORMAT(order_date, '%d-%b-%Y') AS formatted_date,
    order_amount
FROM orders;
