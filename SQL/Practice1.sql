use practice1;
-- Case Study 1: Company Workforce Overview
-- 1.How many employees are there in the company?
select count(*) from employees_data;
-- 2.What is the average age of employees?
select avg(age) from employees_data;
-- 3.What is the minimum and maximum salary in the company?
select max(salary) as max_salary , min(salary) as min_salary from employees_data;
-- 4.How many employees work in each department?
select count(department) from employees_data group by department; 
-- 5.Which department has the most employees?
select department ,count(department) as employee_count from employees_data group by department order by employee_count DESC limit 1;


-- Case Study 2: Salary Analysis
-- 1.What is the average salary of employees?
select avg(salary) from employees_data;
-- 2.What is the average salary per department?
select department , avg(salary) from employees_data group by department;
-- 3.Which department has the highest average salary?
select department , max(salary) from employees_data group by department limit 1;
-- 4.Which department has the lowest average salary?
select department , min(salary) from employees_data group by department limit 1;
-- 5.Find employees earning more than the average company salary.
select name,salary,department from employees_data where salary > (select avg(salary) from employees_data);

-- Case Study 3: City-wise Employee Distribution
-- 1.How many employees work in each city?
select city , count(city) from employees_data group by city;
-- 2. Which city has the highest number of employees?
select city , count(city) from employees_data group by city order by count(city) desc limit 1;
-- 3.What is the average salary in each city?
select city , avg(salary) from employees_data group by city ;
-- 4.Which city has the highest average salary?
select city , avg(salary) from employees_data group by city order by avg(salary) desc limit 1;
-- 5.Find cities where average salary > 70000.
select city , avg(salary)  from employees_data where 74000 < (select avg(salary) from employees_data group by city limit 1)  group by city ;

-- Case Study 4: Experience Analysis
-- 1.What is the average experience_years of employees?
select  avg(experience_years) from employees_data;
-- 2.Find employees with experience more than 10 years.
select name , experience_years from employees_data where experience_years > 10; 
-- 3.Find the average salary based on experience_years.
select experience_years , avg(salary) from employees_data group by experience_years order by experience_years desc;
-- 4.Find employees with high experience but low salary.
select name , experience_years , salary from employees_data order by experience_years desc , salary asc;
-- 5.Which department has the most experienced employees?
select department , max(experience_years) from employees_data group by department order by max(experience_years) desc limit 1;

-- Case Study 5: Performance Evaluation
-- 1.What is the average performance_score?
select avg(performance_score) from employees_data;
-- 2.Find employees with performance_score greater than 4.5.
select name ,performance_score from employees_data where performance_score > 4.5; 
-- 3.Find the top 10 employees based on performance_score.
select name , performance_score from employees_data order by performance_score desc limit 10;
-- 4.Find the average performance_score per department.
select department , avg(performance_score) from employees_data group by department;
-- 5.Which department has the highest performing employees?
select department , max(performance_score) as high_score from employees_data group by department order by high_score desc limit 1;

-- Case Study 6: Bonus and Incentives
-- 1.What is the average bonus given to employees?
select avg(bonus) as avg_bonus from employees_data;
-- 2.Which department receives the highest average bonus?
select department , avg(bonus) as avg_bonus from employees_data group by department order by avg_bonus desc limit 1;
-- 3.Find employees with bonus greater than 15000.
select name , bonus from employees_data where bonus > 15000 ;
-- 4.Find employees whose bonus is higher than department average bonus.
select name ,department , bonus from employees_data  e where bonus > (select avg(bonus) from employees_data where department = e.department);
-- 5.What is the total bonus paid by the company?
select sum(bonus) as total_bonus from employees_data ; 

-- Case Study 7: Sales & Purchase Analysis
-- 1.What is the total purchase_amount for each product_purchased?
select * from employees_data;
select product_purchased ,sum(purchase_amount) as total_purchased_amount from employees_data group by product_purchased;
-- 2.Which product generates the highest revenue?
select product_purchased, sum(purchase_amount) as total_revenue from  employees_data  group by product_purchased order by total_revenue desc limit 1;
-- 3.What is the average purchase_amount per product?
select product_purchased,avg(purchase_amount) from employees_data group by product_purchased;
-- 4.Find products purchased more than 1000 times.
select product_purchased , count(product_purchased) as product_count from employees_data group by product_purchased having count(product_purchased) > 1000;
-- 5.Find the top 5 highest purchase transactions.
select purchased_amount from employees_data order by purchased_amount desc limit 5;

-- Case Study 8: Order Status Monitoring
-- 1.Count the number of orders for each order_status.
select order_status , count(*) from employees_data group by order_status;
-- 2.What percentage of orders are completed?
select (count(case when order_status = 'Completed' then 1 end) * 100.0/count(*)) as complete_percentage from employees_data;
-- 3.Which city has the highest number of cancelled orders?
select city , count(*) as cancelled_orders from employees_data where order_status = 'Cancelled' group by city order by cancelled_orders desc limit 1;
-- 4.Which product has the highest returned orders?
select product_purchased , count(*) as return_order from employees_data where order_status = 'Returned' group by product_purchased order by return_order desc limit 1 ;
-- 5.Find employees associated with the most completed orders.
select name , count(*) as completed_order from employees_data where order_status = 'Completed' group by name order by completed_order desc limit 5;