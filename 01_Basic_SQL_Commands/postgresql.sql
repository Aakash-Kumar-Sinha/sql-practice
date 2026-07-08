-- Create the students table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    marks DECIMAL(5,2),
    city VARCHAR(50)
);

-- Insert sample data into the students table
INSERT INTO students (id, name, age, marks, city) VALUES
(1, 'Alice', 20, 85.5, 'New York'),
(2, 'Bob', 22, 78.0, 'London'),
(3, 'Charlie', 19, 92.0, 'Delhi'),
(4, 'David', 21, 65.5, NULL),
(5, 'Eva', 20, 74.0, 'Mumbai'),
(6, 'Frank', 23, 55.0, 'Delhi'),
(7, 'Grace', 22, 48.5, NULL),
(8, 'Helen', 21, 81.0, 'Chennai');


-- Select only the name and age columns from the students table
SELECT name, age
FROM public.students;

-- Retrieve all students whose marks are greater than 80
SELECT *
FROM public.students
WHERE marks > 80;

-- Retrieve the first 3 students whose marks are greater than 50
SELECT *
FROM public.students
WHERE marks > 50
LIMIT 3;

-- Display unique city names without duplicates
SELECT DISTINCT city
FROM public.students;

-- Retrieve all students sorted by marks in ascending order (default)
SELECT *
FROM public.students
ORDER BY marks;

-- Retrieve all students sorted by marks in descending order
SELECT *
FROM public.students
ORDER BY marks DESC;

-- Retrieve all students sorted by age in ascending order
SELECT *
FROM public.students
ORDER BY age ASC;

-- Retrieve students whose marks are between 70 and 80 (inclusive)
SELECT *
FROM public.students
WHERE marks BETWEEN 70 AND 80;

-- Retrieve students whose city value is NULL (missing)
SELECT *
FROM public.students
WHERE city IS NULL;

-- Retrieve students whose city value is NOT NULL
SELECT *
FROM public.students
WHERE city IS NOT NULL;