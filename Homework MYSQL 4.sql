CREATE DATABASE sales_analytics;
SHOW DATABASES;
USE sales_analytics;
CREATE TABLE salespersons (
    sales_id INT AUTO_INCREMENT PRIMARY KEY,
    sales_name VARCHAR(50) NOT NULL,
    region VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE,
    joining_date DATE,
    status VARCHAR(20) DEFAULT 'active'
);
INSERT INTO salespersons
(sales_name, region, email, joining_date, status)
VALUES
('Arun', 'South', 'arun@company.com', '2023-01-15', 'active'),
('Meera', 'North', 'meera@company.com', '2022-06-10', 'active'),
('Rahul', 'East', 'rahul@company.com', '2024-03-20', 'active'),
('Anjali', 'West', 'anjali@company.com', '2023-09-05', 'active'),
('Vishnu', 'South', 'vishnu@company.com', '2021-11-12', 'inactive'),
('Sneha', 'North', 'sneha@company.com', '2024-01-08', 'active'),
('Akhil', 'East', 'akhil@company.com', '2022-08-18', 'active'),
('Diya', 'West', 'diya@company.com', '2023-05-25', 'active');
select* from salespersons;
CREATE TABLE sales_orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    sales_id INT,
    order_amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (sales_id) REFERENCES salespersons(sales_id)
);
INSERT INTO sales_orders
(sales_id, order_amount, order_date)
VALUES
(1, 15000.00, '2025-01-05'),
(2, 22000.00, '2025-01-08'),
(3, 18000.00, '2025-01-12'),
(1, 12000.00, '2025-02-02'),
(4, 30000.00, '2025-02-10'),
(5, 25000.00, '2025-02-15'),
(6, 17000.00, '2025-03-01'),
(2, 28000.00, '2025-03-05'),
(7, 35000.00, '2025-03-11'),
(8, 14000.00, '2025-03-18'),
(3, 26000.00, '2025-04-02'),
(4, 19000.00, '2025-04-09'),
(5, 32000.00, '2025-04-15'),
(6, 21000.00, '2025-05-03'),
(1, 40000.00, '2025-05-12');
select* from sales_orders;
-- Display all columns and records from the salespersons table
SELECT * FROM salespersons;
-- Display only salesperson names and their regions
SELECT sales_name, region
FROM salespersons;
-- Display each region only once
SELECT DISTINCT region
FROM salespersons;
-- Display salesperson names using a temporary column alias
SELECT sales_name AS executive_name
FROM salespersons;
-- Display order amounts using a temporary column alias
SELECT order_amount AS total_value
FROM sales_orders;
CREATE INDEX idx_region
ON salespersons(region);
-- Find all salespersons belonging to the South region
SELECT *
FROM salespersons
WHERE region = 'South';
SHOW INDEX FROM salespersons;
USE sales_analytics;

-- 1. Retrieve all salesperson records
SELECT * FROM salespersons;

-- 2. Retrieve only names and regions
SELECT sales_name, region
FROM salespersons;

-- 3. Retrieve unique regions
SELECT DISTINCT region
FROM salespersons;

-- 4. Rename sales_name in the output
SELECT sales_name AS executive_name
FROM salespersons;

-- 5. Rename order_amount in the output
SELECT order_amount AS total_value
FROM sales_orders;

/*
6. Find salespersons from the South region.
This query filters records using the WHERE clause.
*/
SELECT *
FROM salespersons
WHERE region = 'South';