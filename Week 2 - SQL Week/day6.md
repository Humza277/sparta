9 am stand up 


Sales Team meeting - 11am 

	Number of clients - up and down the UK
	Interviews set up with existing clients' 
	Will have interviews during the training  
	Roll into job at the end of training 
	Small coding test 
	Research on the company 
	Be honest
	Who you are and why you are here 

Agenda for one to one meeting
        
        We will time box our meeting for 10 minutes
        Please take notes, as you will be expect to email us the summary of our conversations
        Email - Shahrukh CC in Astha, Richard

How did you think this week went?
        
        Great – my back ground in Computer Science enabled me to have a good grounding in the topics covered in week one. I had no trouble in using my knowledge and experience to help the other members of the group through any problems they might of had. 
        
   
From the behavioural competencies one competencies do you think you are excelling and which competencies you need to work one? 
    
    Studious – I am writing any missed notes at the end of the work day along with other members of the class in order to stay strong throughout the course with note taking and revision 
    Professionalism – I find that i am multitasking with my second monitor and this causes me to miss out on key things that have been said during class.
 
One thing to start doing?
    
    I need to make more notes, as i think that i know everything because i have a
    background in comp sci, but this isn’t the case. 
 
One thing to stop doing? 
    Multi tasking as i mentioned earlier, it needs to stop
 
One thing to continue?
    
    Taking part in the class, my knowledge enables me to give insight that helps the other
    non-tech minded people in the class understand complex tech topics 
 
Feedback from Shahrukh:
	
	First in test is good , means  you learnt everything in first week 
 
Positive:
	
	Leadership , teamwork , you offer to help your colleagues 
 
Constructive Feedback:
	
	Be Professionalism at all times 
	Presenting and talking 
	Stop swinging your chair 
 


To help with this 
    
    Use SMART Objectives - highlight area of performance that i need to work on 


     S specific
        Be specific! There’s no use in setting a generic goal because it won’t suit you personally, however if you adapt the goal to apply to what you need, then it will be much more valuable to you. Of course you want to prosper in your field of work, but isn’t everyone in the office thinking the same? 
    
    M measurable
        Is it quantifiable? For instance going back to the example objective of selling more, you can measure this by the amount of units sold. Being a measurable goal allows you to identify when exactly it has been reached, i.e. what you desire as the end result.
    
    A achievable
        The point of a target is to challenge and motivate yourself to complete a piece of work, if you was to set your target too high it can cause stress and so decreasing the chance of your target actually being within reach. Likewise if a target was too easy will inhibit you from pushing yourself and doing more. Setting yourself a reasonable target is crucial!
    
    R realistic
        ‘I’m going to own a multimillion pound enterprise by the end of the month’ Might be a tad too ambitious, don’t get me wrong ambition is a leading trait, but maybe start off with something more realistic, remember all successful business people don’t just become successful overnight.
    
    T time bound
        Deadlines. Not something we like, but something most of us need. Especially if you’re someone like me, who tends to procrastinate. For example, if you’re sat at your desk knowing you have work to do, it’s easy to get lost in the world of the internet looking at cute animal photos or funny videos, but what if you were to say ‘Right, by 2 o’clock I want to have completed…’ then you’ve just motivated yourself to complete a job by an allotted time.


12 pm SQL 
    
    Thursday presentation on joins , hand on joins 



13:38 
- SQL Practise - Databases

Database 
	
	- Collection of data that is organised  
	Store it in an more organised way, allows for efficient retrieval 

	We must be able to structure tables to contain the right type of information, so that we can query it 
	Structure is important 

	USE - Specifies the database you want to use

	Entity is any thing we want to model - aka a customer in a database 

	Relational databases contains connected data
	
	
	
Terminology
	
	Column - Database tables are composed of individual columns corresponding to the attributes of the object 
	Row - A row consists of one set of attributes corresponding to one instance that a table describes. Know as records/tuples
	Table - A table is a predefined format of rows and columns that define an entity. Know as a file 
	DBMS - A Database management system allows a computing to perform database functions of storing, retrieving, adding, deleting and modifying data
	
Types of Database
	
	Flat-file Database
		Stores everything in one table. Good for small numbers of records related to a single topic 
	Relational Database
		Gives you the ability to separate masses of data into numerous tables
		The are linked to each other through the use of keys
	Big Data
		MongoDB, Vertica
		Used for Data Analytics and Business Intelligence
		Digital age and IOT - Internet of things 
	
	

Terms
Rule of Breaking Down Tables

If there is duplicated data, that is a sign that tables can be broken down further.

Best Practise

	Ensure tables are labelled so people have an idea of the content before reading the table.
	Duplicated data is to be avoided.
	Primary keys are part of the design and should be chosen so that it wont change in the future. Must be permanent and static.
	
Foreign Keys 

	- Foreign keys are the columns of a table that points to the primary key of another table. They act as a cross-reference between tables.
	
One to One relationship 

	- Where there is one row in one entity can be linked to only one row in another entity.
	
One to Many Relationship 

	- In a relational database, a one-to-many relationship exists when one row in table A may be linked with many rows in table B, but one row in table B is linked to only one row in table A. (EXAMPLE: One customer can have many purchases)
	
Many to Many Relationship 

	- A many-to-many relationship refers to a relationship between tables in a database when a parent row in one table contains several child rows in the second table, and vice versa. Many-to-many relationships are often tricky to represent. (EXAMPLE: A database used by a school application can be taken as an example. Two of the tables it contains are "Student" and "Subject." In real life, a student will take several subjects simultaneously, while a subject will be studied by several students at a time. This is a many-to-many relationship.)
	
Junction Table 

	- When you need to establish a many-to-many relationship between two groups, the simplest solution is to use a Junction Table.

A Junction Table (sometimes referred to as a "Bridge Table") 

	is a table that contains references to both groups; bridging them together. (Example: Where there is a many to many relationship you can make a junction table with the primary keys of the tables, then form a junction table. This table then forms a composite primary key.
	
Candidate Primary key 

	- If there are multiple choices for being a primary key, then all the options are called candidates for being the primary key

Primary key constraints

	A primary key must be unique 
	Must always have an entry - cannot be null 
	The value must never change 
	Each table may have a max of one primary key 


ERD Diagram 

Primary Key
	
	The primary Key uniquely identifies each record in the table
	Most table should have a primary key
	Each table can have more than one column which is part of its Primary Key (Composite key) 
		- Order No + Order Line No 
	It can either be an attribute that is guaranteed to be unique or it can be generated by DBMS
	The DBMN will enforce the uniqueness of the Primary key, allowing repeated records to exist in the table



Foreign Key 
	
	Natural relations exists between table in most database structures, foreign keys are used to create solid relationships 
	Foreign keys ensures that the row of information in Table A corresponds to the correct row of information in table B
	The constraints is used to prevent actions that would destroy links between tables
	It prevents invalid data from being inserted into the foreign key column, because it has to be one of the values contains in the table it points to
	There is no Uniqueness constraint for foreign keys
	A table can have any number foreign keys
	A row cannot be deleted from a reference table if it is in use via a foreign key 
