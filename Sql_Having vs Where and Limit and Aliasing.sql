# WHERE V/S HAVING

SELECT gender, 
AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;

SELECT occupation, 
AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000;




##  Limit and Aliasing

SELECT gender, 
AVG(age) AS avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 30;

SELECT gender, 
COUNT(age) AS count_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender;