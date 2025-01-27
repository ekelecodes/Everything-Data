-- Stored Procedure
select *
from employee_salary;


create procedure large_salary1()
select *
from employee_salary
where salary > 50000;

call large_salary1();

delimiter $$
create procedure large_salary2()
begin 
	select *
	from employee_salary
	where salary > 50000;
	select *
	from employee_salary
	where salary > 10000;
end $$
delimiter ;

call large_salary2()



delimiter $$
create procedure large_salary4(employee_id int)
begin 
	select salary
	from employee_salary
    where employee_id = employee_id;
end $$
delimiter ;

call large_salary4()