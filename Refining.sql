show databases;
use mysql;
show tables;
create database ultimate_sql;
use ultimate_sql;
CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

/*new books*/
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
	   ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
	   ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
       
/* Distinct */
select * from books;
select distinct(author_lname) from books;

/*What About DISTINCT Full Names??????*/
select distinct(concat_ws(' ',author_fname,author_lname)) as full_name from books;

/*-----------------------------------------------------------------------------*/
/* Order By*/
select distinct(concat_ws(' ',author_fname,author_lname)) as full_name from books order by full_name asc; 
SELECT title,author_fname,author_lname FROM books order by 3;

/* LIMIT starting_point, how many records*/
/*get two records start from 1st row*/
/*index start from 0 for row 1... etc*/

select * from books limit 5;
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 0,3;

/*---------------------------------------------------------------------------*/

SELECT * FROM books WHERE author_fname LIKE '%da%';

/*MySQL like search is case insensitive.
+--------------------+
| name               |
+--------------------+
| Test               |
| test               |
+--------------------+*/
SELECT title FROM books WHERE title LIKE 't%';

/*To make case sensitive search, use BINARY
+--------------------+
| name               |
+--------------------+
| test               |
+--------------------+*/
SELECT title FROM books WHERE title LIKE BINARY 't%';

/*underscore for each character*/
/*start with D with 2 charcters followed by*/

SELECT * FROM books WHERE author_fname LIKE 'D__' ;

/* # book_id, title, author_fname, author_lname, released_year, stock_quantity, pages
17, ten percent Happier, Dan, Harris, 2014, 29, 256
13, White Noise, Don, DeLillo, 1985, 49, 320 */

select book_id, title, author_fname, author_lname, released_year, stock_quantity, pages 
from books where book_id in (17,13);

/*four digit stock quanity*/
select * from books where length(stock_quantity)=4;
select * from books where stock_quantity like '____';

/*escaping special character*/
select * from books where title like '%\%%';

/*=====================EXERCISES ===============================*/

/*Titles  That contain 'stories'*/
select * from books where title like '%stories%';

/*Find The Longest Book Print Out the Title and Page Count*/
select * from books order by pages desc limit 1;

/*Print a summary containing the title and year, for the 3 most recent books
+-----------------------------+
| summary                     |
+-----------------------------+
| Lincoln In The Bardo - 2017 |
| Norse Mythology - 2016      |
| 10% Happier - 2014          |
+-----------------------------+
*/
select title, released_year from books order by released_year desc limit 3;
select concat_ws(' - ',title, released_year)  from books order by released_year desc limit 3;

/*Find all books with an author_lname that contains a space(" ")
+----------------------+----------------+
| title                | author_lname   |
+----------------------+----------------+
| Oblivion: Stories    | Foster Wallace |
| Consider the Lobster | Foster Wallace |
+----------------------+----------------+
*/
select title, author_lname from books where author_lname like '% %';

/*Find The 3 Books With The Lowest Stock Select title, year, and stock
+-----------------------------------------------------+---------------+----------------+
| title                                               | released_year | stock_quantity |
+-----------------------------------------------------+---------------+----------------+
| American Gods                                       |          2001 |             12 |
| Where I'm Calling From: Selected Stories            |          1989 |             12 |
| What We Talk About When We Talk About Love: Stories |          1981 |             23 |
+-----------------------------------------------------+---------------+----------------+
*/
select title, released_year, stock_quantity from books order by stock_quantity desc limit 3;

/*Print title and author_lname, sorted first by author_lname and then by title*/
select title , author_lname from books order by author_lname and title;

/*Sorted Alphabetically By Last Name*/
SELECT CONCAT('MY FAVOURITE AUTHOR IS ',UPPER(author_fname),' ',UPPER(author_lname)) AS 'YELL'
FROM books ORDER BY author_lname;




