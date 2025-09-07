create table student_2023(
	student_id int primary key,
	student_name varchar(100),
	course varchar(50)
);

select*from student_2023;

insert into student_2023
values(1,'Aarav sharma','computer science'),
(2,'Ishita verma','mechanical eng.'),
(3,'Kabir patel','electronics'),
(4,'Ananya desai','civil eng.'),
(5,'Rahul gupta','computer science');


create table student_2024
(student_id int primary key,
student_name varchar(100),
course varchar(50)
);

insert into student_2024
values(3,'Kabir patel','electronics'),
(4,'Ananya desai','civil eng.'),
(6,'Meera rao','computer science'),
(7,'Vikram singh','mathematics'),
(8,'Somya kapoor','physics');


select*from student_2024;


-- Q.1 union - combine result, remove duplicates.

SELECT
	STUDENT_NAME,
	COURSE
FROM
	STUDENT_2023
UNION
SELECT
	STUDENT_NAME,
	COURSE
FROM
	STUDENT_2024;



-- Q.2 union all - combine result, keep duplicates.

SELECT
	STUDENT_NAME,
	COURSE
FROM
	STUDENT_2023
UNION ALL
SELECT
	STUDENT_NAME,
	COURSE
FROM
	STUDENT_2024;

-- Q.3 intersect - return common result in both tables

SELECT
	STUDENT_NAME,
	COURSE
FROM
	STUDENT_2023
INTERSECT
SELECT
	STUDENT_NAME,
	COURSE
FROM
	STUDENT_2024;

-- Q.4 Except - return results in the first
-- table but not 


SELECT
	STUDENT_NAME,
	COURSE
FROM
	STUDENT_2023
EXCEPT
SELECT
	STUDENT_NAME,
	COURSE
FROM
	STUDENT_2024;

















































































































