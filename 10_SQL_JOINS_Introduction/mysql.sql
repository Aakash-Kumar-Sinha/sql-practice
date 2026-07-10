-- Create Database

CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;


-- Create Departments Table

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);


-- Create Employees Table

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    salary INT,
    department_id INT
);


-- Insert Department Records

INSERT INTO departments
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');


-- Insert Employee Records

INSERT INTO employees
VALUES
(101, 'Alice', 50000, 1),
(102, 'Bob', 45000, 2),
(103, 'Charlie', 60000, 1),
(104, 'David', 55000, 3);


-- View Tables

SELECT * FROM departments;

SELECT * FROM employees;


-- Without JOIN

SELECT 
    employee_name,
    department_id
FROM employees;


-- Using JOIN

SELECT
    employees.employee_name,
    departments.department_name
FROM employees
JOIN departments
ON employees.department_id = departments.department_id;