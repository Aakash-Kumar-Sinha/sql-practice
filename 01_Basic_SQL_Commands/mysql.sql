CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    marks DECIMAL(5,2),
    city VARCHAR(50)
);

INSERT INTO students (id, name, age, marks, city) VALUES
(1, 'Alice', 20, 85.5, 'New York'),
(2, 'Bob', 22, 78.0, 'London'),
(3, 'Charlie', 19, 92.0, 'Delhi'),
(4, 'David', 21, 65.5, NULL),
(5, 'Eva', 20, 74.0, 'Mumbai'),
(6, 'Frank', 23, 55.0, 'Delhi'),
(7, 'Grace', 22, 48.5, NULL),
(8, 'Helen', 21, 81.0, 'Chennai');