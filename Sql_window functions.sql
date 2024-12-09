######  window function  ######


SELECT *
FROM parks_and_recreation.employee_demographics;


###### average salary by gender

SELECT gender, AVG(salary) as avg_salary
FROM parks_and_recreation.employee_demographics as dem
JOIN parks_and_recreation.employee_salary as sal
	ON dem.employee_id =  sal.employee_id
GROUP BY gender;

#by using over()

SELECT gender, AVG(salary) OVER()      # Without partition by gender
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id =  sal.employee_id
;   # avg salary to the entire column



SELECT gender, AVG(salary) OVER(PARTITION BY gender)     # With partition by gender
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id =  sal.employee_id
;    # filtered and calculated based on gender


SELECT dem.first_name, dem.last_name,
gender, AVG(salary) OVER(PARTITION BY gender)     # Will not affect the avg salary column because of window function used.
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

# for finding the rolling total of salary with partition by gender -- similar to cumulation

SELECT  dem.first_name, dem.last_name, gender,
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) as rolling_total
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id =  sal.employee_id;
    

# for finding the rolling total of salary without any partition

SELECT  dem.first_name, dem.last_name, gender,
SUM(salary) OVER( ORDER BY dem.employee_id) as rolling_total
FROM parks_and_recreation.employee_demographics as dem
JOIN parks_and_recreation.employee_salary as sal
	ON dem.employee_id =  sal.employee_id;
    
    
    
# for adding row number

SELECT dem.first_name,
dem.last_name,
dem.gender,
sal.salary,
ROW_NUMBER() over(PARTITION BY gender order by salary desc) as row_num,
RANK() over(PARTITION BY gender order by salary desc) as rank_num,
dense_rank() over(PARTITION BY gender order by salary desc) as den_ran_num
FROM parks_and_recreation.employee_demographics AS dem
JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
