-- Joins
select * from employee_demographics;

select * from employee_salary; 

select *
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
select dem.employee_id, age, occupation 
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
-- Outter Joint
select *
from employee_demographics as dem
left join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
select *
from employee_demographics as dem
right join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
    
-- Self Join

select *
from employee_salary sal1
join employee_salary sal2
	on sal1.employee_id + 1 = sal2.employee_id
;

select 
sal1.employee_id as emp_santa,
sal1.first_name as first_name_santa,
sal1.last_name as last_name_santa,
sal2.first_name as first_name_emp,
sal2.last_name as last_name_emp
from employee_salary sal1
join employee_salary sal2
	on sal1.employee_id + 1 = sal2.employee_id
;


-- Joining Multiple Tables Togther
select *
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
Join parks_departments as pd
	on sal.dept_id = pd.department_id;
    
select * 
from parks_departments
;
