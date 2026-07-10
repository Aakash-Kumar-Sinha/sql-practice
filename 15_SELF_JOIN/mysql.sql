-- Create Database

CREATE DATABASE self_join_demo;

USE self_join_demo;


-- Create Employee Table

CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);


-- Insert Employee Data

INSERT INTO employee (id, name, manager_id)
VALUES
(101, 'Adam', 103),
(102, 'Bob', 104),
(103, 'Casey', NULL),
(104, 'Donald', 103);


-- View Table

SELECT * FROM employee;


-- SELF JOIN

SELECT *
FROM employee AS e1
JOIN employee AS e2
ON e1.id = e2.manager_id;


-- SELF JOIN with Aliases

SELECT
    e1.name AS manager_name,
    e2.name AS employee_name
FROM employee AS e1
JOIN employee AS e2
ON e1.id = e2.manager_id;