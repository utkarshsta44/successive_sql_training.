select * from student;

create table fee
( id INT,
receipt_number INT)

insert into fee values(1,001);
insert into fee values(2,002);
insert into fee values(3,003);
insert into fee values(4,004);
insert into fee values(5,005);
insert into fee values(6,006);
insert into fee values(7,007);

select * from fee;

--JOINS:

--self join:
select * from student s1,student s2;

--inner join:

SELECT fee.id, Student.emp_Name  
FROM Student  
INNER JOIN Fee  
ON Student.id = Fee.id; 
 


--outer join:

SELECT fee.id, Student.emp_Name  
FROM Student  
JOIN Fee  
ON Student.id = Fee.id; 


--left join:

SELECT fee.id, Student.emp_Name  
FROM Student  
LEFT JOIN Fee  
ON Student.id = Fee.id; 


--right join:

SELECT fee.id, Student.emp_Name  
FROM Student  
RIGHT JOIN Fee  
ON Student.id = Fee.id; 

--cartisian product:

SELECT fee.id, Student.emp_Name  
FROM Student  
CROSS JOIN Fee  
--ON Student.id = Fee.id; 








