########## string functions ############

# LENGTH

SELECT LENGTH('SKY');

SELECT first_name,
LENGTH(first_name)
FROM parks_and_recreation.employee_demographics
ORDER BY 2;   # the LEN should be atleast 2 characters


# UPPER

SELECT UPPER('Sky');

SELECT first_name,
UPPER(first_name)
FROM parks_and_recreation.employee_demographics;



# TRIM - BOTH LEFT AND RIGHT

SELECT TRIM('       SKY           ');

SELECT LTRIM('       SKY           ');

SELECT RTRIM('       SKY           ');


##################  SUBSTRING  ################

SELECT first_name,
LEFT(first_name,3),
RIGHT(first_name,3),
SUBSTRING(first_name,3,2),
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM parks_and_recreation.employee_demographics;


# REPLACE

SELECT first_name,
REPLACE(first_name,'A','Z')
FROM parks_and_recreation.employee_demographics;

# LOCATE

SELECT LOCATE('A','DHALEEMA');   # position of the Letter

SELECT first_name,
LOCATE('An',first_name)
FROM parks_and_recreation.employee_demographics;

# CONCATENATION 

SELECT first_name, last_name,
CONCAT(first_name,"  ",last_name)
FROM parks_and_recreation.employee_demographics;






