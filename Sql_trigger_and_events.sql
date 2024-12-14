###########  Triggers abd Events #############

# A trigger is block of code that executes automatically when a event takes places on a specific table

select *
from parks_and_recreation.employee_demographics;

select *
 from parks_and_recreation.employee_salary;

# here we need to create a trigger such that when a new employee is appointed, their information should be entered in bith demographics and salary table'
# insertion

delimiter $$
create trigger employee_insert
	after insert on employee_salary
    for each row
begin
	insert into employee_demographics(employee_id,first_name,last_name)
    values(new.employee_id,new.first_name,new.last_name);
end $$
delimiter ;

insert into employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
values(13,"Jeff","Jacob","Entertainer", 100000, null);




##########  Events ############
select *
from parks_and_recreation.employee_demographics;


delimiter $$
create event delete_retirees
on schedule every 30 second
do
begin
	delete 
	from employee_demographics
	where age >= 60;
end $$
delimiter ;
# don't forget to end the query using '$$' if we change the delimiter
#show variables like 'event%'; -- if it is not working we need to turn the event_scheduler to 'ON'
# likewise we need to untick the 'safe Updates' in  SQL editor <-- preferences <-- Edit