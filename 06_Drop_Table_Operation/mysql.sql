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


-- Delete table permanently (data + structure)
DROP TABLE students;


-- Drop table safely if it exists
DROP TABLE IF EXISTS students;