select *
from employee_demographics
order by age desc
limit 2, 1
;

-- Aliasing

select gender, avg(age) as avg_name
from employee_demographics
group by gender
having avg_name > 40
;

select gender, avg(age)  avg_name
from employee_demographics
group by gender
having avg_name > 40
;
