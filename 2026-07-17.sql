CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT,
    department TEXT,
    salary INTEGER
);

INSERT INTO employees (name, department, salary)
VALUES
('Alice', 'Accounting', 60000),
('Bob', 'IT', 80000),
('Charlie', 'Sales', 55000),
('David', 'Accounting', 75000),
('Emma', 'Marketing', 65000);

-- Problem 1: Display the average salary
-- with the column name "average_salary"
--
-- Task:
-- Write a SQL query that displays the average
-- salary of all employees.
-- Rename the result column to "average_salary".

SELECT AVG(salary) AS average_salary
FROM employees; 

-- Problem 2: Display each employee's name
-- and salary.
-- Rename the salary column to "annual_salary".
--
-- Task:
-- Write a SQL query that displays each employee's
-- name and salary.
-- Rename the salary column to "annual_salary".

SELECT name, salary AS annual_salary
FROM employees;

-- Problem 3: Display each department
-- and the average salary.
-- Rename the average salary column
-- to "average_salary".
--
-- Task:
-- Write a SQL query that displays each department
-- and its average salary.
-- Rename the average salary column
-- to "average_salary".

SELECT department, AVG(salary) as average_salary
FROM employees
GROUP BY department;

-- Problem 4: Display each department
-- and the number of employees.
-- Rename the count column to "employee_count".
--
-- Task:
-- Write a SQL query that displays each department
-- and the number of employees.
-- Rename the count column to "employee_count".

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

-- Problem 5: Display each department
-- and its total salary.
-- Rename the total salary column
-- to "total_salary".
--
-- Task:
-- Write a SQL query that displays each department
-- and its total salary.
-- Rename the total salary column
-- to "total_salary".

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;
