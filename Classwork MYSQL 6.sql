CREATE DATABASE college_analytics;
SHOW DATABASES;
use college_analytics;
CREATE TABLE students_marks (
    student_id INT,
    student_name VARCHAR(50),
    department VARCHAR(30),
    marks INT
);
INSERT INTO students_marks
(student_id, student_name, department, marks)
VALUES
(1, 'Arun', 'Physics', 85),
(2, 'Anjali', 'Physics', 92),
(3, 'Rahul', 'Physics', 78),
(4, 'Meera', 'Computer Science', 95),
(5, 'Vishnu', 'Computer Science', 88),
(6, 'Akhil', 'Computer Science', 76),
(7, 'Sneha', 'Mathematics', 90),
(8, 'Amal', 'Mathematics', 82),
(9, 'Kavya', 'Mathematics', 86),
(10, 'Nikhil', 'Chemistry', 72),
(11, 'Divya', 'Chemistry', 80),
(12, 'Aparna', 'Chemistry', 88);
select * from students_marks;
SELECT
    department,
    COUNT(*) AS total_students
FROM students_marks
GROUP BY department;
SELECT
    department,
    AVG(marks) AS average_marks
FROM students_marks
GROUP BY department;
SELECT
    department,
    COUNT(*) AS total_students,
    AVG(marks) AS average_marks
FROM students_marks
GROUP BY department
ORDER BY average_marks DESC;




