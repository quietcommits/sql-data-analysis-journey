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

-- Problem 1: Select multiple columns
-- Task:
-- Write a SQL query that displays the employee
-- name and salary for all employees.

SELECT name, salary
FROM employees;

-- Problem 2: Sort employees by salary
-- Task:
-- Write a SQL query that displays the employee
-- name and salary, sorted by salary
-- from lowest to highest.

SELECT name, salary
FROM employees
ORDER BY salary;

-- Problem 3: Sort employees by salary in descending order
-- Task:
-- Write a SQL query that displays the employee
-- name and salary, sorted by salary
-- from highest to lowest.

SELECT name, salary
FROM employees
ORDER BY salary DESC;

-- Problem 4: Filter and sort employees
-- Task:
-- Write a SQL query that displays the employee
-- name and salary for employees whose salary
-- is greater than or equal to 60000.
-- Sort the results by salary from highest to lowest.

SELECT name, salary
FROM employees
WHERE salary >= 60000
ORDER BY salary DESC;

-- Problem 5: Filter, sort, and select multiple conditions
-- Task:
-- Write a SQL query that displays the employee
-- name, department, and salary for employees
-- who work in the Accounting or IT department.
-- Sort the results by salary from highest to lowest.

SELECT name, department, salary
FROM employees
WHERE department = 'Accounting' OR department = 'IT'
ORDER BY salary DESC;
