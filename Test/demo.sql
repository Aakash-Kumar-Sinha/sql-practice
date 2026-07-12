-- Demo SQL file for testing purposes.

CREATE DATABASE college;

USE college;

CREATE TABLE student (
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

INSERT INTO student (id, name, age)
VALUES
(1, 'Alice', 20),
(2, 'Bob', 21),
(3, 'Charlie', 19),
(4, 'David', 22),
(5, 'Emma', 20);