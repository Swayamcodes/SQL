CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(id)
)

INSERT INTO employees (id, name, salary, dept_id) VALUES
(1, 'Alice Johnson', 75000.00, 1),
(2, 'Bob Smith', 60000.00, 2),
(3, 'Charlie Brown', 50000.00, 1),
(4, 'Diana Prince', 80000.00, 3);

UPDATE employees  
SET salary = salary * 1.10  
WHERE dept_id = 1;

DELETE FROM employees  
WHERE id = 2;

