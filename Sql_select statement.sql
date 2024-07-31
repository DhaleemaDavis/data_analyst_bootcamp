# SELECT Statement


select*
from parks_and_recreation.employee_demographics;

select*
from parks_and_recreation.employee_salary;

select first_name
from parks_and_recreation.employee_demographics;

select first_name, last_name,age
from parks_and_recreation.employee_demographics;

select first_name,
last_name,
age
from parks_and_recreation.employee_demographics;

select first_name,
last_name,
age,
age+10,
(age + 10) * 10 /2
from parks_and_recreation.employee_demographics;


select distinct first_name,
age
from parks_and_recreation.employee_demographics;


select distinct gender
from parks_and_recreation.employee_demographics;

select distinct gender,
age
from parks_and_recreation.employee_demographics;
