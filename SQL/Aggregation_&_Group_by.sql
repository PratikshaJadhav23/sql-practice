-- -- -- -- Aggregation & GROUP BY -- -- -- --
use Practice1;
select * from employees_data;

-- Count number of employees in each department.
select department , 
count(*) 
from employees_data 
group by department;

-- Count number of employees in each city.
select city , 
count(*) 
from employees_data 
group by city ;

-- Count number of employees for each order_status.
select order_status , 
count(*) 
from employees_data 
group by order_status;

-- Count number of employees for each product_purchased.
select product_purchased , 
count(*) 
from employees_data 
group by product_purchased ;

-- Count employees based on rating.
select rating , 
count(*) 
from employees_data 
group by rating;

-- Find total salary for each department.
select department , 
sum(salary) as total_salary 
from employees_data 
group by department;

-- Find total purchase_amount for each city.
select city , 
sum(purchase_amount) as total_amount 
from employees_data 
group by city;

-- Find total bonus given in each department.
select department , 
sum(bonus) 
from employees_data 
group by department;

-- Find total purchase_amount for each product.
select product_purchased , 
sum(purchase_amount) 
from employees_data 
group by product_purchased; 

-- Find total tax collected per city.
select city , 
sum(tax_percent) 
from employees_data 
group by city;

-- Find average salary in each department.
select department , 
avg(salary) 
from employees_data 
group by department;

-- Find average age per department.
select department , 
avg(age) 
from employees_data 
group by department;

-- Find average performance_score per department.
select department , 
avg(performance_score) 
from employees_data 
group by department;

-- Find average purchase_amount per product.
select product_purchased , 
avg(purchase_amount) 
from employees_data 
group by product_purchased;

-- Find average rating per city.
select city , 
avg(rating) 
from employees_data 
group by city;

-- Find highest salary in each department.
select department ,
max(salary) 
from employees_data 
group by department ; 

-- Find lowest salary in each department.
select department  , 
min(salary) 
from employees_data 
group by department; 

-- Find maximum purchase_amount per product.
select product_purchased ,
 max(purchase_amount)
 from employees_data 
group by product_purchased;

-- Find minimum purchase_amount per product.
select product_purchased,
min(purchase_amount) 
from employees_data 
group by product_purchased;

-- Find highest performance_score per department.
select department ,
 max(performance_score) 
from employees_data 
group by department;

-- For each department, find:
-- total employees
-- average salary
-- max salary
select department , 
count(*) as total_emp, 
avg(salary) as avg_salary, 
max(salary) as highest_salary
from employees_data 
group by department;

-- For each city, find:
-- total purchase_amount
-- average purchase_amount
select city , 
sum(purchase_amount) as total_amount,
avg(purchase_amount) as avg_amount 
from employees_data
group by city;

-- For each product:
-- total orders
-- average rating
select product_purchased,
count(*) as total_orders,
avg(rating) as avg_rating
from employees_data 
group by product_purchased;

-- Find departments having more than 500 employees.
select department,
count(*) as emp_count
from employees_data
group by department
having emp_count > 500;

-- Find cities where total purchase_amount > 5000000.
select city ,
sum(purchase_amount) as total_amount 
from employees_data
group by city
having total_amount > 5000000;

-- Find products with average rating > 3.
select product_purchased , 
avg(rating) as avg_rating
from employees_data
group by product_purchased 
having avg_rating > 3;

-- Find departments with average salary > 40000.
select department , 
avg(salary) as avg_salary
from employees_data
group by department 
having avg_salary > 40000;

-- Find cities with more than 2500 employees.
select city ,
count(*) as emp_count
from employees_data
group by city 
having emp_count > 2500;

-- Find top 3 departments by total salary.
select department ,
sum(salary) as total_salary
from employees_data
group by department
order by total_salary desc 
limit 3;

-- Find city with highest total purchase_amount.
select city,
sum(purchased_amount) as total_amount
from employees_data
group by city
order by total_amount desc 
limit 1;

-- Find most purchased product.
select product_purchased  ,
count(*) as product_count
from employees_data 
group by product_purchased
order by product_count desc 
limit 1;

-- Find department with highest average performance_score.
select department,
round(avg(performance_score),2) as high_score
from employees_data
group by department
order by high_score desc
limit 1;

-- Find product with lowest average rating.
select product_purchased ,
round(avg(rating),3) as avg_rating 
from employees_data
group by product_purchased
order by avg_rating 
limit 1;

-- Find department with lowest employee count.
select department,
count(*) as emp_count 
from employees_data
group by department
order by emp_count asc
limit 1;

-- Find average tax_percent per department.
select department ,
round(avg(tax_percent),2) as avg_percent
from employees_data 
group by department;