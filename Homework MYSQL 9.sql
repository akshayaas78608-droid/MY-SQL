DROP DATABASE company_analytics;
CREATE DATABASE company_analytics;
show databases;
USE company_analytics;
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);
DESCRIBE employees;
INSERT INTO employees
(emp_id, emp_name, department, salary)
VALUES
(1, 'Rahul', 'IT', 60000),
(2, 'Anita', 'IT', 52000),
(3, 'Karan', 'HR', 45000),
(4, 'Neha', 'HR', 48000),
(5, 'Amit', 'Finance', 70000),
(6, 'Pooja', 'Finance', 65000);
select*from employees;
SELECT
    department,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department;
-- Find employees earning more than their department average
SELECT *
FROM employees AS e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees AS e2
    WHERE e2.department = e.department
);
CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(50)
);
describe customers;
INSERT INTO customers
(customer_id, customer_name)
VALUES
(1, 'Rahul'),
(2, 'Anita'),
(3, 'Karan'),
(4, 'Neha'),
(5, 'Amit');
select*from customers;
CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    amount INT
);
describe orders;
INSERT INTO orders
(order_id, customer_id, amount)
VALUES
(101, 1, 5000),
(102, 2, 7000),
(103, 1, 3000),
(104, 4, 4500);
select*from orders;
-- Find customers who have placed at least one order
SELECT *
FROM customers AS c
WHERE EXISTS (
    SELECT 1
    FROM orders AS o
    WHERE o.customer_id = c.customer_id
);
-- Find customers who have not placed any orders
SELECT *
FROM customers AS c
WHERE NOT EXISTS (
    SELECT 1
    FROM orders AS o
    WHERE o.customer_id = c.customer_id
);
-- Find employees earning more than any salary in HR
SELECT *
FROM employees
WHERE salary > ANY (
    SELECT salary
    FROM employees
    WHERE department = 'HR'
);
-- Find employees earning more than all salaries in HR
SELECT *
FROM employees
WHERE salary > ALL (
    SELECT salary
    FROM employees
    WHERE department = 'HR'
);