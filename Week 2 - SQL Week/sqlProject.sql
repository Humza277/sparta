/*Created By Humza Malak*/

-- Exercise 1 - Northwind Queries
-- 1.1 Selects records from Customers where the city is Paris or London
SELECT c.CustomerID, c.CompanyName, CONCAT(c.Address,' ', c.PostalCode , ' ', c.City) AS "Address"
FROM Customers c
WHERE City = 'Paris' OR City = 'London';

-- 1.2 Selects the ProductName and QuantityPerUnit from the Products
-- Using a CHARINDEX on the QuanitiyPerUnit coloumn looking for bottle
SELECT p.ProductName, p.QuantityPerUnit
FROM Products p
WHERE p.QuantityPerUnit LIKE '%bottle%';

-- 1.3 Added an Inner Join so that the CompanyName and Country can
-- be added to the results table
SELECT p.ProductName, p.QuantityPerUnit, s.CompanyName, s.Country
FROM Products p
INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE  QuantityPerUnit LIKE '%bottle%';

-- 1.4 We are counting how many units there are to calculate
-- how many products there are in each catergory
-- Joining Products and Categories together
-- Setting the Order to be on Product Amount and
-- set the decending largest to smallest
SELECT COUNT(p.UnitsInStock) AS "Product Amount", c.CategoryName
FROM Products p JOIN Categories c
ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName
ORDER BY "Product Amount" DESC;

-- 1.5 Concat the title, first and last name together,
-- with the city, from Employees
SELECT CONCAT(e.TitleOfCourtesy, e.FirstName,' ', e.LastName) AS " Employees", e.City
FROM Employees e
WHERE e.Country = 'UK';

-- 1.6 To calculate Total Sales you need to times UnitPrice * quantity minus the discount
-- Four Joins needed to get from territories to OrderDetails
-- A having clause is needed in order to make sure the results are above 1,000,000
-- Rounding is needed on the SUM to make sure the amount is formatted correctly
SELECT t.RegionID, FORMAT(SUM((od.UnitPrice * od.Quantity) * (1-od.Discount)), 'C') AS "Sales"
FROM Territories t
INNER JOIN EmployeeTerritories et ON  t.TerritoryID = et.TerritoryID
INNER JOIN Employees e ON et.EmployeeID = e.EmployeeID
INNER JOIN Orders o ON o.EmployeeID = e.EmployeeID
INNER JOIN [Order Details] od ON o.OrderID = od.OrderID
GROUP BY t.RegionID
HAVING SUM((od.UnitPrice * od.Quantity) * (1-od.Discount)) > 1000000
ORDER BY t.RegionID ASC;

-- 1.7 Counting the amount of freight from Orders
-- Where the amount is greater than 100
-- And the shipping country is either USA or UK
SELECT COUNT(o.Freight) AS 'Freight Count' FROM Orders o
WHERE o.Freight > 100.00
AND (o.ShipCountry = 'USA' OR o.ShipCountry = 'UK');

-- 1.8 I Used Top 1 however checking through the table I found out
-- there is another discount with the same amount so I changed it to Top 2
SELECT TOP 1 od.OrderID,
    ROUND(SUM((od.Quantity * od.UnitPrice) * od.Discount ), 2) AS "Amount Discount"
FROM [Order Details] od
GROUP BY od.OrderID
ORDER BY [Amount Discount] DESC;

-- Exercise 2 - Create Spartans Table
-- 2.1 Code below creates database and the the Spartans table
CREATE DATABASE spartaexe
USE spartaexe

Create table spartan_table
(
    EmployeeID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Title varchar(12) NOT NULL,
    FirstName varchar(50) NOT NULL,
    LastName varchar(50) NOT NULL,
    University VARCHAR(40) DEFAULT NULL,
    Course VARCHAR(40) DEFAULT NULL,
    Grade VARCHAR(5) DEFAULT NULL,
);

