-- Where Clause
-- Logical operator
select *
from employee_salary
where first_name like 'les%';


select *
from employee_salary
where salary <= 50000;

select *
from employee_demographics
where gender != 'female';

select * 
from employee_demographics
where birth_date > '1985-01-01';

-- AND OR NOT -- Logical operators

select * 
from employee_demographics
where birth_date > '1985-01-01'
and gender = 'male';

select * 
from employee_demographics
where (first_name = 'leslie' and age = 44) or age > 50
;
-- LIKE STATEMENT
-- % and _
select * 
from employee_demographics
where first_name like 'a%'
;

select * 
from employee_demographics
where first_name like 'a__%'
;