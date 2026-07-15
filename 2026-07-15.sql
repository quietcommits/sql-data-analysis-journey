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

-- Problem 1: Count employees in each department
-- Task:
-- Write a SQL query that displays each department
-- and the number of employees in that department.

SELECT department, COUNT(name)
FROM employees
GROUP BY department;

-- Problem 2: Find the average salary by department
-- Task:
-- Write a SQL query that displays each department
-- and its average salary.

SELECT department, AVG(salary)
FROM employees
GROUP BY department;

-- Problem 3: Find the total salary by department
-- Task:
-- Write a SQL query that displays each department
-- and the total salary of employees
-- in that department.

SELECT department, SUM(salary)
FROM employees
GROUP BY department;

-- Problem 4: Find the highest salary in each department
-- Task:
-- Write a SQL query that displays each department
-- and the highest salary in that department.

SELECT department, MAX(salary)
FROM employees
GROUP BY department;

-- Problem 5: Find the lowest salary in each department
-- Task:
-- Write a SQL query that displays each department
-- and the lowest salary in that department.

SELECT department, MIN(salary)
FROM employees
GROUP BY department;
