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
-- in either the Accounting or IT department.
--
-- Task:
-- Write a SQL query that displays
-- the employee's name and department.
-- Use the IN operator.

SELECT name, department
FROM employees
WHERE department IN ('Accounting', 'IT');

-- Problem 2: Show employees whose salary
-- is between 60000 and 75000 (inclusive).
--
-- Task:
-- Write a SQL query that displays
-- the employee's name and salary.
-- Use the BETWEEN operator.
-- Sort the results by salary
-- from highest to lowest.

SELECT name, salary
FROM employees
WHERE salary BETWEEN 60000 AND 75000
ORDER BY salary DESC;

-- Problem 3: Show employees who:
-- - work in the Accounting or Marketing department
-- - and have a salary between 60000 and 70000.
--
-- Task:
-- Write a SQL query that displays
-- the employee's name, department,
-- and salary.
-- Use both IN and BETWEEN.

SELECT name, department, salary
FROM employees
WHERE department IN ('Accounting', 'Marketing')
  AND salary BETWEEN 60000 AND 70000;

-- Problem 4: Show employees who:
-- - work in the IT or Sales department
-- - or have a salary greater than 75000.
--
-- Task:
-- Write a SQL query that displays
-- the employee's name, department,
-- and salary.
-- Sort the results by salary
-- from highest to lowest.

SELECT name, department, salary
FROM employees
WHERE department IN ('IT', 'Sales')
  OR salary > 75000
ORDER BY salary DESC;

-- Problem 5: Show employees who:
-- - work in Accounting, IT, or Marketing
-- - and have a salary between 60000 and 80000.
--
-- Task:
-- Write a SQL query that displays
-- the employee's name,
-- department,
-- and salary.
-- Use both IN and BETWEEN.
-- Sort the results by salary
-- from highest to lowest.

SELECT name, department, salary
FROM employees
WHERE department IN ('Accounting', 'IT', 'Marketing')
  AND salary BETWEEN 60000 and 80000
ORDER BY salary DESC;
