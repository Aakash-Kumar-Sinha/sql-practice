-- Database selection
USE UNIVERSITY;

-- Conditional Operators (<, >, =, !=, >=, <=)

SELECT name, marks 
FROM students 
WHERE marks > 80;

SELECT name, marks 
FROM students 
WHERE marks >= 80;

SELECT * 
FROM students 
WHERE marks = 85;

SELECT * 
FROM students 
WHERE city != 'Delhi';


-- Logical Operators (AND, OR, NOT)

SELECT name, marks, city 
FROM students 
WHERE marks > 80 AND city = 'Kolkata';

SELECT name, marks, city 
FROM students 
WHERE marks > 80 OR city = 'Delhi';

SELECT * 
FROM students 
WHERE NOT city = 'Mumbai';


-- Range Checking (BETWEEN)

SELECT name, marks 
FROM students 
WHERE marks BETWEEN 70 AND 90;


-- Set Matching (IN / NOT IN)

SELECT name, city 
FROM students 
WHERE city IN ('Delhi', 'Mumbai');

SELECT name, city 
FROM students 
WHERE city NOT IN ('Delhi', 'Mumbai');


-- Pattern Matching (LIKE)

SELECT name 
FROM students 
WHERE name LIKE 'A%';

SELECT name 
FROM students 
WHERE name LIKE '%a';

SELECT name 
FROM students 
WHERE name LIKE '%e%';


-- NULL Checking

SELECT name, city 
FROM students 
WHERE city IS NULL;

SELECT name, city 
FROM students 
WHERE city IS NOT NULL;