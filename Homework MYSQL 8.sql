CREATE DATABASE sales_comparison;
SHOW DATABASES;
USE sales_comparison;
CREATE TABLE online_orders (
    order_id INT,
    customer_name VARCHAR(50),
    amount DECIMAL(10,2)
);
CREATE TABLE store_orders (
    order_id INT,
    customer_name VARCHAR(50),
    amount DECIMAL(10,2)
);
INSERT INTO online_orders
(order_id, customer_name, amount)
VALUES
(201, 'Rahul', 8000),
(202, 'Anita', 6500),
(203, 'Karan', 7200),
(204, 'Neha', 5400);
describe online_orders;
select*from online_orders;
describe store_orders;
INSERT INTO store_orders
(order_id, customer_name, amount)
VALUES
(301, 'Rahul', 4000),
(302, 'Amit', 6000),
(303, 'Karan', 5000),
(304, 'Pooja', 4500);
select*from store_orders;
-- Display unique customer names from both tables
SELECT customer_name
FROM online_orders

UNION

SELECT customer_name
FROM store_orders;
-- Display all customer names including duplicates
SELECT customer_name
FROM online_orders

UNION ALL

SELECT customer_name
FROM store_orders;
-- FULL OUTER JOIN workaround using LEFT JOIN, RIGHT JOIN and UNION

SELECT
    o.order_id AS online_order_id,
    o.customer_name,
    o.amount AS online_amount,
    s.order_id AS store_order_id,
    s.amount AS store_amount
FROM online_orders AS o
LEFT JOIN store_orders AS s
    ON o.customer_name = s.customer_name

UNION

SELECT
    o.order_id AS online_order_id,
    o.customer_name,
    o.amount AS online_amount,
    s.order_id AS store_order_id,
    s.amount AS store_amount
FROM online_orders AS o
RIGHT JOIN store_orders AS s
    ON o.customer_name = s.customer_name;
    USE sales_comparison;

-- 1. Display online orders
SELECT * FROM online_orders;

-- 2. Display store orders
SELECT * FROM store_orders;

-- 3. Display unique customer names
SELECT customer_name FROM online_orders
UNION
SELECT customer_name FROM store_orders;

-- 4. Display all customer names including duplicates
SELECT customer_name FROM online_orders
UNION ALL
SELECT customer_name FROM store_orders;

-- 5. FULL OUTER JOIN workaround
SELECT
    o.order_id AS online_order_id,
    o.customer_name,
    o.amount AS online_amount,
    s.order_id AS store_order_id,
    s.amount AS store_amount
FROM online_orders o
LEFT JOIN store_orders s
ON o.customer_name = s.customer_name

UNION

SELECT
    o.order_id,
    o.customer_name,
    o.amount,
    s.order_id,
    s.amount
FROM online_orders o
RIGHT JOIN store_orders s
ON o.customer_name = s.customer_name;