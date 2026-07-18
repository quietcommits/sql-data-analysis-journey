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

-- Problem 1: Show employees with a salary
-- of at least 60000.
-- Display their names and salaries.
-- Sort the results by salary
-- from highest to lowest.
--
-- Task:
-- Write a SQL query that displays the name
-- and salary of employees whose salary
-- is greater than or equal to 60000.
-- Order the results by salary in descending order.

SELECT name, salary
FROM employees
WHERE salary >= 60000
ORDER BY salary DESC;

-- Problem 2: Show the average salary
-- for each department.
-- Only include employees whose salary
-- is at least 60000.
-- Rename the average salary column
-- to "average_salary".
-- Sort the results by average salary
-- from highest to lowest.
--
-- Task:
-- Write a SQL query that:
-- - filters employees with salary >= 60000
-- - groups by department
-- - displays the average salary of each department
-- - renames the average salary column to "average_salary"
-- - orders the results by average_salary in descending order

SELECT department, AVG(salary) AS average_salary
FROM employees
WHERE salary >= 60000
GROUP BY department
ORDER BY average_salary DESC;

-- Problem 3: Show departments whose average salary
-- is at least 65000.
--
-- Task:
-- Write a SQL query that:
-- - groups employees by department
-- - displays the department and average salary
-- - renames the average salary column to "average_salary"
-- - only includes departments whose average salary
--   is greater than or equal to 65000
-- - sorts the results by average_salary
--   from highest to lowest

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) >= 65000
ORDER BY average_salary DESC;

-- Problem 4: Show departments with at least 1 employee
-- whose salary is 60000 or higher.
--
-- Task:
-- Write a SQL query that:
-- - filters employees with salary >= 60000
-- - groups by department
-- - displays the department and the number of employees
-- - renames the count column to "employee_count"
-- - only includes departments with at least 1 employee
-- - sorts the results by employee_count in descending order

SELECT department, count(*) AS employee_count
FROM employees
WHERE salary >= 60000
GROUP BY department
HAVING count(*) >= 1
ORDER BY employee_count DESC;

-- Problem 5: Show departments whose total salary
-- is at least 100000.
--
-- Task:
-- Write a SQL query that:
-- - groups employees by department
-- - displays the department and total salary
-- - renames the total salary column to "total_salary"
-- - only includes departments whose total salary
--   is greater than or equal to 100000
-- - sorts the results by total_salary
--   from highest to lowest

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) >= 100000
ORDER BY total_salary DESC;
