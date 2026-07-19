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

-- Problem 1: Show employees whose names
-- start with the letter 'A'.
--
-- Task:
-- Write a SQL query that displays
-- the names of employees whose names
-- begin with 'A'.

SELECT name
FROM employees
WHERE name LIKE 'A%';

-- Problem 2: Show employees whose names
-- end with the letter 'e'.
--
-- Task:
-- Write a SQL query that displays
-- the names of employees whose names
-- end with 'e'.

SELECT name
FROM employees
WHERE name LIKE '%e';

-- Problem 3: Show employees whose names
-- contain the letter 'a'.
--
-- Task:
-- Write a SQL query that displays
-- the names of employees whose names
-- contain the letter 'a' anywhere.

SELECT name
FROM employees
WHERE name LIKE '%a%';

-- Problem 4: Show employees whose names
-- have 'a' as the second letter.
--
-- Task:
-- Write a SQL query that displays
-- the names of employees whose second
-- letter is 'a'.

SELECT name
FROM employees
WHERE name LIKE '_a%';

-- Problem 5: Show employees whose names
-- are exactly 5 letters long.
--
-- Task:
-- Write a SQL query that displays
-- the names of employees whose names
-- contain exactly 5 characters.

SELECT name
FROM employees
WHERE name LIKE '_____';
