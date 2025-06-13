DROP TABLE employees;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

INSERT INTO employees (id, name, department, salary, city) VALUES (1, 'Alice', 'Sales', 50000, 'Bangalore');
INSERT INTO employees (id, name, department, salary, city) VALUES (2, 'Bob', 'HR', 45000, 'Chennai');
INSERT INTO employees (id, name, department, salary, city) VALUES (3, 'Charlie', 'Sales', 55000, 'Bangalore');
INSERT INTO employees (id, name, department, salary, city) VALUES (4, 'David', 'IT', 60000, 'Mumbai');
INSERT INTO employees (id, name, department, salary, city) VALUES (5, 'Eva', 'IT', 62000, 'Chennai');

-- return full table 
SELECT * FROM employees;

-- returns the employees who works in IT
select  * 
from employees
where department = 'IT';

-- return city 
select city 
from employees;

-- Show all employee details sorted by salary in descending order
 SELECT *
 FROM employees
 order by salary asc;

-- -- Show all employee details sorted by salary in Ascending order
SELECT * 
 FROM employees
 order by salary desc;
 
 
-- Retrieve the top 2 highest paid employees 
select *
from employees
order by salary desc
limit 2;


-- Show the names and departments of employees who earn more than ₹50,000.
select name, department 
from employees
where salary >50000;

-- Find the names of employees that start with the letter 'A'.
select *
from employees
where name like "a%";

-- Get all employee details where the city ends with 'i'.
select *
from employees
where city like "%i";

-- Show names of employees whose names contain the letters ar (anywhere in the name).
select *
from employees
where name like "%ar%";