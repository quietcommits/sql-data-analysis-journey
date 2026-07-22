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

-- Problem 1: Show employees who do NOT work
-- in the Accounting department.
--
-- Task:
-- Write a SQL query that displays
-- the employee's name and department.
-- Use NOT IN.

SELECT name, department
FROM employees
WHERE department NOT IN ('Accounting');

-- Problem 2: Show employees whose names
-- do NOT start with the letter 'A'.
--
-- Task:
-- Write a SQL query that displays
-- employee names only.
-- Use NOT LIKE.

SELECT name
FROM employees
WHERE name NOT LIKE 'A%';

-- Problem 3: Show employees whose salary
-- is NOT between 60000 and 75000.
--
-- Task:
-- Write a SQL query that displays
-- the employee's name and salary.
-- Use NOT BETWEEN.
-- Sort the results by salary
-- from highest to lowest.

SELECT name, salary
FROM employees
WHERE salary NOT BETWEEN 60000 AND 75000
ORDER BY salary DESC;

-- Problem 4: Show employees who:
-- - do NOT work in the Sales or Marketing department
-- - and whose names do NOT end with 'e'.
--
-- Task:
-- Write a SQL query that displays
-- the employee's name and department.
-- Use both NOT IN and NOT LIKE.

SELECT name, department
FROM employees
WHERE department NOT IN ('Sales', 'Marketing')
  AND name NOT LIKE '%e';

-- Problem 5: Show employees who:
-- - do NOT work in the IT department
-- - and whose salary is NOT between 60000 and 70000.
--
-- Task:
-- Write a SQL query that displays
-- the employee's name,
-- department,
-- and salary.
-- Sort the results by salary
-- from highest to lowest.

SELECT name, department, salary
FROM employees
WHERE department NOT IN ('IT')
  AND salary NOT BETWEEN 60000 AND 70000
ORDER BY salary DESC;
