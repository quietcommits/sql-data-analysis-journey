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

-- Problem 1: Count all employees
-- Task:
-- Write a SQL query that displays the total
-- number of employees in the employees table.

SELECT COUNT(*)
FROM employees;

-- Problem 2: Find the highest salary
-- Task:
-- Write a SQL query that displays the highest
-- salary in the employees table.

SELECT MAX(salary)
FROM employees;

-- Problem 3: Find the lowest salary
-- Task:
-- Write a SQL query that displays the lowest
-- salary in the employees table.

SELECT MIN(salary)
FROM employees;

-- Problem 4: Find the average salary
-- Task:
-- Write a SQL query that displays the average
-- salary of all employees.

SELECT AVG(salary)
FROM employees;

-- Problem 5: Find the total salary
-- Task:
-- Write a SQL query that displays the total
-- salary of all employees.

SELECT SUM(salary)
FROM employees;
