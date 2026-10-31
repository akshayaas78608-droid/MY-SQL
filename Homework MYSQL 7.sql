CREATE DATABASE sale_analytics;
SHOW DATABASES;
USE sale_analytics;
CREATE TABLE product_sales (
    product_id INT,
    product_name VARCHAR(50),
    price DECIMAL(10,2),
    quantity_sold INT,
    profit_loss DECIMAL(10,2)
);
DESCRIBE product_sales;
INSERT INTO product_sales
(product_id, product_name, price, quantity_sold, profit_loss)
VALUES
(1, 'Laptop', 52000.75, 5, 4500.00),
(2, 'Tablet', 28000.40, 8, -1200.00),
(3, 'Mobile', 19000.30, 10, 2300.00),
(4, 'Monitor', 15000.00, 6, -800.00),
(5, 'Keyboard', 1200.90, 15, 500.00),
(6, 'Mouse', 800.60, 20, -150.00),
(7, 'Printer', 18000.25, 4, 1200.00),
(8, 'Scanner', 22000.80, 3, -900.00),
(9, 'Webcam', 3500.50, 12, 700.00),
(10, 'Speaker', 4200.40, 7, 350.00),
(11, 'Router', 5600.30, 9, -400.00),
(12, 'Headset', 2500.20, 14, 600.00);
select * from product_sales;
SELECT
    MIN(price) AS minimum_price,
    MAX(price) AS maximum_price
FROM product_sales;
SELECT
    SUM(price * quantity_sold) AS total_revenue,
    AVG(price) AS average_price
FROM product_sales;
SELECT ROUND(AVG(price), 2) AS rounded_average_price
FROM product_sales;
SELECT
    SUM(price * quantity_sold) AS total_revenue,
    CEIL(SUM(price * quantity_sold)) AS ceiling_revenue,
    FLOOR(SUM(price * quantity_sold)) AS floor_revenue
FROM product_sales;
SELECT
    product_name,
    profit_loss,
    ABS(profit_loss) AS positive_value
FROM product_sales;
SELECT
    product_id,
    product_name,
    quantity_sold
FROM product_sales
WHERE MOD(quantity_sold, 2) = 0;
     
     
     
     
     