-- -- -- -- Filtering & WHERE Clause & Conditions -- -- -- 
use practice1;
select * from employees_data;
-- Find employees with salary > 50000.
select name , salary from employees_data where salary > 50000;
-- Find employees with salary < 40000.
select name , salary from employees_data where salary < 40000;
-- Show employees from city = 'Pune'.
select name from employees_data where city = 'Pune';
-- Find employees working in 'IT' department.
select name from employees_data where department = 'IT';
-- Show employees with experience_years > 5.
select name , experience_years from employees_data where experience_years > 5; 
-- Find employees with salary > 50000 AND experience > 5.
select name , salary , experience_years  from employees_data where salary > 50000 AND experience_years > 5;
-- Find employees from 'Mumbai' AND department = 'HR'.
select name , concat(city ,' & ',department) from employees_data where city = 'Mumbai' and department = 'HR';
-- Show employees with salary < 40000 OR experience < 2.
select name , salary , experience_years from employees_data where salary < 40000 OR experience_years < 2;
-- Find employees in 'IT' OR 'Sales' department.
select name , department from employees_data where department in ('IT','Sales');
-- Show employees with rating > 4 AND performance_score > 4.5.
select name , rating , performance_score from employees_data where rating > 4 AND performance_score > 4.5;
-- Find employees with salary BETWEEN 30000 AND 60000.
select name ,salary from employees_data where salary between 30000 AND 60000;
-- Find employees with age BETWEEN 25 AND 35.
select name , age from employees_data where age between 25 AND 35; 
-- Show employees with experience between 2 and 8 years.
select name , experience_years from employees_data where experience_years between 2 AND 8;
-- Find purchase_amount between 1000 and 5000.
select product_purchased , purchase_amount from employees_data where purchase_amount between 1000 and 5000;
-- Show employees with rating between 3 and 5.
select product_purchased , rating from employees_data where rating between 3 and 5;
-- Find employees whose name starts with 'A'.
select name from employees_data where name like "A%";
-- Find employees whose name ends with 'a'.
select name from employees_data where name like "%a";
-- Find employees whose name contains 'ra'.
select name from employees_data where name like "%ra%";
-- Find products containing 'Laptop'.
select product_purchased from employees_data where product_purchased like "Laptop";
-- Find cities starting with 'M'.
select city from employees_data where city like "M%";
-- Find employees working in ('IT', 'HR', 'Sales').
select name , department from employees_data where department in ('IT','HR','Sales');
-- Show employees from cities ('Pune', 'Mumbai', 'Delhi').
select name , city from employees_data where city in ('Pune','Mumbai','Delhi');
-- Find employees with rating IN (4, 5).
select name , rating from employees_data where rating in (4,5);
-- Show employees with order_status IN ('Completed', 'Pending').
select name , order_status from employees_data where order_status in ('Completed','Pending');
-- Find employees with NULL rating.
select name from employees_data where rating is null;
-- Find employees where bonus IS NOT NULL.
select name from employees_data where salary is not null;
-- Find employees with NULL purchase_amount.
select name from employees_data where purchase_amount is null;
-- Find employees NOT in 'IT' department.
select name from employees_data where department not in ('IT'); 
-- Show employees NOT from 'Pune'.
select name , city from employees_data where city not in ('Pune');
-- Find employees whose rating is NOT 5.
select name , rating from employees_data where rating not in (5);
-- Find high performers (performance_score > 4.5).
select name , performance_score from employees_data where performance_score > 4.5 order by performance_score desc;
-- Find low performers (performance_score < 50).
select name , performance_score from employees_data where performance_score <2.5 order by performance_score; 
-- Find employees with high salary but low rating.
select name , salary , rating from employees_data order by salary desc , rating ;
-- Find employees who purchased high-value products (purchase_amount > 10000).
select name , purchase_amount from employees_data where purchase_amount > 10000 order by purchase_amount;
-- Find employees with experience > 5 but project_count < 3.
select name , experience_years , project_count from employees_data where experience_years > 5 AND project_count < 3;