-- 2.2 Adds data into the Spartans table
INSERT INTO spartan_table(Title, FirstName,
LastName, University, Course, Grade)
VALUES
('Mr', 'Humza', 'Malak', 'University of Kent', 'Computer Science','2:2'),
('Miss','Georgina', 'Bartlett', 'Newcastle University', 'Archaeology','2:1'),
('Mr', 'Ibrahim', 'Bocus', 'University of Leicester', 'Mechanical Engineering','2:1'),
('Mr', 'Bari', 'Allali', 'Lancaster University', 'Business Economics','2:1'),
('Mr', 'Mehdi', 'Shamaa', 'University of Nottingham', 'Philosophy and Economics','2:2'),
('Miss', 'Anais', 'Tang', 'Edinburgh University', 'Modern Languages','2:1'),
('Mr', 'Saheed', 'Lamina', 'University of Warwick', 'Politics and International Studies','2:1'),
('Mr', 'Man-Wai', 'Tse', 'University of Hertfordshire', 'Aerospace Engineering ','2:1'),
('Mr', 'Sohaib ', 'Sohail', 'Brunel University London', 'Communications and Media Studies','2:1'),
('Miss', 'Ugne', 'Okmanaite', 'Aston University', 'International Business & Management ','2:1'),
('Mr', 'John', 'Byrne', 'University of Greenwich', 'Computing with Games development','2:1'),
('Mr', 'Daniel', 'Teegan', 'University of Brighton', 'Product Design','2:2'),
('Mr', 'Max ', 'Palmer', 'University of Birmingham', 'Ancient History','2:1'),
('Mr', 'Andrew ', 'Osbourne', 'University of Porthsmouth', 'BioMedical Science','2:1'),
('Mr', 'Sohaib ', 'Sohail', 'Brunel University', 'Media and Communication','2:1');

SELECT * FROM spartan_table;

-- Exercise 3 - Northwind Data Analysis
-- 3.1 Using a self join here to link the manager to the employee
USE NorthWind
SELECT e.EmployeeID, CONCAT(e.FirstName,' ', e.LastName) AS "Name of Employee",
       e.ReportsTo, CONCAT(em.FirstName,' ', em.LastName) AS "Manager"
FROM Employees e, Employees em
WHERE e.ReportsTo = em.EmployeeID OR em.EmployeeID = 2 AND em.EmployeeID = NULL;

-- 3.2  Getting the total sales you need to times UnitPrice * quantity minus the discount
-- Need to have 2 Joins in order to get data from Order Details
-- The Having clause makes it so that only results that are greater than $10,000
-- are displayed
SELECT s.SupplierID, s.CompanyName AS "Company Name",
    ROUND(SUM((od.UnitPrice * od.Quantity)*(1-od.Discount)),2) AS "Total sales"
FROM Suppliers s
INNER JOIN Products p ON p.SupplierID = s.SupplierID
INNER JOIN [Order Details] od ON od.ProductID = p.ProductID
GROUP BY s.SupplierID, s.CompanyName
HAVING SUM((od.UnitPrice * od.Quantity)*(1-od.Discount)) > 10000
ORDER BY 'Total sales' DESC;

-- 3.3 SELECT the Top 10 company names, and the shipping dates,
-- need two Joins on Customer to get to Order Detail
-- The Having clause gets the top year from shipping date
-- Ordered By the Total value
SELECT TOP 10 c.CustomerID AS "CustomerID", c.CompanyName AS "Company Name",
    FORMAT(SUM(od.UnitPrice * od.Quantity *(1-od.Discount)), 'C')
    AS "Total Value"
FROM Customers c
    INNER JOIN Orders o ON o.CustomerID = c.CustomerID
    INNER JOIN [Order Details] od ON od.OrderID = o.OrderID
    WHERE YEAR(OrderDate) = (SELECT MAX(YEAR(OrderDate)) FROM Orders)
AND o.ShippedDate IS NOT NULL
GROUP BY c.CustomerID, c.CompanyName
ORDER BY SUM(od.UnitPrice * od.Quantity *(1-od.Discount)) DESC;

-- 3.4 This Concats the Month and year of each records dates
-- I get the average of the diffretns between the order date
-- and the shipped date and set is as an decimal for easy reading
-- Where has the not Null clause to remove orders that weren't sent
-- Ordered by the month and year
SELECT
     CONCAT(sq1.MonthName,' ', sq1.YearOrdered) "Date Ordered"
    ,AVG("ShipTimePerproductindays") "AverageShipTimePerproductindays"
FROM
        (SELECT
             DATEDIFF(d,o.orderdate,o.ShippedDate) "ShipTimePerproductindays"
            ,MONTH(o.OrderDate) "MonthOrdered"
            ,YEAR(o.orderdate) "YearOrdered"
            ,DateName(MONTH,DATEADD(MONTH,MONTH(o.orderdate) , 0 ) - 1 ) "MonthName"
        FROM
            Orders o) sq1
GROUP BY
     sq1.YearOrdered
    ,sq1.MonthName
    ,sq1.MonthOrdered
ORDER BY
     CONVERT(datetime, CONCAT(sq1.YearOrdered,'/',sq1.MonthOrdered,'/','1'))