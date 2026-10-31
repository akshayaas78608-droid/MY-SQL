DROP DATABASE IF EXISTS retail_analytics;
CREATE DATABASE retail_analytics;
SHOW DATABASES;
USE retail_analytics;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(50),
    gender ENUM('M', 'F'),
    city VARCHAR(30),
    is_active BOOLEAN
);
SHOW Tables;
Describe Customers;
INSERT INTO customers
(customer_id, full_name, gender, city, is_active)
VALUES
(1, 'Anu Raj', 'F', 'Trivandrum', 1),
(2, 'Rahul Kumar', 'M', 'Kochi', 1),
(3, 'Meera S', 'F', 'Kollam', 1),
(4, 'Arun Das', 'M', 'Vithura', 0),
(5, 'Diya Mohan', 'F', 'Thrissur', 1);
SELECT * FROM customers;
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    manufacture_year YEAR
);
Describe Products;
Show Tables;
INSERT INTO products
(product_id, product_name, category, price, manufacture_year)
VALUES
(101, 'Laptop', 'Electronics', 55000.00, 2024),
(102, 'Mobile Phone', 'Electronics', 25000.00, 2025),
(103, 'Office Chair', 'Furniture', 4500.00, 2023),
(104, 'Study Table', 'Furniture', 6500.00, 2024),
(105, 'Headphones', 'Electronics', 1500.00, 2025);
Select*from Products;
ALTER TABLE products
ADD COLUMN stock_count INT;
DESCRIBE products;
UPDATE products
SET stock_count = CASE product_id
    WHEN 101 THEN 20
    WHEN 102 THEN 35
    WHEN 103 THEN 15
    WHEN 104 THEN 10
    WHEN 105 THEN 50
END
WHERE product_id IN (101, 102, 103, 104, 105);
select*from Products;
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2)
);
Describe Orders;
INSERT INTO orders
(order_id, customer_id, order_date, total_amount)
VALUES
(1001, 1, '2026-10-20', 12500.00),
(1002, 2, '2026-10-21', 25000.00),
(1003, 3, '2026-10-22', 4500.00),
(1004, 1, '2026-10-23', 3200.00),
(1005, 5, '2026-10-24', 6500.00);
Select*from orders;
USE retail_analytics;

ALTER TABLE orders
ADD CONSTRAINT fk_orders_customers
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);
SHOW CREATE TABLE orders;
DESCRIBE retail_analytics.customers;
DESCRIBE retail_analytics.orders;
ALTER TABLE retail_analytics.orders
ADD FOREIGN KEY (customer_id)
REFERENCES retail_analytics.customers(customer_id);
SHOW CREATE TABLE retail_analytics.orders;


