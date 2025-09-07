create table employee2(
	employee_id int primary key,
	name varchar(100) not null,
	position varchar(50),
	department varchar(60),
	hire_date date,
	salary numeric(10,2)
)

SELECT * FROM employee2;
insert into employee2(employee_id,name,position,department,hire_date,salary)
	values(101,'Devendra Panchal','Data Analyst','Data science','2025-05-15',65000.00),
		(102,'Lalit','software eng.','IT','2023-05-22',60000.00),
		(103,'Arpit','software eng.','IT','2022-3-12',45000.00),
		(104,'Manmohan','developer','IT','2024-12-13',45000.00);


truncate table employee restart identity; 

delete from employee2
where employee_id=105;

alter table employee2
drop column salary;



