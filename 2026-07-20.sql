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

-- Problem 1: Show employees who work
-- in the Accounting department
-- and have a salary of at least 70000.
--
-- Task:
-- Write a SQL query that displays
-- the employee's name, department,
-- and salary.

SELECT name, department, salary
FROM employees
WHERE department = 'Accounting' and salary >= 70000;

-- Problem 2: Show employees who work
-- in the Accounting department
-- or the IT department.
--
-- Task:
-- Write a SQL query that displays
-- the employee's name, department,
-- and salary.
-- Sort the results by salary
-- from highest to lowest.

SELECT name, department, salary
FROM employees
WHERE department = 'Accounting' OR department = 'IT'
ORDER BY salary DESC;

-- Problem 3: Show employees whose names
-- start with 'A' or end with 'e'.
--
-- Task:
-- Write a SQL query that displays
-- employee names only.

SELECT name
FROM employees
WHERE name LIKE 'A%' OR name LIKE '%e';

-- Problem 4: Show employees who:
-- - work in the Accounting department
-- - and whose names start with 'A'.
--
-- Task:
-- Write a SQL query that displays
-- the employee's name, department,
-- and salary.

SELECT name, department, salary
FROM employees
WHERE department = 'Accounting' AND name LIKE 'A%';

-- Problem 5: Show employees who:
-- - have a salary of at least 60000
-- - and whose names contain the letter 'a'.
--
-- Task:
-- Write a SQL query that displays
-- the employee's name and salary.
-- Sort the results by salary
-- from highest to lowest.

SELECT name, salary
FROM employees
WHERE salary >= 60000 AND name LIKE '%a%'
ORDER BY salary DESC;
