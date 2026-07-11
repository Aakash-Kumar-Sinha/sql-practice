-- Create Database

CREATE DATABASE sql_aggregate_functions;
USE sql_aggregate_functions;


-- Create Employee Table

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);


-- Insert Employee Data

INSERT INTO employees VALUES
(1, 'John', 'IT', 50000),
(2, 'Emma', 'HR', 40000),
(3, 'David', 'IT', 60000),
(4, 'Sara', 'Finance', 55000);


-- COUNT Function
-- Counts the total number of employees

SELECT COUNT(*) AS total_employees
FROM employees;


-- AVG Function
-- Calculates the average salary of employees

SELECT AVG(salary) AS average_salary
FROM employees;


-- MAX Function
-- Finds the highest salary among employees

SELECT MAX(salary) AS highest_salary
FROM employees;


-- MIN Function
-- Finds the lowest salary among employees

SELECT MIN(salary) AS lowest_salary
FROM employees;


-- SUM Function with GROUP BY
-- Calculates total salary department-wise

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;


-- COUNT Function with GROUP BY
-- Counts employees in each department

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;