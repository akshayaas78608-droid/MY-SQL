CREATE DATABASE company_analytics;
SHOW DATABASES;
USE company_analytics;
CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    department VARCHAR(30) NOT NULL,
    city VARCHAR(30),
    email VARCHAR(50) UNIQUE,
    salary DECIMAL(10,2) DEFAULT 25000,
    age INT
);
DESCRIBE employees;
INSERT INTO employees
(emp_name, department, city, email, salary, age)
VALUES
('Arun', 'IT', 'Kochi', 'arun@company.com', 45000, 25),
('Meera', 'HR', 'Trivandrum', 'meera@company.com', 35000, 28),
('Rahul', 'Finance', 'Kozhikode', 'rahul@company.com', 40000, 30),
('Anjali', 'IT', 'Kollam', 'anjali@company.com', 50000, 26),
('Vishnu', 'Marketing', 'Kochi', 'vishnu@company.com', 32000, 24),
('Sneha', 'HR', 'Kottayam', 'sneha@company.com', 38000, 29),
('Akhil', 'Finance', 'Thrissur', 'akhil@company.com', 42000, 32),
('Diya', 'IT', 'Trivandrum', 'diya@company.com', 48000, 27),
('Nikhil', 'Marketing', 'Kannur', 'nikhil@company.com', 30000, 23),
('Priya', 'Finance', 'Kochi', 'priya@company.com', 55000, 31);
select*from employees;
SELECT * FROM employees;
SELECT emp_name, department, salary
FROM employees;
SELECT DISTINCT department
FROM employees;
SELECT emp_name AS employee_name
FROM employees;
SELECT
    emp_name AS employee_name,
    salary AS monthly_salary
FROM employees;
SELECT e.emp_name, e.city
FROM employees AS e;
SELECT e.emp_name, e.city
FROM employees e;
USE company_analytics;

-- 1. Retrieve all columns
SELECT * FROM employees;

-- 2. Retrieve selected columns
SELECT emp_name, department, salary
FROM employees;

-- 3. Display unique departments
SELECT DISTINCT department
FROM employees;

-- 4. Use a column alias
SELECT emp_name AS employee_name
FROM employees;

-- 5. Use a table alias
SELECT e.emp_name, e.city
FROM employees AS e;

/*
6. Display employee names,
departments, and salaries.
*/
SELECT emp_name, department, salary
FROM employees;