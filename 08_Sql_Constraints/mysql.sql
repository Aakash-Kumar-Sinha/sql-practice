-- Create departments table with PRIMARY KEY
CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);


-- Create students table with multiple constraints
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    city VARCHAR(50) DEFAULT 'Unknown',
    department_id INT,

    -- Foreign Key Constraint
    CONSTRAINT fk_department
    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
);


-- Insert department data
INSERT INTO departments (department_name)
VALUES ('Computer Science');


-- Insert student data
INSERT INTO students 
(student_name, email, age, department_id)
VALUES
('Alice', 'alice@gmail.com', 20, 1);


-- Test DEFAULT constraint
INSERT INTO students 
(student_name, email, age, department_id)
VALUES
('Bob', 'bob@gmail.com', 22, 1);


-- View data
SELECT * FROM students;
SELECT * FROM departments;