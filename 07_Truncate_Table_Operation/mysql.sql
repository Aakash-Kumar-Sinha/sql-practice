-- Create students table
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT
);


-- Insert sample data
INSERT INTO students (name, age) VALUES
('Alice', 20),
('Bob', 22),
('Charlie', 19);


-- Remove all records but keep table structure
TRUNCATE TABLE students;