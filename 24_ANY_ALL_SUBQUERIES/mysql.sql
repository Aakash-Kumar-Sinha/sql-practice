-- Create Database

CREATE DATABASE sql_any_all;
USE sql_any_all;


-- Create Employee Table

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT
);


-- Insert Employee Data

INSERT INTO employees VALUES
(1, 'John', 50000),
(2, 'Emma', 40000),
(3, 'David', 70000),
(4, 'Sara', 60000);


-- ANY Operator with Subquery
-- Displays employees whose salary is greater than at least one salary returned by the subquery

SELECT *
FROM employees
WHERE salary > ANY (
    SELECT salary
    FROM employees
    WHERE salary < 60000
);


-- ALL Operator with Subquery
-- Displays employees whose salary is greater than all salaries returned by the subquery

SELECT *
FROM employees
WHERE salary > ALL (
    SELECT salary
    FROM employees
    WHERE salary < 60000
);