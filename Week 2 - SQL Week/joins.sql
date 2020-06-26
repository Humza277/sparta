/*Created by Humza Malak*/

SELECT table_catalog [database], table_schema [schema], table_name [name], table_type [type]
FROM INFORMATION_SCHEMA.TABLES
GO

SELECT * from Customers
SELECT * from Orders
SELECT * from Suppliers

--Inner Join
SELECT Orders.OrderID, Customers.ContactName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
ORDER BY Customers.ContactName;

--Left Join
SELECT Customers.ContactName, Orders.OrderID
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.ContactName;

--Rigth Join
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Employees.LastName;

--Full Outer Join 
SELECT Customers.ContactName, Orders.OrderID, Customers.City , Orders.RequiredDate, Orders.ShipAddress
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.ContactName;


--Self Join 
SELECT A.ContactTitle AS CustomerName1, B.ContactTitle AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;


SELECT o.customerID, o.employeeID, b.ShipCity, b.CustomerID
FROM orders o, orders b
WHERE o.customerID = b.CustomerID;
 
--Cross join
SELECT * 
FROM Orders o 
CROSS JOIN customers c;
 
SELECT
COUNT(o.CustomerID)
FROM orders o
 
SELECT
COUNT(o.CustomerID)
FROM Customers o

--Using Agreagte functions
SELECT s.CompanyName AS "Supplier Name",  AVG(p.UnitsOnOrder) AS "Average UnitsOnOrder"
FROM Suppliers s  
INNER JOIN Products p 
ON p.SupplierID = s.SupplierID
GROUP BY s.SupplierID, s.CompanyName
ORDER BY "Average UnitsOnOrder" DESC 

--Multiple table Joins
SELECT o.OrderID, o.OrderDate, o.Freight, 
    c.CompanyName AS "Company Name",
    CONCAT(e.FirstName, e.LastName) AS "Employee Name"
FROM Orders o 
JOIN Employees e ON e.EmployeeID = o.EmployeeID
JOIN Customers c ON c.CustomerID = o.CustomerID
ORDER BY CompanyName
