# window function


SELECT *
FROM parks_and_recreation.employee_demographics;


# average salary by gender
SELECT gender, AVG(salary) avg_salary
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id =  sal.employee_id
GROUP BY gender;

#by using over()

SELECT gender, AVG(salary) OVER()      # Without partition by gender
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id =  sal.employee_id
;



SELECT gender, AVG(salary) OVER(PARTITION BY gender)     # With partition by gender
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id =  sal.employee_id
;


SELECT dem.first_name, dem.last_name,
gender, AVG(salary) OVER(PARTITION BY gender)     # Will not after the avg salary column because of window function used.
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id =  sal.employee_id
;



# sum of salary paritioned by gender

SELECT  dem.first_name, dem.last_name, gender,
SUM(salary) OVER(PARTITION BY gender) avg_salary
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id =  sal.employee_id
;

# for finding the rolling total of salary with partition by gender

SELECT  dem.first_name, dem.last_name, gender,
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) rolling_total
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id =  sal.employee_id;
    

# for finding the rolling total of salary without any partition

SELECT  dem.first_name, dem.last_name, gender,
SUM(salary) OVER( ORDER BY dem.employee_id) rolling_total
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id =  sal.employee_id;
    
    
    
# for adding row number

SELECT *
FROM parks_and_recreation.employee_demographics AS dem
JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id;