-- Create Database

CREATE DATABASE sql_join_subquery;
USE sql_join_subquery;


-- Create Customer Table

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);


-- Create Orders Table

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount INT
);


-- Insert Customer Data

INSERT INTO customers VALUES
(1, 'John', 'Delhi'),
(2, 'Emma', 'Mumbai'),
(3, 'David', 'Pune');


-- Insert Orders Data

INSERT INTO orders VALUES
(101, 1, 'Laptop', 50000),
(102, 2, 'Phone', 30000),
(103, 1, 'Tablet', 20000),
(104, 3, 'Monitor', 15000);


-- INNER JOIN
-- Combines records from both tables where matching values exist

SELECT 
    customers.customer_name,
    orders.product,
    orders.amount
FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id;


-- SUBQUERY
-- Finds customers whose customer_id exists in the orders table

SELECT 
    customer_name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
);