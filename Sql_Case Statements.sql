# CASE STATEMENTS

SELECT first_name, last_name,
CASE WHEN age < 30 
THEN 'Young'
END 
FROM parks_and_recreation.employee_demographics;


SELECT first_name, last_name, age,
CASE 
	WHEN age < 30 THEN 'Young'
    WHEN age BETWEEN 30 AND 50 THEN 'Middle-aged'
    WHEN age >= 50 THEN 'Old'
END AS Age_bracket
FROM parks_and_recreation.employee_demographics;


# < 50000 - 5%
# > 50000 - 7%
# Finance - 10%

SELECT first_name, last_name, salary, dept_id,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05)
    WHEN salary > 50000 THEN salary + (salary * 0.07)
END AS new_salary,
CASE
 WHEN dept_id = 6 THEN (salary * 0.10)
END AS bonus
FROM parks_and_recreation.employee_salary;


select *
from parks_and_recreation.parks_departments