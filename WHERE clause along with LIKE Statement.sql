# WHERE CLAUSE
# using WHERE clause with different comparison operator


SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender = 'female' ;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE age >= 50 ;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary = 50000 ;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary <= 50000 ;

# using WHERE clause with different comparison operator and logical operator

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary <= 50000
AND first_name = 'Tom' ;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary <= 50000
OR first_name = 'Ron' ;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (gender = 'Male' AND birth_date > '1985-11-01') OR last_name = 'Knope' ;


# LIKE statement
# % and _

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name 
LIKE 'Jer%'  ;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name 
LIKE '%er%'  ;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name 
LIKE 'a%'  ;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name 
LIKE 'a__'  ;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name 
LIKE 'a___'  ;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE last_name 
LIKE '%er__%'  ;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE last_name 
LIKE '%er'  ;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date
LIKE '1989%'  ;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date
LIKE '198%'  ;