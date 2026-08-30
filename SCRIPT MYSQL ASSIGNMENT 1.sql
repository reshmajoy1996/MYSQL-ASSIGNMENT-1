DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE);
SELECT * FROM Departments;
CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE);
SELECT * FROM Location;
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M','F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id));

SELECT * FROM Employees;
ALTER TABLE Employees
ADD email VARCHAR(100);
SELECT * FROM Employees;
ALTER TABLE Employees
MODIFY designation VARCHAR(200);

SELECT * FROM Employees;
ALTER TABLE Employees
DROP COLUMN age;

SELECT * FROM Employees;
ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;

SELECT * FROM Employees;
RENAME TABLE Departments TO Departments_Info;

SELECT * FROM Departments_Info;
RENAME TABLE Location TO Locations;

SELECT * FROM Locations;
TRUNCATE TABLE Employees;

SELECT * FROM Employees;
DROP TABLE Employees;
SHOW TABLES;
DROP DATABASE employee;
SHOW DATABASES;
DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE);

SELECT * FROM Departments;
CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE);

SELECT * FROM Location;
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M','F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id));

SELECT * FROM Employees;
