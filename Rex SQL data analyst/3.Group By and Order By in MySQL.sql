-- Group By

select *
from employee_demographics
;

select gender, avg
from employee_demographics
group by gender
;

select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender
;

select occupation, salary
from employee_salary
group by occupation, salary
;

-- ORDER BY
select *
from employee_demographics
order by gender, age desc;