Subquery
	A subquery may occur in any of the following clauses
	
	SELECT 
		Nested Subquery - returns a single value only 
	FROM
		Inline view
	WHERE
		Nested subquery
	
	SELECT (OrderID, ProductID, UnitPrice, Quantity, Discount,
		(SELECT MAX(UnitPrice) FROM [Order Details] od) AS "Max Price" 
		FROM[Order Details]
		
	This is an example of a nested subquery in the SELECT clause
	(acts as a column)
	Subqueries MUST be contained by parenthesis( excluding any alias)
	Outputs the highest price in the table on every row in the result set 
	
	SELECT od.ProductID, sq1.total AS "Total Sold" , UnitPrice, UnitPrice/totalamt*100 AS "% of total"
	FROM [Order Details] od 
	INNER JOIN 
		(SELECT ProductID, SUM (UnitPrice*Quantity) AS total amt FROM [Order Details] 
		GROUP BY ProductID) sq1 ON sq1.ProductID = od.ProductID
		
	This is an example of an inline view (SELECT in the FROM clause: acts like a table)
	The inline view sq1 calculates the total for each product which is used to calculate the total for each product which is used to calculate percent of total
	
Union
	
	SELECT EmployeeID as "Employee/Supplier" 
	FROM Employees
	UNION ALL
	SELECT SupplierID
	FROM Suppliers
	
	This is a contrived example. Showing how you could list all Employee ID's in the same column as all Suppliers ID's
	UNION ALL returns 38 rows
	UNION removes any duplicates and returns 29 rows
	Both SELECT statements must have the same number of columns in the SELECT clause(same type)
	Only the Column Alias in the first SELECT will be applied
	
