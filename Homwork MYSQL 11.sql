DROP DATABASE retail_analytics;
CREATE DATABASE retail_analytics;
SHOW DATABASES;
USE retail_analytics;
CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    total_purchase INT,
    email VARCHAR(50)
);
Describe customers;
INSERT INTO customers
(customer_id, customer_name, city, total_purchase, email)
VALUES
(101, 'Rahul', 'delhi', 62000, 'rahul@mail.com'),
(102, 'Anita', 'Mumbai', 18000, 'anita@mail.com'),
(103, 'Karan', 'delhi', 32000, 'karan@mail.com'),
(104, 'Neha', 'Chennai', NULL, 'neha@mail.com'),
(105, 'Amit', 'mumbai', 54000, 'amit@mail.com'),
(106, 'Pooja', 'Delhi', 15000, 'pooja@mail.com');
SELECT * FROM customers;
SELECT
    customer_id,
    customer_name,
    total_purchase,
    CASE
        WHEN total_purchase > 50000 THEN 'Premium'
        WHEN total_purchase > 20000 THEN 'Standard'
        ELSE 'Basic'
    END AS customer_segment
FROM customers;
SELECT
    customer_id,
    customer_name,
    total_purchase,
    IFNULL(total_purchase, 0) AS updated_purchase
FROM customers;
SELECT
    customer_id,
    customer_name,
    city,
    UPPER(TRIM(city)) AS cleaned_city
FROM customers;
SELECT DISTINCT email
FROM customers;
SELECT *
FROM customers
WHERE total_purchase > 0;
SELECT DISTINCT
    customer_id,
    customer_name,

    UPPER(TRIM(city)) AS cleaned_city,

    IFNULL(total_purchase, 0) AS updated_purchase,

    email,

    CASE
        WHEN IFNULL(total_purchase, 0) > 50000
            THEN 'Premium'

        WHEN IFNULL(total_purchase, 0) > 20000
            THEN 'Standard'

        ELSE 'Basic'
    END AS customer_segment

FROM customers

WHERE total_purchase > 0;