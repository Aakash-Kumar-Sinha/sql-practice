-- Create Database

CREATE DATABASE cross_join_demo;

USE cross_join_demo;


-- Create Student Table

CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);


-- Insert Student Data

INSERT INTO student (id, name)
VALUES
(101, 'Adam'),
(102, 'Bob'),
(103, 'Casey');


-- Create Course Table

CREATE TABLE course (
    id INT PRIMARY KEY,
    course VARCHAR(50)
);


-- Insert Course Data

INSERT INTO course (id, course)
VALUES
(1, 'English'),
(2, 'Math'),
(3, 'Science');


-- View Tables

SELECT * FROM student;

SELECT * FROM course;


-- CROSS JOIN

SELECT *
FROM student
CROSS JOIN course;


-- CROSS JOIN with Selected Columns

SELECT
    student.name,
    course.course
FROM student
CROSS JOIN course;