-- Create Database

CREATE DATABASE sql_having_clause;
USE sql_having_clause;


-- Create Sales Table

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product VARCHAR(50),
    category VARCHAR(50),
    amount INT
);


-- Insert Sales Data

INSERT INTO sales VALUES
(1, 'Laptop', 'Electronics', 50000),
(2, 'Phone', 'Electronics', 30000),
(3, 'Chair', 'Furniture', 10000),
(4, 'Table', 'Furniture', 15000);


-- HAVING Clause with GROUP BY
-- Filters grouped records based on aggregate conditions

SELECT category, SUM(amount) AS total_sales
FROM sales
GROUP BY category
HAVING SUM(amount) > 40000;


-- WHERE Clause
-- Filters individual records before grouping

SELECT *
FROM sales
WHERE amount > 10000;


-- HAVING Clause with COUNT Function
-- Finds categories having more than one product

SELECT category, COUNT(*) AS product_count
FROM sales
GROUP BY category
HAVING COUNT(*) > 1;