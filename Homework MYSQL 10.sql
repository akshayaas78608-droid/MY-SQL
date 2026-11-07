DROP DATABASE sales_reporting;
CREATE DATABASE sales_reporting;
SHOW DATABASES;
USE sales_reporting;
CREATE TABLE sales_orders (
    order_id INT,
    customer_name VARCHAR(50),
    email VARCHAR(50),
    order_date DATE,
    delivery_date DATE,
    sales_amount DECIMAL(10,2)
);
DESCRIBE sales_orders;
INSERT INTO sales_orders
(order_id, customer_name, email, order_date, delivery_date, sales_amount)
VALUES
(101, 'RAVI kumar', 'RAVI@MAIL.COM', '2024-01-10', '2024-01-15', 8500),
(102, 'Sneha Rao', 'sneha@mail.com', '2024-01-22', '2024-01-28', 9200),
(103, 'Amit Shah', 'AMIT@mail.com', '2024-02-05', '2024-02-12', 7800),
(104, 'pooja mehta', 'pooja@mail.com', '2024-02-18', '2024-02-25', 8600),
(105, 'Karan Patel', 'KARAN@mail.com', '2024-03-08', '2024-03-16', 9900),
(106, 'Neha Singh', 'neha@mail.com', '2024-03-20', '2024-03-29', 8700);
SELECT*FROM sales_orders;
SELECT
     customer_name,
     TRIM(customer_name) AS cleaned_name
FROM sales_orders;
SELECT 
	 email,
     LOWER(email) AS cleaned_email
FROM sales_orders;    
SELECT
    order_id,
    customer_name,
    order_date,
    delivery_date,
    DATEDIFF(delivery_date, order_date) AS delivery_days
FROM sales_orders; 
SELECT
     order_id,
     customer_name,
	 order_date,
	 DATE_ADD(order_date, INTERVAL 7 DAY) AS followup_date
FROM sales_orders;
SELECT
    YEAR(order_date) AS sales_year,
    MONTH(order_date) AS sales_month,
    SUM(sales_amount) AS total_sales
FROM sales_orders
GROUP BY
    YEAR(order_date),
    MONTH(order_date)
ORDER BY
    sales_year,
    sales_month;
    SELECT
    order_id,
    customer_name,
    DATE_FORMAT(order_date, '%d-%b-%Y') AS order_date,
    DATE_FORMAT(delivery_date, '%d-%b-%Y') AS delivery_date,
    sales_amount
FROM sales_orders;
SELECT
    order_id,
    TRIM(customer_name) AS customer_name,
    LOWER(email) AS cleaned_email,
    DATE_FORMAT(order_date, '%d-%b-%Y') AS order_date,
    DATE_FORMAT(delivery_date, '%d-%b-%Y') AS delivery_date,
    DATEDIFF(delivery_date, order_date) AS delivery_days,
    DATE_FORMAT(
        DATE_ADD(order_date, INTERVAL 7 DAY),
        '%d-%b-%Y'
    ) AS followup_date,
    sales_amount
FROM sales_orders;