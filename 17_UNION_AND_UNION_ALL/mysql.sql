-- Create Database

CREATE DATABASE union_demo;

USE union_demo;


-- Create Employee Table

CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);


-- Insert Employee Data

INSERT INTO employee (id, name)
VALUES
(101, 'Adam'),
(102, 'Bob'),
(103, 'Casey');


-- View Table

SELECT * FROM employee;


-- UNION
-- Removes duplicate records

SELECT name
FROM employee

UNION

SELECT name
FROM employee;


-- UNION ALL
-- Keeps duplicate records

SELECT name
FROM employee

UNION ALL

SELECT name
FROM employee;