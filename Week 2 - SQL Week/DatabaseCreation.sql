/*Created by Humza Malak*/

--Create Database
CREATE DATABASE humza_db;
--Specify which Database to use
USE humza_db
--Good Practice to have, check to see if PythonDatabase has a table with the same name already
drop table film_table;
--Creates the film table with
Create table film_table
(
    film_name VARCHAR(15),
    film_id INT Primary Key IDENTITY,
    director_id INT FOREIGN KEY
        REFERENCES director (director_id)
        ON DELETE CASCADE,
    film_type VARCHAR(15),
    date_of_release DATETIME,
    director CHAR(15),
    writer CHAR(15),
    Star DECIMAL(2,1),
    film_language CHAR(15),
    offical_website VARCHAR(40),
    plot_summary VARCHAR(MAX)
);
--Alter adds data into the table
Alter TABLE film_table ADD release_date DATETIME;
--inserts data into the table
INSERT INTO film_table
(
    film_name, director_id ,film_type, date_of_release, director, writer, Star, film_language, offical_website, plot_summary, release_date
)
VALUES
('SQL', 1 ,'Drama', '2020-06-23 12:12:12:456', 'Humza Malak', 'Tony the Tiger', 4.5, 'french', 'www.sql.com', 'A DevOps group take the periolus treck opf learning how to dfdo SQL, making friendships along the way', '2020-06-23'),
('Hold deez Lz', 'Action', '2020-06-23 07:07:12:456', 'Malak', 'Tony', 4.5, 'french', 'www.L.com', 'Hate Incarnate', '2020-06-24');

--SP_HELP film_table;

--Select everything from the filom table to see what is inside it
Select * From film_table;

/*Alter Table film_table
ADD film_id INT IDENTITY PRIMARY KEY;*/

--drops the director table
Drop table  director;
--Creates the director table
Create table director(
    director_id INT PRIMARY KEY IDENTITY,
    director_name VARCHAR(50),
    city VARCHAR(20) DEFAULT 'London',
);

/* REFERENCES film_table (film_id) ON DELETE CASCADE */

--Select everything from the director table to see what is inside it
Select * From director;
--Alter adds data into the table
INSERT Into director
(
    director_name, film_id
)
VALUES
('Hans Zimmer', 1).
('c', 2);


--Updates the chosen row with new data
UPDATE director SET director_name ='humza' WHERE film_id=1;
/*
ALTER TABLE director
ADD CONSTRAINT film_id;
FOREIGN KEY (film_id)
REFERENCES film_table (film_id) ON DELETE CASCADE;
*/

--Cascade Deletion
--Child Removal
DELETE FROM director WHERE film_id = 1

--Parent Removal
DELETE FROM film_table WHERE film_id = 1

--Incase you have Null Values
DELETE FROM film_table WHERE film_id = 2