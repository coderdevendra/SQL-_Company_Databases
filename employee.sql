create table employee(
	employee_id int primary key,
	name varchar(100) not null,
	position varchar(50),
	department varchar(60),
	hire_date date,
	salary numeric(10,2)
)

SELECT * FROM employee;
insert into employee(employee_id,name,position,department,hire_date,salary)
	values(1,'Devendra Panchal','Data Analyst','Data science','2025-05-15',65000.00),
		(2,'Lalit','software eng.','IT','2023-05-22',60000.00),
		(3,'Arpit','software eng.','IT','2022-3-12',45000.00),
		(4,'Manmohan','developer','IT','2024-12-13',45000.00);
		


select*from employee;


