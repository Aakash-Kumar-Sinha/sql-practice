-- Create Database

CREATE DATABASE sql_subquery_operators;
USE sql_subquery_operators;


-- Create Customer Table

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);


-- Create Orders Table

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT
);


-- Insert Customer Data

INSERT INTO customers VALUES
(1, 'John'),
(2, 'Emma'),
(3, 'David');


-- Insert Orders Data

INSERT INTO orders VALUES
(101, 1),
(102, 2);


-- IN Operator with Subquery
-- Displays customers who have placed orders

SELECT *
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
);


-- NOT IN Operator with Subquery
-- Displays customers who have not placed any orders

SELECT *
FROM customers
WHERE customer_id NOT IN (
    SELECT customer_id
    FROM orders
);


-- EXISTS Operator with Subquery
-- Displays customers for whom a matching order exists

SELECT *
FROM customers c
WHERE EXISTS (
    SELECT customer_id
    FROM orders o
    WHERE c.customer_id = o.customer_id
);