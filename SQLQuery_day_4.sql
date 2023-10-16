use test001;
select * from student;


--creating views:
CREATE VIEW [our employee] AS
SELECT Emp_Name, city
FROM student

-- showing data from views:
SELECT  * from [our employee]


-- creating procedures:
CREATE PROCEDURE SelectAllCustomers
AS
SELECT * FROM student
GO;

--executing the procedures:
EXEC SelectAllCustomers;


CREATE TABLE Employee  
(  
  Id INT PRIMARY KEY,  
  Name VARCHAR(45),  
  Salary INT,  
  Gender VARCHAR(12),  
  DepartmentId INT  
)  

INSERT INTO Employee VALUES (1,'Steffan', 82000, 'Male', 3),  
(2,'Amelie', 52000, 'Female', 2),  
(3,'Antonio', 25000, 'male', 1),  
(4,'Marco', 47000, 'Male', 2),  
(5,'Eliana', 46000, 'Female', 3)  


SELECT * FROM Employee

CREATE TABLE Employee_Audit_Test  
(    
Id int IDENTITY,   
Audit_Action text   
)  


CREATE TRIGGER test001.info
ON Employee
AFTER {INSERT | UPDATE | DELETE}  
AS  
   BEGIN  
      -- Trigger Statements  
      -- Insert, Update, Or Delete Statements  
   END  

--FUNCTIONS :
CREATE FUNCTION east_or_west (
	@long DECIMAL(9,6)
)
RETURNS CHAR(4) AS
BEGIN
	DECLARE @return_value CHAR(4);
	SET @return_value = 'same';
    IF (@long > 0.00) SET @return_value = 'east';
    IF (@long < 0.00) SET @return_value = 'west';
 
    RETURN @return_value
END;






























