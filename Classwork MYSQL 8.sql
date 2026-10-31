CREATE DATABASE customer_analytics;
SHOW DATABASES;
USE customer_analytics;
CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(50),
    city VARCHAR(30)
);
DESCRIBE customers;
INSERT INTO customers (customer_id, customer_name, city)
VALUES
(1, 'Rahul', 'Nagpur'),
(2, 'Anita', 'Pune'),
(3, 'Karan', 'Mumbai'),
(4, 'Neha', 'Delhi'),
(5, 'Amit', 'Chennai');
select*from customers;
CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_amount DECIMAL(10,2)
);
INSERT INTO orders (order_id, customer_id, order_amount)
VALUES
(101, 1, 5000),
(102, 2, 7000),
(103, 1, 3000),
(104, 3, 4500),
(105, 6, 6000);
select*from orders;
-- Display customers who have matching orders
SELECT
    customers.customer_id,
    customers.customer_name,
    customers.city,
    orders.order_id,
    orders.order_amount
FROM customers
INNER JOIN orders
    ON customers.customer_id = orders.customer_id;
    -- Display all customers and any matching orders
SELECT
    customers.customer_id,
    customers.customer_name,
    customers.city,
    orders.order_id,
    orders.order_amount
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id;
    
-- Display all orders and any matching customer details
SELECT
    customers.customer_id,
    customers.customer_name,
    customers.city,
    orders.order_id,
    orders.order_amount
FROM customers
RIGHT JOIN orders
    ON customers.customer_id = orders.customer_id;
 -- Display matching customers and orders using table aliases
SELECT
    c.customer_name,
    c.city,
    o.order_id,
    o.order_amount
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id;