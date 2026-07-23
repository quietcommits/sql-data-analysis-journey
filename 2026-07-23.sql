CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT,
    department TEXT,
    manager TEXT
);

INSERT INTO employees (name, department, manager)
VALUES
('Alice', 'Accounting', 'David'),
('Bob', 'IT', 'David'),
('Charlie', 'Sales', 'Emma'),
('David', 'Accounting', NULL),
('Emma', 'Marketing', NULL);

-- Problem 1: Show employees
-- who do not have a manager.
--
-- Task:
-- Write a SQL query that displays
-- the employee's name and manager.
-- Use IS NULL.

SELECT name, manager
FROM employees
WHERE manager IS NULL;

-- Problem 2: Show employees
-- who have a manager.
--
-- Task:
-- Write a SQL query that displays
-- the employee's name and manager.
-- Use IS NOT NULL.

SELECT name, manager
FROM employees
WHERE manager IS NOT NULL;

-- Problem 3: Show employees who:
-- - work in the Accounting department
-- - and have a manager.
--
-- Task:
-- Write a SQL query that displays
-- the employee's name,
-- department,
-- and manager.
-- Use IS NOT NULL.

SELECT name, department, manager
FROM employees
WHERE department = 'Accounting'
  AND manager IS NOT NULL;

-- Problem 4: Show employees who:
-- - do NOT have a manager
-- - or work in the IT department.
--
-- Task:
-- Write a SQL query that displays
-- the employee's name,
-- department,
-- and manager.
-- Sort the results by name.

SELECT name, department, manager
FROM employees
WHERE manager IS NULL OR department = 'IT'
ORDER BY name;

-- Problem 5: Show employees who:
-- - have a manager
-- - are NOT in the Sales department.
--
-- Task:
-- Write a SQL query that displays
-- the employee's name,
-- department,
-- and manager.
-- Sort the results by department.

SELECT name, department, manager
FROM employees
WHERE manager IS NOT NULL
  AND department != 'Sales'
ORDER BY department;
