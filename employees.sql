DROP TABLE employees;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50) not null,
    department VARCHAR(50),
    salary INT check(salary > 0),
    email varchar(50) unique,
    city VARCHAR(50) default "Bangalore"
);
INSERT INTO employees (id, name, department, salary, city, email)
VALUES (1, 'Alice', 'Sales', 50000, 'Bangalore', 'alice@example.com');

INSERT INTO employees (id, name, department, salary, city, email)
VALUES (2, 'Bob', 'HR', 45000, 'Chennai', 'bob@example.com');

INSERT INTO employees (id, name, department, salary, city, email)
VALUES (3, 'Charlie', 'Sales', 55000, 'Bangalore', 'charlie@example.com');

INSERT INTO employees (id, name, department, salary,  email)
VALUES (4, 'David', 'IT', 60000, 'david@example.com');

INSERT INTO employees (id, name, department, salary, city, email)
VALUES (5, 'Eva', 'IT', 62000, 'Chennai', 'eva@example.com');


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


-- Update the department of the employee named "Eva" to 'Marketing'
UPDATE employees
set department  = 'Marketing'
where id = 5;

select * 
from employees;

-- Increase the salary by 5000 for all employees in the 'IT' department.
update employees
set salary = 50000
where id in (4,5 );

select * 
from employees;

-- Update the city to 'Hyderabad' for the employee whose email is 'charlie@example.com'
update employees
set city  =  'Hyderabad'
where email = 'charlie@example.com';

-- Delete the employee whose name is 'Bob' from the employees table.
delete from employees
where name = 'Bob';

-- Add a new column called joining_date to the employees table. It should be of type DATE.
alter table employees
add joining_date date ;

describe employees;


-- Update the joining_date for 'Alice' to '2023-05-01'.
update EMPLOYEES
SET joining_date = '2023-05-01'
WHERE NAME = 'Alice';
SELECT *
FROM EMPLOYEES;

-- Remove the email column from the employees table.
ALTER TABLE  EMPLOYEES
DROP column EMAIL;

SELECT *
FROM EMPLOYEES;

-- Change the data type of the salary column from INT to DECIMAL(10,2)
ALTER TABLE EMPLOYEES
MODIFY COLUMN SALARY DECIMAL(10, 2);

-- Drop the entire employees table from the database.
DROP TABLE EMPLOYEES;

-- Count the number of employees in each department
select department ,count(*)
from employees
group by department;

-- Find the average salary of employees in each department.
select  department, avg(salary) as avg_salary
from employees
group by department;

-- Find the total salary paid for each department (use SUM).
select department , sum(salary) as sum_salary
from employees
group by department;

select *
from employees;

-- Find the number of employees in each city using COUNT.
select city , count(city) as num_employees
from employees
group by city;

-- Find the highest and lowest salary in each department.
SELECT department, MAX(salary) AS max_salary, MIN(salary) AS min_salary
FROM employees
GROUP BY department;

-- Show the number of employees in each department who earn more than 50,000.
select department ,count(*) as num_employees
from employees
where salary > 50000
group by department;

-- Show the number of employees in each city who work in the IT department.
select city , count(*) as location
from employees 
where department = 'IT'
group by city;

-- Find the total salary paid to employees in each city, but only include cities where the total salary is more than 1,00,000
select city , sum(salary) as salary_to_city
from employees
group by city
having sum(salary) > 100000;

-- Find the average salary of employees in each department, but only show departments where the average salary is less than 55,000.
select department ,avg(salary) as avg_salary
from employees
group by department
having avg(salary) < 55000;

-- Display each department along with the highest and lowest salary in that department.
select department , max(salary) as M_salary, min(salary) as m_salary
from employees
group by department;

-- Show each department that has more than one employee, along with the number of employees in that department.
select department , count(*) as emp_in_dep
from employees
group by department
having count(*) > 1;