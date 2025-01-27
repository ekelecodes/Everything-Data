 -- Subqueries
 
select *
from employee_salary
order by dept_id;
 
select *
from employee_demographics
where employee_id in(
	select employee_id
    from employee_salary
    where dept_id = 1
);


select first_name, last_name,salary,(
select avg(salary)
from employee_salary)
from employee_salary;

select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender;

select gender, avg_age, max_age, min_age, count_age
from (
select gender, 
avg(age) as avg_age, 
max(age) as max_age, 
min(age) as min_age, 
count(age) as count_age
from employee_demographics
group by gender
) as agg_table
;


 
 