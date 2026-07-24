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

-- Problem 1: Show each employee's
-- name and salary.
--
-- Add a new column called salary_level.
--
-- Rules:
-- salary >= 70000 → 'High'
-- otherwise → 'Normal'
--
-- Use CASE WHEN.

SELECT 
    name, salary, CASE
        WHEN salary >= 70000 THEN 'High'
        ELSE 'Normal'
    END AS salary_level
FROM employees;

-- Problem 2: Show each employee's
-- name and salary.
--
-- Add a new column called salary_level.
--
-- Rules:
-- salary >= 70000 → 'High'
-- salary >= 60000 → 'Medium'
-- otherwise → 'Low'
--
-- Use CASE WHEN.

SELECT name, salary,
    CASE
        WHEN salary >= 70000 THEN 'High'
        WHEN salary >= 60000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_level
FROM employees;

-- Problem 3: Show each employee's
-- name, department, and salary.
--
-- Add a new column called department_group.
--
-- Rules:
-- Accounting → 'Finance'
-- IT → 'Technology'
-- All other departments → 'Other'
--
-- Use CASE WHEN.

SELECT name, department, salary,
    CASE
        WHEN department = 'Accounting' THEN 'Finance'
        WHEN department = 'IT' THEN 'Technology'
        ELSE 'Other'
    END AS department_group
FROM employees;

-- Problem 4: Show each employee's
-- name and salary.
--
-- Add a new column called bonus.
--
-- Rules:
-- salary >= 70000 → 'Yes'
-- otherwise → 'No'
--
-- Sort the results by salary
-- from highest to lowest.

SELECT name, salary,
    CASE
        WHEN salary >= 70000 THEN 'Yes'
        ELSE 'No'
    END AS bonus
FROM employees
ORDER BY salary DESC;

-- Problem 5: Show each employee's
-- name, department, and salary.
--
-- Add a new column called status.
--
-- Rules:
-- Accounting → 'Finance Team'
-- Sales → 'Sales Team'
-- All other departments → 'General Team'
--
-- Sort the results by name.

SELECT name, department, salary,
    CASE
        WHEN department = 'Accounting' THEN 'Finance Team'
        WHEN department = 'Sales' THEN 'Sales Team'
        ELSE 'General Team'
    END AS status
FROM employees
ORDER BY name;
