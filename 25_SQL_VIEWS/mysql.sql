-- Create Database

CREATE DATABASE sql_views;
USE sql_views;


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
(3, 'David', 'Finance', 60000);


-- Create View
-- Creates a virtual table containing selected employee details

CREATE VIEW employee_details AS
SELECT emp_name, department, salary
FROM employees;


-- View Data
-- Displays all records from the view

SELECT *
FROM employee_details;


-- Drop View
-- Deletes the view from the database

DROP VIEW employee_details;