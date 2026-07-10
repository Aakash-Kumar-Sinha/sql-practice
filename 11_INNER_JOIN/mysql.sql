-- Create Database

CREATE DATABASE inner_join_demo;

USE inner_join_demo;


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
(102, 'English'),
(105, 'Math'),
(103, 'Science'),
(107, 'Computer Science');


-- View Tables

SELECT * FROM student;

SELECT * FROM course;


-- INNER JOIN

SELECT *
FROM student
INNER JOIN course
ON student.id = course.id;


-- INNER JOIN with Alias

SELECT
    s.id,
    s.name,
    c.course
FROM student AS s
INNER JOIN course AS c
ON s.id = c.id;


-- INNER JOIN with WHERE Condition

SELECT
    s.name,
    c.course
FROM student AS s
INNER JOIN course AS c
ON s.id = c.id
WHERE c.course = 'Science';