# subqueries

select *
from parks_and_recreation.employee_demographics;
select *
from parks_and_recreation.employee_salary;


# printing the information of employees in dept. 1
select *
from parks_and_recreation.employee_demographics
where employee_id in 
				(select employee_id
                from parks_and_recreation.employee_salary
                where dept_id = 1)
;