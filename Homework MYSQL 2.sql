CREATE DATABASE student_analytics;
SHOW DATABASES;
USE student_analytics;
CREATE TABLE students (
    student_id INT,
    full_name VARCHAR(50),
    gender ENUM('M', 'F'),
    birth_date DATE,
    is_active BOOLEAN
);
describe students;
INSERT INTO students
(student_id, full_name, gender, birth_date, is_active)
VALUES
(1, 'Anu Raj', 'F', '2003-05-12', 1),
(2, 'Rahul Kumar', 'M', '2002-08-20', 1),
(3, 'Meera S', 'F', '2003-11-15', 1),
(4, 'Arun Das', 'M', '2002-02-10', 0),
(5, 'Diya Mohan', 'F', '2003-07-25', 1);
select * from students;
CREATE TABLE courses (
    course_id INT,
    course_name VARCHAR(100),
    fee DECIMAL(10,2),
    duration_months INT
);
Describe courses;
INSERT INTO courses
(course_id, course_name, fee, duration_months)
VALUES
(101, 'Data Analytics', 25000.00, 6),
(102, 'Python Programming', 15000.00, 3),
(103, 'Database Management', 12000.00, 4),
(104, 'Web Development', 30000.00, 6),
(105, 'Data Science', 35000.00, 8);
select*from courses;
CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    enrollment_date DATE
);
Describe enrollments;
INSERT INTO enrollments (student_id, course_id, enrollment_date)
VALUES
(1, 101, '2026-01-10'),
(1, 102, '2026-01-15'),
(2, 101, '2026-02-01'),
(2, 103, '2026-02-05'),
(3, 102, '2026-02-10'),
(3, 103, '2026-02-15'),
(4, 101, '2026-03-01'),
(4, 104, '2026-03-05'),
(5, 102, '2026-03-10'),
(5, 104, '2026-03-15');
select * from enrollments;
ALTER TABLE students
ADD COLUMN email VARCHAR(100);
DESCRIBE students;
select* from students;
TRUNCATE TABLE enrollments;
SELECT * FROM enrollments;
DESCRIBE enrollments;
DROP TABLE courses;
SHOW tables;
