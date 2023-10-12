

--CREATING DATABASE:
create database test001;

--USING DATABASE:
use test001;


--CREATING TABLE:
create table student
(
id INT,
emp_Name varchar(25),
city varchar(25)
)
--VALUE INSERTING INTO THE TABLE :


Insert into student values(01,'Utkarsh','dwarka');
Insert into student values(02,'Ajay','Palam');
Insert into student values(01,'Prince','Dwarka mor');
Insert into student values(03,'Govind','Sultanpuri');
Insert into student values(04,'Akshat','Hauz khas');
Insert into student values(05,'Yash','Noida');

--SHOWING ALL  RECORDS

select * from student;

--SOME MATHEMATICAL FUNCTIONS

SELECT Abs(-243.5) AS AbsNum;
select max(id)as largest from student;
select min(id) as smallest  from student;
select avg(id) as average  from student;
select sum(id)  as sum from student;
select count(id)as count from student;
SELECT FLOOR(25.75) AS FloorValue;


--SOME TRIGONOMETRIC FUNCTIONS 

SELECT ACOS(0.25) AS COS_VALUE ;
SELECT ASIN(0.25) AS SIN_VALUE;
SELECT ATAN(0.25)  AS TAN_VALUE;


--ALTER AND UPDATE 

alter table student add phone_number varchar(20);
update student set id='3' where emp_Name='Prince';


--SOME STRING FUNCTIONS 

SELECT CHAR(65) AS CodeToCharacter;
SELECT ASCII(emp_Name) AS character_to_number
FROM student;
select concat('utkarsh ', 'srivastava') as complete_name;
select datalength('utkarshsrivastava')  as lengthofdata; 
SELECT DIFFERENCE('utkarsh', 'srivastava') as differenceisinASCII;
SELECT LEN('utkarshsrivastava    ')as lengthofdata;
SELECT LOWER('UTKARSH SRIVASTAVA')as lowercasedata;
SELECT LTRIM('     AMAN SRIVASTAVA       ') AS LEFTTRIMMED;
SELECT RTRIM('     AMAN SRIVASTAVA           ') AS rightTRIMMED;
SELECT TRIM('     AMAN SRIVASTAVA        ') AS TRIMMED;
select REPLACE('Atkarsh_srivastava','a','U');
SELECT UPPER('utkarsh');
select reverse('nama');
select substring('mysql',1,3);




















