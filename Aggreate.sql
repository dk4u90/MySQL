use ultimate_sql;
show tables;
select * from books;

/*How many books are in the database???!*/
select count(*) from books;

/*How many author_fnames?*/
select count(distinct((author_fname))) from books;

/*How many titles contain "the"?*/
select count(title) from books where title like "%the%";

/*COUNT how many books each author has written*/
select concat(author_fname,' ',author_lname) as 'author_name' , count(book_id) from books group by author_name;

/*books count by released years*/
select released_year , count(book_id) from books group by released_year;

/*Find the minimum released_year*/
select min(released_year) from books;

/*Find the longest book (but took long as 2 quries have to run)*/
select title, pages from books where pages=(select max(pages) from books);

/* Faster way */
select title, pages from books order by pages desc limit 1;

/*Find the year each author published their first book*/
select title, concat(author_fname,' ', author_lname) as author_name, min(released_year) from books group by title,author_name;

/*Find the longest page count for each author*/
select concat(author_fname,' ', author_lname) as author_name, max(pages) from books group by author_name;

/*Sum all pages in the entire database*/
select sum(pages) from books;

/*Sum all pages each author has written*/
select concat(author_fname,' ', author_lname) as author_name, sum(pages) from books group by author_name;

/*Calculate the average released_year across all books*/
SELECT AVG(released_year) FROM books;

/*Calculate the average stock quantity for books released in the same year*/
select released_year, avg(stock_quantity) from books group by released_year;

/*-----------------------------------------------------------*/

/*-------------- Challenges --------------------------------*/
/*Print the number of books in the database*/
select count(book_id) from books;
SELECT COUNT(*) AS 'number of books' FROM books;

/*Print out how many books were released in each year*/
select released_year,count(book_id) from books group by released_year;

/*Print out the total number of books in stock*/
select sum(stock_quantity) from books;

/*Find the full name of the author who wrote the longest book*/
select concat(author_fname,' ', author_lname) as author_name, max(pages) from books group by author_name;

/*
+------+---------+-----------+
| year | # books | avg pages |
+------+---------+-----------+
| 1945 |       1 |  181.0000 |
| 1981 |       1 |  176.0000 |
| 1985 |       1 |  320.0000 |
| 1989 |       1 |  526.0000 |
| 1996 |       1 |  198.0000 |
| 2000 |       1 |  634.0000 |
| 2001 |       3 |  443.3333 |
| 2003 |       2 |  249.5000 |
| 2004 |       1 |  329.0000 |
| 2005 |       1 |  343.0000 |
| 2010 |       1 |  304.0000 |
| 2012 |       1 |  352.0000 |
| 2013 |       1 |  504.0000 |
| 2014 |       1 |  256.0000 |
| 2016 |       1 |  304.0000 |
| 2017 |       1 |  367.0000 |
+------+---------+-----------+
*/
select released_year, count(book_id), avg(pages) from books group by 1;

select * from books;