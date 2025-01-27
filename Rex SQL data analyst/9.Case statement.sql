select first_name, last_name, age,
case
	when age <= 30 then 'young'
    when age between 31 and 50 then 'old'
    when age >= 50 then 'retired'
End as Label
from employee_demographics;



-- pay income & bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- finance dept = 10% bonus
select last_name, first_name,concat(first_name, '  ', last_name) as full_name, salary,
case
	when salary < 50000 then salary + (salary * 5/100)
    when salary > 50000 then salary + (salary * 7/100)
end as new_salary,
case
	when dept_id = 6 then salary + (salary * 10/100)
end as bonuses
from employee_salary;


select *
from employee_salary;
select *
from parks_departments;