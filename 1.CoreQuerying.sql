CREATE DATABASE company_db;
USE company_db;

CREATE TABLE departments (
	id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);    

CREATE TABLE employees (
	id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
	salary DECIMAL(10,2) NOT NULL,
    dept_id INT,
	FOREIGN KEY (dept_id) REFERENCES departments(id)
    );

INSERT INTO departments (id, dept_name) VALUES 
(101, 'Engineering'),
(102, 'Finance'),
(103, 'Human Resources'),
(104, 'Marketing');

INSERT INTO employees (id, name, salary, dept_id) VALUES
(1, 'Swayam', 50000, 101),
(2, 'Sanchit', 70000, 101),
(3, 'Vedant', 80000, 102),
(4, 'Kritika', 55000, 103),
(5, 'Ishita', 90000, 104);

SELECT name, dept_id  FROM employees;
SELECT id, name, salary AS monthly_salary FROM employees;
SELECT name, (salary + salary/10) AS revised_salary FROM employees;

SELECT name, salary 
FROM employees
WHERE salary < 60000;

SELECT name, dept_id 
FROM employees
WHERE (dept_id NOT IN (101));

SELECT name, dept_id 
FROM employees
WHERE name LIKE '%a';

SELECT name, salary 
FROM employees
WHERE salary BETWEEN 55000 AND 85000;

SELECT name, salary 
FROM employees
WHERE dept_id IS NULL;
    