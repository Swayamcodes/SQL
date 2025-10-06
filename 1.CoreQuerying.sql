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

SELECT name 
FROM employees
ORDER BY name ASC;

SELECT name, salary 
FROM employees
ORDER BY salary DESC;

SELECT TOP 2 name, salary 
FROM employees
ORDER BY salary DESC;

SELECT name, dept_id 
FROM employees
ORDER BY dept_id ASC, name DESC;

SELECT name, salary 
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 2;

SELECT COUNT(*) AS total_employees
FROM employees; 

SELECT ROUND(AVG(salary), 2) as avg_salary
FROM employees; 

SELECT MAX(salary), MIN(salary) 
FROM employees
LIMIT 1;
    
SELECT SUM(salary) 
FROM employees
WHERE dept_id IN (101, 102);

SELECT COUNT(DISTINCT dept_id)
FROM employees;