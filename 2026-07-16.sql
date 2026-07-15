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

-- Problem 1: Show departments with at least 2 employees
-- Task:
-- Write a SQL query that displays each department
-- and the number of employees in that department.
-- Only include departments that have 2 or more employees.

SELECT department, COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) >= 2;

-- Problem 2: Show departments with an average salary
-- of at least 70000
--
-- Task:
-- Write a SQL query that displays each department
-- and its average salary.
-- Only include departments whose average salary
-- is greater than or equal to 70000.

SELECT department, AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) >= 70000;

-- Problem 3: Show departments with a total salary
-- of at least 140000
--
-- Task:
-- Write a SQL query that displays each department
-- and its total salary.
-- Only include departments whose total salary
-- is greater than or equal to 140000.

SELECT department, SUM(salary)
FROM employees
GROUP BY department
HAVING SUM(salary) >= 140000;

-- Problem 4: Show departments with a highest salary
-- of at least 75000
--
-- Task:
-- Write a SQL query that displays each department
-- and its highest salary.
-- Only include departments whose highest salary
-- is greater than or equal to 75000.

SELECT department, MAX(salary)
FROM employees
GROUP BY department
HAVING MAX(salary) >= 75000;

-- Problem 5: Show departments with a lowest salary
-- of at least 60000
--
-- Task:
-- Write a SQL query that displays each department
-- and its lowest salary.
-- Only include departments whose lowest salary
-- is greater than or equal to 60000.

SELECT department, MIN(salary)
FROM employees
GROUP BY department
HAVING MIN(salary) >= 60000;
