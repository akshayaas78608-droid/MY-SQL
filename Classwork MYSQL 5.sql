CREATE DATABASE education_analytics;
SHOW DATABASES;
USE education_analytics;
CREATE TABLE student_enrollments_raw (
    enrollment_id INT,
    student_id INT,
    student_name VARCHAR(50),
    student_city VARCHAR(30),
    course_id INT,
    course_name VARCHAR(50),
    instructor_name VARCHAR(50),
    course_fee DECIMAL(10,2)
);
describe student_enrollments_raw;
INSERT INTO student_enrollments_raw
(enrollment_id, student_id, student_name, student_city,
 course_id, course_name, instructor_name, course_fee)
VALUES
(1, 101, 'Anu', 'Kochi', 201, 'Data Analytics', 'Rahul', 15000),
(2, 102, 'Arun', 'Kollam', 202, 'Python', 'Meera', 12000),
(3, 103, 'Meera', 'Kottayam', 201, 'Data Analytics', 'Rahul', 15000),
(4, 101, 'Anu', 'Kochi', 202, 'Python', 'Meera', 12000),
(5, 104, 'Vishnu', 'Trivandrum', 203, 'SQL', 'Rahul', 8000),
(6, 102, 'Arun', 'Kollam', 201, 'Data Analytics', 'Rahul', 15000),
(7, 105, 'Diya', 'Kochi', 203, 'SQL', 'Rahul', 8000),
(8, 103, 'Meera', 'Kottayam', 202, 'Python', 'Meera', 12000),
(9, 104, 'Vishnu', 'Trivandrum', 201, 'Data Analytics', 'Rahul', 15000),
(10, 101, 'Anu', 'Kochi', 203, 'SQL', 'Rahul', 8000);
select* from student_enrollments_raw;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    student_city VARCHAR(30)
);
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    instructor_name VARCHAR(50),
    course_fee DECIMAL(10,2)
);
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
INSERT INTO students (student_id, student_name, student_city)
VALUES
(101, 'Anu', 'Kochi'),
(102, 'Arun', 'Kollam'),
(103, 'Meera', 'Kottayam'),
(104, 'Vishnu', 'Trivandrum'),
(105, 'Diya', 'Kochi');
select* from students;
INSERT INTO courses
(course_id, course_name, instructor_name, course_fee)
VALUES
(201, 'Data Analytics', 'Rahul', 15000),
(202, 'Python', 'Meera', 12000),
(203, 'SQL', 'Rahul', 8000);
select* from courses;
INSERT INTO enrollments
(enrollment_id, student_id, course_id)
VALUES
(1, 101, 201),
(2, 102, 202),
(3, 103, 201),
(4, 101, 202),
(5, 104, 203),
(6, 102, 201),
(7, 105, 203),
(8, 103, 202),
(9, 104, 201),
(10, 101, 203);
select*from enrollments;
-- Retrieve all student records
SELECT * FROM students;
-- Find students who live in Kochi and whose names start with A
SELECT *
FROM students
WHERE student_city = 'Kochi'
  AND student_name LIKE 'A%';
  -- Find students who live in either Kochi or Kollam
SELECT *
FROM students
WHERE student_city = 'Kochi'
   OR student_city = 'Kollam';
   -- Find students from Kochi, Kollam, or Kottayam
SELECT *
FROM students
WHERE student_city IN ('Kochi', 'Kollam', 'Kottayam');
-- Retrieve students who do not live in Kochi
SELECT *
FROM students
WHERE NOT student_city = 'Kochi';
-- Find student names beginning with A
SELECT *
FROM students
WHERE student_name LIKE 'A%';
-- Find student names ending with the letter a
SELECT *
FROM students
WHERE student_name LIKE '%a';
-- Find student names containing the characters ee
SELECT *
FROM students
WHERE student_name LIKE '%ee%';
-- Retrieve only the first three student records
SELECT *
FROM students
LIMIT 3;
USE education_analytics;

-- 1. Retrieve all students
SELECT * FROM students;

-- 2. Filter using AND
SELECT *
FROM students
WHERE student_city = 'Kochi'
  AND student_name LIKE 'A%';

-- 3. Filter using OR
SELECT *
FROM students
WHERE student_city = 'Kochi'
   OR student_city = 'Kollam';

-- 4. Filter using IN
SELECT *
FROM students
WHERE student_city IN ('Kochi', 'Kollam', 'Kottayam');

-- 5. Exclude Kochi
SELECT *
FROM students
WHERE NOT student_city = 'Kochi';

-- 6. Search names starting with A
SELECT *
FROM students
WHERE student_name LIKE 'A%';

-- 7. Retrieve only three records
SELECT *
FROM students
ORDER BY student_id
LIMIT 3;
