-- Create Employees4 Table
CREATE TABLE Employees4 (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
);

-- Insert Data into Employees
INSERT INTO Employees4 (first_name, last_name, department_id)
VALUES
('Rahul', 'Sharma', 101),
('Priya', 'Mehta', 102),
('Ankit', 'Verma', 103),
('Simran', 'Kaur', NULL),
('Aman', 'Singh', 101);
 
select * from Employees4;


-- Create Departments Table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Insert Data into Departments
INSERT INTO Departments (department_id, department_name)
VALUES
(101, 'Sales'),
(102, 'Marketing'),
(103, 'IT'),
(104, 'HR');


SELECT * FROM Departments;

--INNER JOIN

SELECT e.employee_id, e.first_name, e.last_name, 
		d.department_id, d.department_name 
FROM Employees4 e 
INNER JOIN
Departments d
ON e.department_id=d.department_id;

-- LEFT JOIN

SELECT e.employee_id, e.first_name, e.last_name, 
		d.department_id, d.department_name 
FROM Employees4 e 
LEFT JOIN
Departments d
ON e.department_id=d.department_id;

--RIGHT JOIN


SELECT e.employee_id, e.first_name, e.last_name, 
		d.department_id, d.department_name 
FROM Employees4 e 
RIGHT JOIN
Departments d
ON e.department_id=d.department_id;


--Full outer join

SELECT e.employee_id, e.first_name, e.last_name, 
		d.department_id, d.department_name 
FROM Employees4 e 
FULL OUTER JOIN
Departments d
ON e.department_id=d.department_id;



--CROSS JOIN

SELECT e.first_name, e.last_name, d.department_name
FROM Employees4 e 
CROSS JOIN
	Departments d;

-- SELF JOIN



SELECT e1.first_name AS Employee_name1,
	   e2.first_name AS Employee_name2,
	   d.department_name
FROM Employees4 e1 JOIN Employees4 e2
ON e1.department_id=e2.department_id AND e1.employee_id!=e2.employee_id
JOIN 
departments d
ON	
e1.department_id=d.department_id;




