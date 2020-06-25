SELECT * FROM Customers 
WHERE City = 'Paris'


--table aliasing 
SELECT c.CompanyName, c.City , Country, Region 
FROM Customers c 
WHERE c.Region='BC'

SELECT COUNT(*) FROM Customers WHERE Country='FRANCE'

SELECT  p.ProductName, p.UnitPrice
FROM Products p
WHERE p.CategoryID = 1
And p.Discontinued = 0


SELECT p.ProductName, p.UnitPrice
From Products p  
WHERE p.UnitsInStock > 0
AND p.UnitPrice > 29.99

SELECT DISTINCT c.country
From Customers c 


--% wildcard looks for the letters 
SELECT distinct lower(c.country)
from Customers c where country like 'br%'

--Charlist used here
SELECT distinct c.country
from Customers c where country like '[U%A]'

SELECT distinct c.country
from Customers c 
where country 
like '[U%A]'
ORDER BY  c.country

SELECT distinct c.country
from Customers c 
where country 
like '__A%'
ORDER BY  c.country

select p.ProductName 
from Products p WHERE p.ProductName like 'Ch%'

SELECT distinct c.country
from Customers c 
where country 
like '[U%A]'
ORDER BY  c.country

SELECT * FROM Customers 
WHERE Region IN('WA','SP') 
AND Country IN ('Brazil', 'USA')

SELECT * FROM Customers 
WHERE Region = 'WA' or Region = 'SP' 

SELECT * FROM EmployeeTerritories 
WHERE TerritoryID BETWEEN 06800 AND 09999

SELECT p.ProductName, p.ProductID
From Products p 
WHERE p.UnitPrice < 5.00

SELECT c.CategoryName
FROM Categories c 
WHERE c.CategoryName LIKE '[BS]%'

/*SELECT o.EmployeeID
FROM Orders o
INNER JOIN Orders ON o.OrderID = o.EmployeeID
WHERE o.EmployeeID = 5
*/
SELECT COUNT(*) AS "NUMBER OF EMP" FROM Orders
WHERE EmployeeID IN (5, 7);

SELECT o.EmployeeID, COUNT(*) AS 'been'
FROM Orders o 
WHERE o.EmployeeID in (5,7)
GROUP BY o.EmployeeID

SELECT c.CompanyName as "Company name", 
CONCAT (c.City, ', ' , c.Country) AS "City"
From Customers c

SELECT e.FirstName, e.LastName, 
CONCAT (e.FirstName, ' ' , e.LastName) as "Full name"
From Employees e

SELECT c.CompanyName AS "Company", City + 
FROM Customers c 

SELECT TOP 6 c.Country, c.Region
FROM Customers c 
WHERE Region IS NOT NULL

--Modulus -%=remainder 76%3=1, 90%7=6
--Division have 2 things-quotient and remainder

SELECT o.UnitPrice, o.Quantity, o.Discount,
(o.UnitPrice * o.Quantity) AS "Gross Total"
From [Order Details] o 



SELECT TOP 2 o.UnitPrice, o.Quantity, o.Discount,
(o.UnitPrice * o.Quantity) AS "Gross Total",
ROUND((o.UnitPrice * o.Quantity) -(O.UnitPrice * o.Discount * o.Quantity), 2) AS "NET TOTAL"
From [Order Details] o 
ORDER BY "NET TOTAL" DESC

SELECT c.PostalCode "post Code", 
LEFT(c.PostalCode, CHARINDEX(' ', c.PostalCode)-1) AS "Post code Region",
CHARINDEX(' ',c.PostalCode) AS "Space Found", c.Country
From Customers c
WHERE Country = 'UK'

SELECT p.ProductName "alaise", 
CHARINDEX( ' ', p.ProductName) AS "Quotes"
FROM Products p 


SELECT * FROM Employees