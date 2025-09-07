select*from employee3;
-- Q.9 Using NOT operator.

SELECT
	*
FROM
	EMPLOYEE3
WHERE
	NOT (DEPARTMENT = 'IT');
	
-- Q.10 Retrieve employees whose salary 
-- is between 40,000 and 60,000

SELECT
	FIRST_NAME,
	LAST_NAME,
	SALARY
FROM
	EMPLOYEE3
WHERE
	SALARY BETWEEN 40000 AND 60000;

-- Q.11 Find employees whose email addresses
-- end with gmail.com using like operator.

SELECT
	FIRST_NAME, department
FROM
	EMPLOYEE3
WHERE
	first_name LIKE '%a';


-- Q.12 Retrieve employees who belong to either 
-- the 'Finance' or 'Marketing' departments
-- using in operator.


select first_name , last_name, department
from employee3
where department in ('Finance','Marketing');



-- Q.13 Find employees where the age column 
-- is NULL (if applicable).

SELECT
	FIRST_NAME,
	LAST_NAME,
	age
FROM
	EMPLOYEE3
WHERE
	age IS NULL;


-- Q.14 List employees sorted by salary
-- in descending order

SELECT
	FIRST_NAME,
	LAST_NAME,
	SALARY
FROM
	EMPLOYEE3
ORDER BY
	SALARY DESC;


-- Q.15 Retrieve the top 5 highest-paid
-- employees.
SELECT
	FIRST_NAME,
	LAST_NAME,
	SALARY
FROM
	EMPLOYEE3
ORDER BY
	SALARY DESC
LIMIT
	5;

-- Q.16 Retrieve a list of unique departments

select distinct department  as dep_unique_count
from employee3;






































