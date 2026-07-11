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

-- Problem 1: Select employee names
-- Task:
-- Write a SQL query that displays only the names
-- of all employees from the employees table.
--
-- Expected output:
-- Alice
-- Bob
-- Charlie
-- David
-- Emma

SELECT name
FROM employees;

-- Problem 2: Filter employees by department
-- Task:
-- Write a SQL query that displays all employees
-- who work in the Accounting department.

SELECT name
FROM employees
WHERE department = 'Accounting';

-- Problem 3: Filter employees by salary
-- Task:
-- Write a SQL query that displays all employees
-- whose salary is greater than or equal to 70000.

SELECT name
FROM employees
WHERE salary >= 70000;

-- Problem 4: Filter employees by department and salary
-- Task:
-- Write a SQL query that displays employees
-- who work in the Accounting department
-- and have a salary greater than 60000.

SELECT name
FROM employees
WHERE department = 'Accounting' AND salary >= 60000;

-- Problem 5: Filter employees by multiple departments
-- Task:
-- Write a SQL query that displays all employees
-- who work in the Accounting or IT department.

SELECT name
FROM employees
WHERE department = 'Accounting' OR department = 'IT';
