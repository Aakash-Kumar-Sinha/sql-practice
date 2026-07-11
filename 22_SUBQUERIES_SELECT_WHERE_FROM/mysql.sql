-- Create Database

CREATE DATABASE sql_subqueries;
USE sql_subqueries;


-- Create Employee Table

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);


-- Insert Employee Data

INSERT INTO employees VALUES
(1, 'John', 50000, 'IT'),
(2, 'Emma', 40000, 'HR'),
(3, 'David', 60000, 'IT'),
(4, 'Sara', 70000, 'Finance');


-- Subquery in SELECT Clause
-- Displays each employee along with the average salary

SELECT 
    emp_name,
    (SELECT AVG(salary) FROM employees) AS average_salary
FROM employees;


-- Subquery in WHERE Clause
-- Finds employees earning more than the average salary

SELECT emp_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


-- Subquery in FROM Clause
-- Creates a temporary result set and displays all records

SELECT *
FROM (
    SELECT emp_name, salary
    FROM employees
) AS employee_data;