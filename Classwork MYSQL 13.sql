CREATE DATABASE startup_sales;

USE startup_sales;

CREATE TABLE sales_orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id VARCHAR(10),
    product_name VARCHAR(50),
    sales_amount DECIMAL(10,2)
);

DESCRIBE sales_orders;

INSERT INTO sales_orders VALUES
(501, '2024-01-05', 'C01', 'Laptop', 60000),
(502, '2024-01-06', 'C02', 'Mobile', 28000),
(503, '2024-01-06', 'C01', 'Laptop', 55000),
(504, '2024-01-10', 'C03', 'Headphones', 4000),
(505, '2024-01-12', 'C04', 'Mobile', 30000),
(506, '2024-01-15', 'C02', 'Laptop', 62000),
(507, '2024-01-18', 'C05', 'Tablet', 22000),
(508, '2024-01-20', 'C03', 'Mobile', 29000),
(509, '2024-01-22', 'C01', 'Tablet', 21000),
(510, '2024-01-25', 'C04', 'Laptop', 58000);

SELECT* FROM sales_orders;
SELECT SUM(sales_amount) AS total_revenue
FROM sales_orders;

SELECT
    product_name,
    SUM(sales_amount) AS total_sales
FROM sales_orders
GROUP BY product_name;
SELECT
    product_name,
    SUM(sales_amount) AS total_revenue
FROM sales_orders
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 1;
SELECT
    customer_id,
    COUNT(order_id) AS total_orders
FROM sales_orders
GROUP BY customer_id;
SELECT
    product_name,
    SUM(sales_amount) AS total_sales
FROM sales_orders
GROUP BY product_name
ORDER BY total_sales DESC;