# SELECT Statement


SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.employee_salary;

SELECT first_name
FROM parks_and_recreation.employee_demographics;

SELECT first_name, last_name,age
FROM parks_and_recreation.employee_demographics;

SELECT first_name,
last_name,
age
FROM parks_and_recreation.employee_demographics;

SELECT first_name,
last_name,
age,
age+10,
(age + 10) * 10 /2
FROM parks_and_recreation.employee_demographics;


SELECT DISTINCT first_name,
age
FROM parks_and_recreation.employee_demographics;


SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT gender,
age
FROM parks_and_recreation.employee_demographics;
