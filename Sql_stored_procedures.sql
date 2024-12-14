########## Stored Procedures ##########
# Saving the procedure, so that if we need it again; we can just call them
# helpfully while storing complex queries

#  query
select *
from parks_and_recreation.employee_salary
where salary <= 50000;

# creating stored procedure
create procedure  small_salary()
select *
from parks_and_recreation.employee_salary
where salary <= 50000;

# calling the stored procedure
call small_salary();

# changing the delimiter from';' to '$'
delimiter $$   
create procedure  highest_salary()
begin
	select *
	from parks_and_recreation.employee_salary
	where salary >= 50000;
	select *
	from parks_and_recreation.employee_salary
	where salary >= 25000;
end $$
# we have to end with the changed delimiter
delimiter ;
# changing the delimiter again back to ';'


call highest_salary()