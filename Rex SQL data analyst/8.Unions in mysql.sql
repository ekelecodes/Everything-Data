-- Unions

select *
from employee_demographics
union
select *
from employee_salary;

select first_name, last_name
from employee_demographics
union 
select first_name, last_name
from employee_salary;

select first_name, last_name
from employee_demographics
union all
select first_name, last_name
from employee_salary;

select first_name, last_name, 'Old Man' as label
from employee_demographics
where age > 40 and gender = 'male'
union 
select first_name, last_name, 'Old Lady' as label
from employee_demographics
where age > 40 and gender = 'female'
union
select first_name, last_name, 'Over Paid' as label
from employee_salary
where salary > 65000
order by first_name
;

