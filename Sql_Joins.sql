# JOINS 
# INNER, OUTER, SELF


# INNER JOIN

SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.employee_salary;

SELECT * 
FROM parks_and_recreation.employee_demographics
INNER JOIN parks_and_recreation.employee_salary
 ON employee_demographics.employee_id = employee_salary.employee_id;

SELECT * 
FROM parks_and_recreation.employee_demographics AS dem    
INNER JOIN parks_and_recreation.employee_salary AS sal
 ON dem.employee_id = sal.employee_id;     # aliasing 'AS'#
 
SELECT dem.employee_id,
dem.first_name,
age,
occupation
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
 ON dem.employee_id = sal.employee_id;
 
 


############  OUTER Joins --- Left and Right joins ################
 
 SELECT * 
FROM parks_and_recreation.employee_demographics AS dem
LEFT JOIN parks_and_recreation.employee_salary AS sal
 ON dem.employee_id = sal.employee_id;
 
 
 SELECT * 
FROM parks_and_recreation.employee_demographics AS dem
RIGHT JOIN parks_and_recreation.employee_salary AS sal
 ON dem.employee_id = sal.employee_id;
 
 ############  SELF Joins    ############### 
 
 
SELECT emp1.first_name,
emp1.last_name,
emp2.first_name,
emp2.last_name
FROM parks_and_recreation.employee_salary AS emp1
JOIN parks_and_recreation.employee_salary AS emp2
 ON emp1.employee_id = emp2.employee_id;
 
SELECT emp1.employee_id AS id_santa,
emp1.first_name AS santa_first_name,
emp1.last_name AS santa_last_name,
emp2.employee_id,
emp2.first_name,
emp2.last_name
FROM parks_and_recreation.employee_salary AS emp1
JOIN parks_and_recreation.employee_salary AS emp2
 ON emp1.employee_id + 1 = emp2.employee_id;
 
 
 
 ########### Joining multiple table together ################
 
 SELECT *
 FROM parks_and_recreation.employee_demographics as dem
 INNER JOIN parks_and_recreation.employee_salary as sal
  ON dem.employee_id = sal.employee_id
INNER JOIN parks_and_recreation.parks_departments as pd
  ON sal.dept_id = pd.department_id ;                  ## JUST LOOK FOR THE COMMON COLUMNS TO JOIN 
 
 
