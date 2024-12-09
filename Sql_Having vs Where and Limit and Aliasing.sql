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

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 2 ;


SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 2 , 1;       ## Limiting ###
  
SELECT gender, 
AVG(age) AS avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 30;               ## aliasing ##

SELECT gender, 
COUNT(age) AS count_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender;
