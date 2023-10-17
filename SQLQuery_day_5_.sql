create database assignment001;
use assignment001;
create table tbl_Employees (
EmployeeID  INT Primary Key, 
FirstName varchar(25), 
LastName varchar(25), 
DepartmentID INT);

create table tbl_Departments (
DepartmentID INT Primary Key, 
DepartmentName varchar(25));


create table tbl_Order (
OrderID INT Primary Key, 
CustomerId INT,
OrderDate Date
);

create table tbl_OrdersDetails(
OrderDetailID INT Primary Key, 
OrderId INT,
ProductID INT,
Quantity INT
);




select * from tbl_Order;

create table tbl_Products(
ProductID INT Primary Key,
ProductName varchar(25),
UnitPrice INT
);

INSERT INTO tbl_Employees(EmployeeID , FirstName, LastName , DepartmentID) VALUES
(001,'utkarsh','srivastava',1206),(002,'prince','kumar',1205),(003,'ajay','bohra',1204),
(004,'akshat','kumar',1204),(005,'yash','behl',1202),(006,'govind','sharma',1201);


INSERT INTO tbl_Departments(DepartmentID, DepartmentName)VALUES
(1206,'DOTNET'),(1205,'DOTNET'),
(1204,'DOTNET'),(1203,'DOTNET'),
(1202,'DOTNET'),(1201,'DOTNET');

INSERT INTO tbl_Order values(
























