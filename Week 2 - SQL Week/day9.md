9am stand up
SQL Joins 

DATE FUNCTIONS 
	The following date functions can be used to manipulate dates in various ways in the SELECT clause
	
	GETDATE 
		SELECT GETDATE() to return the current date and time 
	
	SYSDATETIME 
		SELECT SYSDATETIME() to return the data and time of the computer being used
	
	DATEADD
		DATEADD(d,5,OrderDate) AS "Due Date" to add 5 days 
	
	DATEDIFF
		DATEDIFF(d, OrderDate, ShippedDate) AS "Ship Time" to calculate difference between dates
	
	YEAR 
		SELECT YEAR(OrderDate) AS "Order Year" to extract the year from a date
		
	MONTH 
		SELECT MONTH(OrderDate) AS "Order Month" to extract the month from a date
	
	YEAR 
		SELECT DAY(OrderDate) AS "Order Day" to extract the day from a date
		
		
	
CASE Statement
	CASE statements can be useful when you need varying results output based on differing data
	Pay close attention to WHEN THERE ELSE and END
	Use Single quotes for data and Double quotes for column aliases
	
Aggregate Functions
	The following aggregate functions can be used to calculate totals usually in conjunction with the GROUP BY clause
	
	SUM 
		SUM(OrderTotal) for the grand total of a column for all rows selected
	AVG
		AVG(UnitPrice) for the average for a coloumn for all rows selected
	MIN 
		MIN(UnitPrice) for the smallest value in a column for all rows selected
	COUNT 
		COUNT(*) for the number of NOT NULL rows selected.
		If * is used then all rows are counted

GROUP BY 
	Is added to provide subtotals
	The total, average are calculated for each Supplier 
	
HAVING 
	Is used instead of WHERE when filtering on subtotals/grouped data
	Column Aliases cannot be used in the HAVING clause
	Aggregate functions are not available for use in the WHERE clause due to the SQL processing 



JOINS
	
	SELECT column_name(s)
	FROM table1
	RIGHT JOIN table2
	ON table1.column_name = table2.column_name;
	
	
	A SQL JOIN combines records from two tables.
	A JOIN locates related column values in the two tables.
	A query can contain zero, one, or multiple JOIN operations.

An INNER JOIN returns the rows that match in both tables
	
	Use an SQL INNER JOIN when you need to match rows from two tables. Rows that match remain in the result, those that don't are rejected. 

The LEFT JOIN keyword returns all records from the left table (table1), and the matched records from the right table (table2).
	
	We use a LEFT JOIN when we want every row from the first table, regardless of whether there is a matching row from the second table.

RIGHT JOIN

	Returns all records from the right table and the matched records from the left table
	returns all rows from the right table, even if there are no matches in the left table

FULL OUTER JOIN
	
	Returns ALL records when there is a match in either the left or right table records
	It is commonly used in conjunction with aggregations to understand the amount of overlap between two tables.
	used full outer joins when attempting to find mismatched, orphaned data, from both of my tables and wanted all of my result set, not just matches.

SELF JOIN
	
	A SELF JOIN is a join in which a table is joined with itself(aka Unary Relationship) To join a table itself means that each row of the table is combined with itself and with every other row of the table

CROSS JOIN
	
	The CROSS JOIN is used to generate a paired combination of each row of the first table with each row of the second table(aka cartesian)
	Because of this, the number of rows in the output table is the product of the number of rows in the input tables


Write about our presentation on how we presented 
	
	5 points needed top give at tomorrows stand up 
	
	Need to look into camera when presenting
	Used power words 
	Need to work on my appearance as it was not professional al 
	Need to no use UM so much 
	Slow my speech down 
	
Write questions on the slide - to allow for people to visualise the answer 


Self join is in the project 
