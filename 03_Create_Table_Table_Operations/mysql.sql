-- Create courses table with constraints

CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Auto-incrementing unique course ID
    course_name VARCHAR(100) NOT NULL UNIQUE, -- Course name cannot be empty and must be unique
    description TEXT, -- Stores course description
    duration INT CHECK (duration > 0), -- Duration must be greater than zero
    start_date DATE NOT NULL, -- Course start date is required
    end_date DATE, -- Course end date (optional)
    CONSTRAINT chk_dates CHECK (end_date IS NULL OR end_date > start_date) -- Ensures end date is after start date
);