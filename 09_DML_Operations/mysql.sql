-- Create Database

CREATE DATABASE IF NOT EXISTS college_db;
USE college_db;


-- Create Table

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT,
    city VARCHAR(50)
);


-- Insert Records

INSERT INTO students (student_name, email, age, city)
VALUES
('Alice', 'alice@gmail.com', 20, 'Delhi'),
('Bob', 'bob@gmail.com', 22, 'Mumbai'),
('Charlie', 'charlie@gmail.com', 21, 'Pune');


SELECT * FROM students;


-- Update Records

UPDATE students
SET city = 'Bangalore'
WHERE student_id = 2;


SELECT * FROM students;


-- Delete Records

DELETE FROM students
WHERE student_id = 3;


SELECT * FROM students;


-- Replace Records

REPLACE INTO students
(student_id, student_name, email, age, city)
VALUES
(2, 'Bob', 'bob_new@gmail.com', 23, 'Hyderabad');


SELECT * FROM students;


-- Truncate Table

TRUNCATE TABLE students;


SELECT * FROM students;