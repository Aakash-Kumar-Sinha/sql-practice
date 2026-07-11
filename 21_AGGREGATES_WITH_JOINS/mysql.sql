-- Create Database

CREATE DATABASE sql_join_aggregates;
USE sql_join_aggregates;


-- Create Department Table

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);


-- Create Employee Table

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT
);


-- Insert Department Data

INSERT INTO departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');


-- Insert Employee Data

INSERT INTO employees VALUES
(101, 'John', 1, 50000),
(102, 'Emma', 2, 40000),
(103, 'David', 1, 60000),
(104, 'Sara', 3, 55000);


-- JOIN with COUNT Aggregate Function
-- Counts total employees in each department

SELECT 
    departments.dept_name,
    COUNT(employees.emp_id) AS total_employees
FROM departments
JOIN employees
ON departments.dept_id = employees.dept_id
GROUP BY departments.dept_name;


-- JOIN with AVG Aggregate Function
-- Calculates average salary of employees in each department

SELECT 
    departments.dept_name,
    AVG(employees.salary) AS average_salary
FROM departments
JOIN employees
ON departments.dept_id = employees.dept_id
GROUP BY departments.dept_name;