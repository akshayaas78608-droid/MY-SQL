CREATE DATABASE training_analytics;
USE training_analytics;
CREATE TABLE trainees (
    trainee_id INT,
    trainee_name VARCHAR(50),
    city VARCHAR(30),
    department VARCHAR(30),
    stipend DECIMAL(8,2),
    age INT
);
Describe trainees;
INSERT INTO trainees
(trainee_id, trainee_name, city, department, stipend, age)
VALUES
(1, 'Arun', 'Kochi', 'IT', 12000.00, 23),
(2, 'Meera', 'Trivandrum', 'HR', 10000.00, 24),
(3, 'Rahul', 'Calicut', 'Finance', 11000.00, 25),
(4, 'Anjali', 'Kochi', 'IT', 13000.00, 22),
(5, 'Vishnu', 'Thrissur', 'Marketing', 9000.00, 23),
(6, 'Sneha', 'Kollam', 'HR', 10500.00, 26),
(7, 'Akhil', 'Kannur', 'IT', 12500.00, 24),
(8, 'Diya', 'Trivandrum', 'Finance', 11500.00, 22),
(9, 'Nikhil', 'Kochi', 'Marketing', 9500.00, 25),
(10, 'Priya', 'Kottayam', 'IT', 14000.00, 23);
select*from trainees;
SELECT *
FROM trainees
WHERE trainee_id = 1;
use training_analytics;
UPDATE trainees
SET city = 'Kochi'
WHERE trainee_id = 2
LIMIT 1;
SET SQL_SAFE_UPDATES = 0;
UPDATE trainees
SET city = 'Kochi'
WHERE trainee_id = 2;
SELECT trainee_id, trainee_name, city
FROM trainees
WHERE trainee_id = 2;
UPDATE trainees
SET stipend = 15000.00
WHERE trainee_id = 1;
SELECT trainee_id, trainee_name, stipend
FROM trainees
WHERE trainee_id = 1;
DELETE FROM trainees
WHERE trainee_id = 10;
select*from trainees;
SELECT COUNT(*) AS total_trainees
FROM trainees;


