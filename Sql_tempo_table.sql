############### Temporary Tables  ###############
# Temporary tables are tables that are only visible to the session that created them. 
# They can be used to store intermediate results for complex queries or to manipulate data before inserting it into a permanent table.
# we can create a new temp table from sratch and also a sub temp table from an entire database
### creating a temporary table
create temporary table temp_table1
(first_name varchar(50),
last_name varchar(50),
favorite_film varchar(100));

select *
from temp_table1;
insert into temp_table1
values('Dhaleema ',' Davis', ' Banglore Days');




select *
from parks_and_recreation.employee_salary;



create temporary table salary_over_50k
select *
from parks_and_recreation.employee_salary
where salary >= 50000;

select first_name, last_name, salary
from salary_over_50k;