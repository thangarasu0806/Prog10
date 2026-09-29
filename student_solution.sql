CREATE DATABASE IF NOT EXISTS CollegeDB;
USE CollegeDB;

CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    department_id INT
);

INSERT INTO Department (department_id, department_name) VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Electronics');

INSERT INTO Student (student_id, student_name, department_id) VALUES
(101, 'John', 1),
(102, 'David', 2),
(103, 'Sam', NULL);

-- LEFT JOIN
SELECT
    Student.student_id,
    Student.student_name,
    Department.department_name
FROM Student
LEFT JOIN Department
ON Student.department_id = Department.department_id;

-- RIGHT JOIN
SELECT
    Student.student_id,
    Student.student_name,
    Department.department_name
FROM Student
RIGHT JOIN Department
ON Student.department_id = Department.department_id;
