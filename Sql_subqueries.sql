############ subqueries  ##############

select *
from parks_and_recreation.employee_demographics;
select *
from parks_and_recreation.employee_salary;

# subquery using where clause
# printing the information of employees from employee_demograohics who are working in dept. 1
select *
from parks_and_recreation.employee_demographics
where employee_id in 
				(select employee_id
                from parks_and_recreation.employee_salary
                where dept_id = 1)
;


# using select statement
# comparing the individual salary with the average salary


select first_name, salary, avg(salary)
from parks_and_recreation.employee_salary
group by first_name, last_name, salary
;  # not the correct result for the question

select first_name, salary,
(select avg(salary)
from parks_and_recreation.employee_salary)   # for getting avg salary
from parks_and_recreation.employee_salary;  


# subquerying in from statement

select gender, avg(age), min(age), max(age), count(age)
from parks_and_recreation.employee_demographics
group by gender;

select gender, avg(`max(age)`)
from
(select gender, avg(age), 
min(age) min_age,
max(age), 
count(age)
from parks_and_recreation.employee_demographics
group by gender) as agg_table
group by gender;

select  avg(`max(age)`)
from
(select gender, avg(age), 
min(age) min_age,
max(age), 
count(age)
from parks_and_recreation.employee_demographics
group by gender) as agg_table
;



SELECT *
FROM (SELECT gender, MIN(age), MAX(age), COUNT(age),AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender) as agg_ta;


SELECT gender, AVG(Min_age)
FROM (SELECT gender, 
MIN(age) Min_age, 
MAX(age) Max_age, 
COUNT(age) Count_age ,
AVG(age) Avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender) AS Agg_Table
GROUP BY gender;
