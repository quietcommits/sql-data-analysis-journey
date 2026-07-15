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

-- Problem 1: High earners list
-- Task:
-- Write a SQL query that selects the name and salary 
-- of all employees who earn MORE THAN 65,000.
--
-- Print name and salary.

SELECT name, salary
FROM employees
WHERE salary > 65000;

-- Problem 2: Find employees in IT department
-- Task:
-- Write a SQL query that selects all columns (*) 
-- for employees who work in the 'IT' department.
--
-- Print all columns.

SELECT *
FROM employees
WHERE department = 'IT';

-- Problem 3: Count employees with high salaries
-- Task:
-- Write a SQL query that counts the total number of 
-- employees who earn 70,000 or more.
--
-- Print the count.

SELECT COUNT(name)
FROM employees
WHERE salary >= 70000;

-- Problem 4: Sort employees by salary (Highest first)
-- Task:
-- Write a SQL query that selects the name and salary 
-- of all employees, sorted by salary in DESCENDING order (highest to lowest).
--
-- Print name and salary.

SELECT name, salary
FROM employees
ORDER BY salary DESC;

-- Problem 5: Find the highest salary in Accounting
-- Task:
-- Write a SQL query that finds the highest (MAX) salary 
-- among employees who work in the 'Accounting' department.
--
-- Print the highest salary.

SELECT MAX(salary)
FROM employees
WHERE department = 'Accounting';
