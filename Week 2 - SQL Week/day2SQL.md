930 stand up


Quiz at 4 

Home work at end of day 
Post the project 
Creating tables 


DML is the focus - 70% on the select statement 
DDL statements - need to do in the project 


DML
 
    Data Manipulation Language
	Delete removes data 
	Select
	Insert
	Update

DDL 
    
    Data Definition Language
	what is defining your database
	Drop destroys the table
	Truncate gets data out of the table 
	Alter
	Create

DCL 
    
    Data Control Language
	Grant and revoke 
	Privilege rights as a user 
	Given by the database admin 
	Project manager tells the db manager and grants right to do a certain thing 
	Revoke right to access to the database 

TCL 
    
    Transaction Control Language
	Commits changes to  database 
	Rollback changes to the database 
	Save point, like a commit, data hasn't been confirmed to be pushed to the main 
	save a snapshot of the current database 
	
Char is faster than VARCHAR, but VAARCHAR is memory efficient 
Decimal(6,4) - 6 means the fixed length, 4 means how many digits after the decimal point
	
bigint
		
		-2^63 (-9,223,372,036,854,775,808) to 2^63-1 (9,223,372,036,854,775,807)
		8 Bytes
	
int
		
		-2^31 (-2,147,483,648) to 2^31-1 (2,147,483,647)
		4 Bytes
	
smallint
		
		-2^15 (-32,768) to 2^15-1 (32,767)
		2 Bytes
	
tinyint
		
		0 to 255
		1 Byte
	
2-4pm Coding 
	
Null 
	
	Is not nothing, but it does not equate to zero
	It isn't even an empty string
	A value can be Null, but Null never equals Null because Null is an undefined value 
	
	
Database considerations
		
	Data Integrity 
	Data Recovery
	Data Integrity
	Normal Form
		
1st Normal Form 
	
	A database is in 1st normal form when the following conditions are satisfied
		Make everything atomic
			Data must be presented as small as it can be
		There should be no repeating groups
	
2nd Normal Form
    
    A database is in Second Normal Form when the following conditions are satisfied
        It is in 1st NF
        All non-key attributes are fully functional dependant on the Primary Key
        
3rd Normal Form 
    
    A database is in Third Normal Form when the following conditions are satisfied
        It is in 2NF
        There is no transitive functional dependency
            A transitive functional dependency is when a non-key column is functionally dependant on another non-key column, which is functionally dependant on the primary key 

	
PCI - DS payment card industry - data standards

Docker and docker swarm - scale up - scales down 

Get delete on cascade working for tomorrow 
