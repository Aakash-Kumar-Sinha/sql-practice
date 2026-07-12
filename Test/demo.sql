-- Demo SQL file for testing purposes.

CREATE DATABASE college;

USE college;

CREATE TABLE student (
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);