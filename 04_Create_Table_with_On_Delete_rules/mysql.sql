-- Create departments table (parent table)
CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);


-- Create employees table with ON DELETE CASCADE
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department_id INT,

    -- If department is deleted, delete related employees automatically
    CONSTRAINT fk_employee_department
    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
    ON DELETE CASCADE
);


-- Create projects table with ON DELETE SET NULL
CREATE TABLE projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    department_id INT NULL,

    -- If department is deleted, keep project but remove department link
    CONSTRAINT fk_project_department
    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
    ON DELETE SET NULL
);


-- Create salaries table with ON DELETE RESTRICT
CREATE TABLE salaries (
    salary_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,

    -- Prevent employee deletion if salary record exists
    CONSTRAINT fk_salary_employee
    FOREIGN KEY (employee_id)
    REFERENCES employees(employee_id)
    ON DELETE RESTRICT
);


-- Create attendance table with ON DELETE NO ACTION
CREATE TABLE attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,

    -- Prevent deletion of employee if attendance records exist
    -- MySQL treats NO ACTION similar to RESTRICT
    CONSTRAINT fk_attendance_employee
    FOREIGN KEY (employee_id)
    REFERENCES employees(employee_id)
    ON DELETE NO ACTION
);