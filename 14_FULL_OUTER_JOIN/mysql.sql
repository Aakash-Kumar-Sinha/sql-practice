-- Create Database

CREATE DATABASE full_outer_join_demo;

USE full_outer_join_demo;


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


-- FULL OUTER JOIN using LEFT JOIN and RIGHT JOIN

SELECT
    s.id,
    s.name,
    c.course
FROM student AS s
LEFT JOIN course AS c
ON s.id = c.id

UNION

SELECT
    s.id,
    s.name,
    c.course
FROM student AS s
RIGHT JOIN course AS c
ON s.id = c.id;


-- Find Unmatched Records from Both Tables

SELECT
    s.id,
    s.name,
    c.course
FROM student AS s
LEFT JOIN course AS c
ON s.id = c.id
WHERE c.id IS NULL

UNION

SELECT
    s.id,
    s.name,
    c.course
FROM student AS s
RIGHT JOIN course AS c
ON s.id = c.id
WHERE s.id IS NULL;