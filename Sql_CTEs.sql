#####  CTEs #######
# Using Common Table Expressions (CTE)
# A CTE allows you to define a subquery block that can be referenced within the main query. 
# It is particularly useful for recursive queries or queries that require referencing a higher level
# this is something we will look at in the next lesson/

# Let's take a look at the basics of writing a CTE:
# -- First, CTEs start using a "With" Keyword. Now we get to name this CTE anything we want
# -- Then we say as and within the parenthesis we build our subquery/table we want
select gender,
avg(salary),
min(salary),
max(salary),
count(salary)
from parks_and_recreation.employee_demographics as dem
join parks_and_recreation.employee_salary as sal
on dem.employee_id = sal.employee_id
group by gender;


## define CTEs for the above query

with CTE_Example as (
select gender,
avg(salary) as average,
min(salary) as minimum,
max(salary) as maximum,
count(salary) as counted
from parks_and_recreation.employee_demographics as dem
join parks_and_recreation.employee_salary as sal
on dem.employee_id = sal.employee_id
group by gender)
select *
from CTE_Example;


#### for getting the avg of the average


with CTE_Example as (
select gender, avg(salary) as average, min(salary) as minimum, max(salary) as maximum, count(salary) as counted
from parks_and_recreation.employee_demographics as dem
join parks_and_recreation.employee_salary as sal
on dem.employee_id = sal.employee_id
group by gender)
select avg(average), avg(minimum), avg(maximum)
from CTE_Example;



### joining 2 CTE examples

with CTE_Example as (
select employee_id, gender, birth_date
from parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'),
CTE_Example1 as(
select employee_id, salary
from parks_and_recreation.employee_salary
where salary > 50000 )
select *
from CTE_Example
join CTE_Example1
on CTE_Example.employee_id = CTE_Example1.employee_id
;


