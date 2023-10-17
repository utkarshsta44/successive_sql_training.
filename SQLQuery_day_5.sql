
select * from tbl_Order;



1. select FirstName,LastName from tbl_Employees;

2.SELECT DepartmentName, COUNT(*)
  FROM tbl_Departments
  GROUP BY DepartmentName;


3.SELECT * FROM tbl_Departments 
WHERE DepartmentID  NOT IN (select DepartmentID FROM tbl_Departments);


4.select * from tbl_Employees where EmployeeID = (select max(EmployeeID) from tbl_Employees);

5.SELECT AVG(Quantity) AS average
   FROM tbl_OrdersDetails;

6.SELECT DISTINCT e.FirstName, e.LastName
FROM tbl_Employees e
INNER JOIN tbl_Order o ON e.EmployeeID = o.CustomerId;

7.
SELECT YEAR(OrderDate) AS Year, COUNT(OrderID) AS TotalOrders
FROM tbl_Order
GROUP BY YEAR(OrderDate);


8.SELECT ProductName
FROM tbl_Products
WHERE ProductID NOT IN (SELECT DISTINCT ProductID FROM tbl_OrdersDetails);

9.SELECT e.FirstName, e.LastName
FROM tbl_Employees e
INNER JOIN tbl_Departments d ON e.FirstName = d.DepartmentName;

10.SELECT OrderID, SUM(UnitPrice * Quantity) AS TotalPrice
FROM tbl_OrdersDetails o  inner join tbl_Products p on o.ProductID=p.ProductID
GROUP BY OrderID;


11.SELECT CustomerID, SUM(UnitPrice * Quantity) AS TotalValue
FROM tbl_Order o INNER JOIN tbl_OrdersDetails od ON o.OrderID = od.OrderId inner join tbl_Products p on p.ProductID=od.OrderId;
--GROUP BY CustomerID
--ORDER BY TotalValue DESC;

12.

13.



15.SELECT o.OrderID, SUM(p.UnitPrice * od.Quantity) AS TotalPrice
FROM tbl_Order o
INNER JOIN tbl_OrdersDetails od ON o.OrderID = od.OrderID
INNER JOIN tbl_Products p ON od.ProductID = p.ProductID
GROUP BY o.OrderID
ORDER BY TotalPrice DESC ;





















