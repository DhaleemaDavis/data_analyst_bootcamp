# GROUP BY Clause


SELECT gender
FROM parks_and_recreation.employee_demographics
GROUP BY gender;


SELECT gender,
AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

SELECT gender,
AVG(age),
MIN(age),
MAX(age),
COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;



SELECT occupation ,
AVG(salary)
FROM parks_and_recreation.employee_salary
GROUP BY occupation;

SELECT occupation ,
COUNT(salary)
FROM parks_and_recreation.employee_salary
GROUP BY occupation;


# ORDER BY

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age ASC;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY 5, 4;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age, gender;
