-- PART 1: Basic Data Exploration (25 Questions)
use practice1;

SELECT * FROM employees_data;

-- Show all records from the dataset.
select * 
from employees_data;
-- Display only employee names and their departments.
select name , department 
from employees_data;
-- Show employee_id, name, and salary.
select employee_id , name , salary 
from employees_data;
-- Display all columns for employees from a specific city.
select * 
from employees_data 
where city = 'Pune';
-- Show employee_id, product_purchased, and purchase_amount.
select employee_id , product_purchased , purchase_amount 
from employees_data;
-- Display name, age, and city.
select name , age, city 
from employees_data;
-- Show department and salary.
select department , salary 
from employess_data;
-- Display product_purchased and order_status.
select product_purchased , order_status 
from employees_data;
-- Show rating and performance_score.
select rating , performance_score 
from employees_data;
-- Display bonus and tax_percent.
select bonus , tax_percent 
from employees_data;
-- Show employees sorted by salary (low → high).
select name , salary 
from employees_data 
order by salary;
-- Show employees sorted by salary (high → low).
select name , salary 
from employees_data 
order by salary;
-- Sort employees by age (ascending).
select name , age 
from employees_data 
order by age;
-- Sort employees by experience_years (descending).
select name , experience_years 
from employees_data 
order by experience_years desc;
-- Sort employees by performance_score (highest first).
select name , performance_score as ps 
from employees_data 
order by ps desc;
-- Show unique departments.
select distinct department 
from employees_data ;
-- Show unique cities.
select distinct city 
from employees_data ;
-- Show unique products purchased.
select distinct product_purchased 
from employees_data ;
-- Show unique order_status values.
select distinct order_status 
from employees_data;
-- Show unique ratings.
select distinct rating 
from employees_data ;
-- Count total number of employees.
select count(name) 
from employees_data;
-- Count total number of distinct departments.
select count(distinct department) as total_number 
from employees_data;
-- Find maximum salary.
select max(salary) 
from employees_data;
-- Find minimum salary.
select min(salary) 
from employees_data;
-- Count total number of orders.
select count(*) 
from employees_data ;
-- Show first 5 employees.
select name 
from employees_data 
limit 5;
-- Show top 5 highest-paid employees.
select name , (salary) as highest_paid 
from employees_data 
order by highest_paid desc 
limit 5;
-- Show top 5 lowest-paid employees.
select name , salary 
from employees_data 
order by  salary 
limit 5; 
-- Show top 3 highest purchase_amount records.
select product_purchased , purchase_amount 
from employees_data 
order by purchase_amount desc 
limit 3;
-- Show last 5 records (based on employee_id).
select employee_id , name 
from employees_data 
order by employee_id desc 
limit 5;
-- Find number of employees in each department (basic idea).
select department , count(name) as emp_count 
from employees_data 
group by department;
-- Check how many employees have NULL rating.
select count(*) as null_rating 
from employees_data 
where rating = 'null';
-- Find how many orders are completed.
select count(*) as complete_orders 
from employees_data 
where order_status = 'Completed';
-- Find how many employees have bonus > 2000.
select count(*) 
from employees_data 
where bonus>2000;
-- Count how many employees are from each city.
select city, count(*) as emp_count 
from employees_data 
group by city;