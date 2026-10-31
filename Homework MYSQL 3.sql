CREATE DATABASE internship_analytics;
SHOW DATABASES;
USE internship_analytics;
CREATE TABLE interns (
    intern_id INT,
    intern_name VARCHAR(50),
    college VARCHAR(50),
    city VARCHAR(30),
    stipend DECIMAL(8,2),
    duration_months INT
);
DESCRIBE interns;
INSERT INTO interns
(intern_id, intern_name, college, city, stipend, duration_months)
VALUES
(1, 'Arun', 'Kerala University', 'Trivandrum', 5000.00, 6),
(2, 'Meera', 'MG University', 'Kottayam', 4500.00, 8),
(3, 'Rahul', 'Calicut University', 'Calicut', 2500.00, 3),
(4, 'Anjali', 'Kerala University', 'Kochi', 6000.00, 12),
(5, 'Vishnu', 'Kannur University', 'Kannur', 3500.00, 7),
(6, 'Sneha', 'MG University', 'Kottayam', 2800.00, 4),
(7, 'Akhil', 'Kerala University', 'Kollam', 4000.00, 9),
(8, 'Diya', 'Calicut University', 'Calicut', 5500.00, 6),
(9, 'Nikhil', 'MG University', 'Thrissur', 2000.00, 2),
(10, 'Priya', 'Kannur University', 'Kannur', 7000.00, 10),
(11, 'Amal', 'Kerala University', 'Kochi', 3200.00, 5),
(12, 'Kavya', 'MG University', 'Kottayam', 4800.00, 8),
(13, 'Adithya', 'Calicut University', 'Calicut', 2700.00, 4),
(14, 'Devika', 'Kerala University', 'Trivandrum', 6500.00, 11),
(15, 'Kiran', 'Wrong College Name', 'Kochi', 3800.00, 7);
select*from interns;
SELECT *
FROM interns
WHERE duration_months > 6;
UPDATE interns
SET stipend = stipend + 1000
WHERE duration_months > 6;
SELECT intern_id, intern_name, stipend, duration_months
FROM interns
WHERE duration_months > 6;
UPDATE interns
SET college = 'Kerala University'
WHERE intern_id = 15;
SELECT intern_id, intern_name, college
FROM interns
WHERE intern_id = 15;
SELECT *
FROM interns
WHERE stipend < 3000;
DELETE FROM interns
WHERE stipend < 3000;
SELECT *
FROM interns;
SELECT COUNT(*) AS remaining_interns
FROM interns;