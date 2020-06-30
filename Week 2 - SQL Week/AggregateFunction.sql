/* Created by Humza Malak*/

--Different versions of the DATETIME COMMANDS
SELECT DATEADD(d, 5, OrderDate) AS "Due Date", 
DATEDIFF(d, OrderDate, shippedDate) AS "Ship Days"
FROM Orders

SELECT e.FirstName, e.LastName, e.BirthDate,
CONCAT (e.FirstName, ' ' , e.LastName) AS "Name", 
DATEDIFF(Year,e.BirthDate, GETDATE()) AS "Age"
FROM Employees e 

SELECT e.FirstName, e.LastName, e.BirthDate,
CONCAT (e.FirstName, ' ' , e.LastName) AS "Name", 
DATEDIFF(Year,e.BirthDate, GETDATE()) / (8766.0000) AS "Age" 
FROM Employees e 


--case statement added to previous question 
SELECT   e.FirstName, e.LastName, e.BirthDate,
    CONCAT (e.FirstName, ' ' , e.LastName) AS "Name",
    DATEDIFF(Year,e.BirthDate, GETDATE()),
    
CASE
WHEN DATEDIFF(Year,e.BirthDate, GETDATE()) >= 65 THEN 'Retired' 
WHEN DATEDIFF(Year,e.BirthDate, GETDATE()) > 60 THEN 'sapoon' 
ELSE 'Retirement Due'
END AS "more than 5 years to go"
FROM Employees e 

--case statements 
SELECT CASE    
When DATEDIFF(d, OrderDate, ShippedDate) < 10 THEN 'ON TIME'
ELSE 'OVERDUE'
END AS "Status"
FROM Orders

--Aggregate Functions
SELECT SupplierID,
    SUM (UnitsOnOrder) AS "Total On Order",
    AVG(UnitsOnOrder) AS "Avg On Order",
    MIN(UnitsOnOrder) AS "Min on Order",
    MAX(UnitsOnOrder) AS "Max on Order"
FROM Products
GROUP BY SupplierID

-- Sum , Average, Min , Max, Count, with group by 
SELECT AVG(p.ReorderLevel ) AS "AVG Reorder Level"
FROM Products p 
GROUP By p.CategoryID
Order by "Avg Reorder Level" DESC

--Having Clause
SELECT SupplierID, 
SUM(UnitsOnOrder) AS "Total",
    AVG(UnitsOnOrder) AS "AVG"
FROM Products
GROUP BY SupplierID
HAVING AVG(UnitsOnOrder) > 5