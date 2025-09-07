SELECT
	*
FROM
	STUDENTS;


-- Create the users table
CREATE TABLE IF NOT EXISTS users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    age INT,
    city VARCHAR(50)
);


SELECT * FROM users;

-- Insert 5 sample users into the users table

INSERT INTO USERS (USERNAME,EMAIL, AGE,CITY)
VALUES ('Rajesh', 'rajesh@gmail.com', 25, 'Mumbai'),
				('Priya', 'priya@yahoo.com', 30, 'Delhi'),
				('Ankit', 'ankit@gmail.com', 28, 'Bangalore'),
				('Sneha', 'sneha@hotmail.com', 35, 'Pune'),
				('Vikram', 'vikram@gmail.com', 22, 'Hyderabad');


SELECT USERNAME,
	CITY
FROM USERS;

UPDATE users 
SET age=28
WHERE username='Rajesh';

SELECT * FROM users ;

SELECT *
FROM USERS
ORDER BY USER_ID ASC;


alter table users
rename to customers;

-- table name update 
select*from users;

select*from customers
order by user_id asc;



