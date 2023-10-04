use ultimate_sql;

/*"Select all books NOT published in 2017"*/

select * from books where released_year not in (2017);
select * from books where released_year!=2017;

/*Select all birthdays between 1990 and 1992*/

select * from people where year(birthdate) between 1990 and 1992;

/*Select books with titles that don't start with 'W'*/

select * from books where title not like 'W%';

/*Select books released after the year 2000*/

select * from books where released_year>2000;

/*Select books released before the year 2000*/

select * from books where released_year<2000;

/*result: 1*/
SELECT 99 > 1;

/*SELECT books written by Dave Eggers, published after the year 2010*/

select * from books where concat(author_fname,' ',author_lname)='Dave Eggers' and released_year>2010;

SELECT * FROM books WHERE author_fname = 'Dave' AND author_lname = 'Eggers' AND released_year > 2010;

SELECT * FROM books WHERE author_fname = 'Dave' && author_lname = 'Eggers' && released_year > 2010;

/* AND equals && */
/* OR equals || */

/*Select all books written by... Carver Lahiri Smith*/

SELECT * FROM books WHERE author_lname IN ('Carver','Lahiri','Smith');
SELECT * FROM books WHERE author_lname = 'Carver' OR author_lname = 'Lahiri' OR author_lname = 'Smith';


/*Select all books not published in 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016*/

select * from books where released_year not in (2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016);


/*I only want books released after 2000 and year is even number*/

select * from books where released_year>2000 and released_year%2=0;

/*
+-----------------------------------------------------+---------------+------------------+
| title                                               | released_year | GENRE            |
+-----------------------------------------------------+---------------+------------------+
| The Namesake                                        |          2003 | Modern Lit       |
| Norse Mythology                                     |          2016 | Modern Lit       |
| American Gods                                       |          2001 | Modern Lit       |
| Interpreter of Maladies                             |          1996 | 20th Century Lit |
| A Hologram for the King: A Novel                    |          2012 | Modern Lit       |
+-----------------------------------------------------+--------------------------+-------+*/


select title, released_year, case when released_year>2000 then 'Modern Lit' else '20th Century Lit' end as GENRE from books;

/*
0 - 50 	 : 1 star
51 - 100 : 2 stars
> 100	 : 3 stars
+-----------------------------------------------------+----------------+-------+
| title                                               | stock_quantity | STOCK |
+-----------------------------------------------------+----------------+-------+
| The Namesake                                        |             32 | *     |
| Norse Mythology                                     |             43 | *     |
| American Gods                                       |             12 | *     |
| Interpreter of Maladies                             |             97 | **    |
| A Hologram for the King: A Novel                    |            154 | ***   |
| The Circle                                          |             26 | *     |
| The Amazing Adventures of Kavalier & Clay           |             68 | **    |
| Just Kids                                           |             55 | **    |
| A Heartbreaking Work of Staggering Genius           |            104 | ***   |
| Coraline                                            |            100 | **    |
| What We Talk About When We Talk About Love: Stories |             23 | *     |
| Where I'm Calling From: Selected Stories            |             12 | *     |
| White Noise                                         |             49 | *     |
| Cannery Row                                         |             95 | **    |
| Oblivion: Stories                                   |            172 | ***   |
| Consider the Lobster                                |             92 | **    |
| 10% Happier                                         |             29 | *     |
| fake_book                                           |            287 | ***   |
| Lincoln In The Bardo                                |           1000 | ***   |
+-----------------------------------------------------+----------------+-------+
*/

select title, stock_quantity, 
case when stock_quantity<50 then '*' 
when stock_quantity between 50 and 100 then '**' 
else '***' end as stock from books;


/*If title contains 'stories'   -> Short Stories
Just Kids and A Heartbreaking Work  -> Memoir
Everything Else -> Novel

+-----------------------------------------------------+----------------+---------------+
| title                                               | author_lname   | TYPE          |
+-----------------------------------------------------+----------------+---------------+
| The Namesake                                        | Lahiri         | Novel         |
| Norse Mythology                                     | Gaiman         | Novel         |
| American Gods                                       | Gaiman         | Novel         |
| Interpreter of Maladies                             | Lahiri         | Novel         |
| A Hologram for the King: A Novel                    | Eggers         | Novel         |
| The Circle                                          | Eggers         | Novel         |
| The Amazing Adventures of Kavalier & Clay           | Chabon         | Novel         |
| Just Kids                                           | Smith          | Memoir        |
| A Heartbreaking Work of Staggering Genius           | Eggers         | Memoir        |
| Coraline                                            | Gaiman         | Novel         |
| What We Talk About When We Talk About Love: Stories | Carver         | Short Stories |
| Where I'm Calling From: Selected Stories            | Carver         | Short Stories |
.....
+-----------------------------------------------------+----------------+---------------+
*/

select title, author_lname, 
case when author_lname='Carver' then 'Short Stories' 
when  author_lname='Smith' then 'Memoir' else 'Novel' end as Type
from books;

SELECT title,author_lname,
	CASE
		WHEN title LIKE '%stories%' THEN 'Short Stories'
		WHEN title = 'Just Kids' OR title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memoir'
		ELSE 'Novel'
	END AS 'TYPE'
FROM books;

/*+-----------------------------------------------------+----------------+---------+
| title                                               | author_lname   | COUNT   |
+-----------------------------------------------------+----------------+---------+
| What We Talk About When We Talk About Love: Stories | Carver         | 2 books |
| The Amazing Adventures of Kavalier & Clay           | Chabon         | 1 book  |
| White Noise                                         | DeLillo        | 1 book  |
| A Hologram for the King: A Novel                    | Eggers         | 3 books |
| Oblivion: Stories                                   | Foster Wallace | 2 books |
| Norse Mythology                                     | Gaiman         | 3 books |
| 10% Happier                                         | Harris         | 1 book  |
| fake_book                                           | Harris         | 1 book  |
| The Namesake                                        | Lahiri         | 2 books |
| Lincoln In The Bardo                                | Saunders       | 1 book  |
| Just Kids                                           | Smith          | 1 book  |
| Cannery Row                                         | Steinbeck      | 1 book  |
+-----------------------------------------------------+----------------+---------+
*/

SELECT author_fname, author_lname,CONCAT(COUNT(*), ' book(s)') AS 'total books'
FROM books 
GROUP BY author_lname, author_fname;

SELECT author_fname, author_lname,CONCAT(CAST(COUNT(*) AS CHAR(4)), ' book(s)') AS 'total books'
FROM books 
GROUP BY author_lname, author_fname;

