use ultimate_sql;
create table people (
name VARCHAR(100), 
birthdate DATE, 
birthtime TIME, 
birthdt DATETIME);

insert into people value('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');
insert into people value('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');
select * from people;

/*
Date time functions
CURDATE()	- gives current date
CURTIME()	- gives current time
NOW()		- gives current datetime
Date time format
DAY()
DAYNAME()
DAYOFWEEK()
DAY OF YEAR()
*/
/*MM-dd-YY*/

select now();
select curdate();
select curtime();
select now();
select day(now());
select dayname(now());
select dayofmonth(now());
select dayofyear(now());
select * from people;

/*-------------------------------------------------------------------------------------------------------*/

select birthdate, date_format(birthdate, '%m-%d-%Y %h:%m:%s') as after_formated from people;

select birthdate, datediff(now(),birthdate) as 'number of days between today and birthdate' from people;

/*--------------------------------------------------------------------------------------------------------*/

INSERT INTO people (name, birthdate, birthtime, birthdt) VALUES('Richard', CURDATE(), CURTIME(), NOW());

SELECT birthdate, DAYOFYEAR('2020-03-01') FROM people;

/*--------------------------------------------------------------------------------------------------------*/

/*Date Time Specifier*/
/*Sunday October 2009*/

select dayname(now()), monthname(now()), year(now());

select date_format(now(),'%W %M %Y');

SELECT DATE_FORMAT('2009-10-04 22:23:00', '%W %M %Y');

/*--------------------------------------------------------------------------------------------------------*/

/*** DATE Math / Arithmetic **
DATEDIFF()
DATE_ADD()
+ or -
*/
/* result : 1 */

/*--------------------------------------------------------------------------------------------------------*/

select datediff(curdate(), '2007-11-11 23:59:59') as datedifference;

/* '2020-03-01 19:28:23' =>  '2020-03-31 19:28:23'*/

select adddate('2020-03-01 19:28:23', 32);

select birthdt, date_add(birthdt,interval 30 day) 'after adding 30days' from people;

select birthdt, adddate(birthdt,30) 'after adding 30days' from people;

/*'2020-03-01 19:28:23' => '2020-03-11 19:28:23'*/

select birthdt, birthdt+ interval 10 day after_ading_10_days from people;

/*'2020-03-01 19:28:23' => '2020-02-01 19:28:23'*/

select birthdt, birthdt- interval 30 day after_sub_30_days from people;

/*--------------------------------------------------------------------------------------------------------*/

/*------------------------------------- Timestamp -------------------------------------------------*/

create table comments(
comment varchar(150),
created timestamp default now(),
change_at timestamp default now() on update current_timestamp);

insert into comments (comment) 
values('I like cats'),
	  ('today is pretty hot'),
	  ('I can\'t stop watching movies :)');
      
select * from comments;

update comments set comment = 'I like cats and dogs' where comment = 'I like cats';

/*--------------------------------------------------------------------------------------------------------*/

/*------------------------------------------- Challenges -------------------------------------------------*/

create table inventory(
iteam_name varchar(100),
price decimal(10,2),
quantity int);


/*Print Out The Current Time*/
SELECT CURTIME();

/*Print Out The Current Date (but not time)*/
SELECT CURDATE();

/*Print Out The Current Day Of The Week (the number)*/
SELECT DAY(NOW());
SELECT DAYOFWEEK(CURDATE());
SELECT DAYOFWEEK(NOW());
SELECT DATE_FORMAT(NOW(), '%w') + 1;

/*Print Out The Current Day Of The Week (The Day Name)*/
SELECT DAYNAME(NOW());
SELECT DATE_FORMAT(NOW(), '%W');

/*Print out the current day and time using this format:mm/dd/yyyy*/
SELECT DATE_FORMAT(NOW(), '%m/%d/%Y');
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');

/*Print out the current day and time using this format:
January 2nd at 3:15 O/ April 1st at 10:18
https://www.w3resource.com/mysql/date-and-time-functions/mysql-date_format-function.php
*/
SELECT DATE_FORMAT(NOW(),'%M %D at %H:%m');
SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');
SELECT DATE_FORMAT(NOW(), '%M %D %Y at %h:%i');
SELECT DATE_FORMAT(NOW(),'%M %W %Y at %H:%m');