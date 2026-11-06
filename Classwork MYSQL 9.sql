CREATE DATABASE student_analytics;
SHOW DATABASES;
USE student_analytics;
CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(50),
    marks INT,
    stipend INT
);
describe students;
INSERT INTO students
(student_id, student_name, marks, stipend)
VALUES
(1, 'Rahul', 78, 3000),
(2, 'Anita', 85, 3500),
(3, 'Karan', 65, 2500),
(4, 'Neha', 92, 4000),
(5, 'Amit', 70, 2800),
(6, 'Pooja', 88, 3700),
(7, 'Ravi', 60, 2000),
(8, 'Sneha', 90, 4200);
select*from students;
SELECT AVG(marks)
FROM students;
-- Find students who scored above average marks
SELECT *
FROM students
WHERE marks > (
    SELECT AVG(marks)
    FROM students
);
SELECT MAX(stipend)
FROM students;
-- Find students receiving the maximum stipend
SELECT *
FROM students
WHERE stipend = (
    SELECT MAX(stipend)
    FROM students
);
-- Display each student along with the overall average marks
SELECT
    student_id,
    student_name,
    marks,
    stipend,
    (
        SELECT AVG(marks)
        FROM students
    ) AS average_marks
FROM students;
USE student_analytics;

-- 1. Students scoring above average marks
SELECT *
FROM students
WHERE marks > (
    SELECT AVG(marks)
    FROM students
);

-- 2. Student receiving maximum stipend
SELECT *
FROM students
WHERE stipend = (
    SELECT MAX(stipend)
    FROM students
);

-- 3. Each student with overall average marks
SELECT
    student_id,
    student_name,
    marks,
    stipend,
    (SELECT AVG(marks) FROM students) AS average_marks
FROM students;
