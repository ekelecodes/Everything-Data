-- CTE

with cte_example as (
select gender, avg(salary) avg_sal, max(salary) max_sal, min(salary) min_sal, count(salary) count_sal
from employee_demographics dem
	join employee_salary sal
	on dem.employee_id = sal.employee_id
group by gender
)
select avg(avg_sal) as avg_salary
from cte_example
;



with cte_example as (
select employee_id, gender, birth_date
from employee_demographics
	where birth_date > '1985-01-01'
),
cte_example2 as (
select employee_id, salary
from employee_salary)
select *
from cte_example
join cte_example2
	on cte_example.employee_id = cte_example2.employee_id
;

with cte_example (Gender, Avg_salary, Max_salary, Min_salary, Count_salary) as (
select gender, avg(salary) avg_sal, max(salary) max_sal, min(salary) min_sal, count(salary) count_sal
from employee_demographics dem
	join employee_salary sal
	on dem.employee_id = sal.employee_id
group by gender
)
select *
from cte_example
;





