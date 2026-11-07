DROP DATABASE training_analytics;
CREATE DATABASE training_analytics;
SHOW DATABASES;
USE training_analytics;
CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(50),
    score INT,
    stipend INT
);
DESCRIBE students;
INSERT INTO students (student_id, student_name, score, stipend)
VALUES
(1, 'Rahul', 82, 3500),
(2, 'Anita', 68, 3000),
(3, 'Karan', 45, NULL),
(4, 'Neha', 91, 4000),
(5, 'Amit', 55, 2800),
(6, 'Pooja', 77, NULL);
SELECT * FROM students;
SELECT
    student_id,
    student_name,
    score,
    CASE
        WHEN score >= 80 THEN 'High'
        WHEN score >= 50 THEN 'Medium'
        ELSE 'Low'
    END AS performance_level
FROM students;
SELECT
    student_id,
    student_name,
    stipend,
    IF(stipend >= 3000, 'Eligible', 'Not Eligible') AS stipend_status
FROM students;
SELECT
    student_id,
    student_name,
    stipend,
    IFNULL(stipend, 0) AS updated_stipend
FROM students;
SELECT
    student_id,
    student_name,
    score,

    CASE
        WHEN score >= 80 THEN 'High'
        WHEN score >= 50 THEN 'Medium'
        ELSE 'Low'
    END AS performance_level,

    IF(IFNULL(stipend, 0) >= 3000,
       'Eligible',
       'Not Eligible') AS stipend_status,

    IFNULL(stipend, 0) AS updated_stipend

FROM students;