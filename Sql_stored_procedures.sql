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

# we are going to create maultiple queries for storing

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


call highest_salary();


# we can store the procedure by right clicking hte stored procedure, then click create stored procedure
call new_procedure();



# parameters are variables passed as input into stored procedure
# similar to creating fun with argument in python
# here while creating procedure we while provide the parameter and stype for the parameter too

delimiter $$   
create procedure  highest_salary1(p_employee_id int)
begin
	select salary
	from parks_and_recreation.employee_salary
	where employee_id = p_employee_id;
end $$

call highest_salary1(1)
