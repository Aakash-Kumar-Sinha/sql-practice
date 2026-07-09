-- Create students table
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    city VARCHAR(50)
);


-- Add a new column to existing table
ALTER TABLE students
ADD COLUMN marks DECIMAL(5,2);


-- Add multiple columns
ALTER TABLE students
ADD COLUMN email VARCHAR(100),
ADD COLUMN phone VARCHAR(15);


-- Modify existing column datatype
ALTER TABLE students
MODIFY COLUMN name VARCHAR(150);


-- Rename a column
ALTER TABLE students
RENAME COLUMN name TO student_name;


-- Drop a column
ALTER TABLE students
DROP COLUMN phone;


-- Add UNIQUE constraint
ALTER TABLE students
ADD CONSTRAINT unique_email UNIQUE (email);


-- Add CHECK constraint
ALTER TABLE students
ADD CONSTRAINT chk_age CHECK (age >= 18);


-- Add FOREIGN KEY constraint
ALTER TABLE students
ADD COLUMN department_id INT;

ALTER TABLE students
ADD CONSTRAINT fk_department
FOREIGN KEY (department_id)
REFERENCES departments(department_id);


-- Rename table
ALTER TABLE students
RENAME TO student_details;