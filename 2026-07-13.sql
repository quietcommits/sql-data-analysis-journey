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

-- Problem 1: Display the first three employees
-- Task:
-- Write a SQL query that displays the employee
-- name and salary for the first three employees.

SELECT name, salary
FROM employees
LIMIT 3;

-- Problem 2: Display the top two highest-paid employees
-- Task:
-- Write a SQL query that displays the employee
-- name and salary for the two highest-paid
-- employees.

SELECT name, salary
FROM employees
ORDER BY salary DESC
LIMIT 2;

-- Problem 3: Display the two lowest-paid employees
-- Task:
-- Write a SQL query that displays the employee
-- name and salary for the two lowest-paid
-- employees.

SELECT name, salary
FROM employees
ORDER BY salary
LIMIT 2;

-- Problem 4: Display unique departments
-- Task:
-- Write a SQL query that displays each department
-- only once.

SELECT DISTINCT department
FROM employees;

-- Problem 5: Display unique departments in alphabetical order
-- Task:
-- Write a SQL query that displays each department
-- only once, sorted in alphabetical order.

SELECT DISTINCT department
FROM employees
ORDER BY department;
