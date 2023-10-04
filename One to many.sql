use ultimate_sql;

create table customers(
id int auto_increment primary key,
frist_name varchar(100) not null,
last_name varchar(100) not null,
email varchar(100) not null);

CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    foreign key(customer_id) references customers(id));
    
INSERT INTO customers (frist_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);
       
/*customers by spending high to low order */
/*send them loyality programs,etc*/

select frist_name, last_name, sum(amount) total_spending 
from customers
join orders on orders.customer_id=customers.id 
group by customers.id 
order by total_spending desc;


/* customers who haven't spent anything or ordered anything yet */
/*we can send out discount cupons.. etc*/

select frist_name, last_name, amount 
from customers 
left join orders on customers.id=orders.customer_id where orders.customer_id is null;

/*------------------------------------- Challenges -----------------------------------------*/

CREATE TABLE students(
	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(150)
);


CREATE TABLE papers(
	title VARCHAR(150) NOT NULL,
	grade INT NOT NULL,
	student_id INT,
	FOREIGN KEY(student_id) REFERENCES students(id) ON DELETE CASCADE
);

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

/*-----------------------------------------------------------------------*/
/*
+------------+---------------------------------------+-------+
| first_name | title                                 | grade |
+------------+---------------------------------------+-------+
| Samantha   | De Montaigne and The Art of The Essay |    98 |
| Samantha   | Russian Lit Through The Ages          |    94 |
| Carlos     | Borges and Magical Realism            |    89 |
| Caleb      | My Second Book Report                 |    75 |
| Caleb      | My First Book Report                  |    60 |
+------------+---------------------------------------+-------+
*/

select first_name, title, grade from papers
join students on students.id=papers.student_id;

/*
+------------+---------------------------------------+-------+
| first_name | title                                 | grade |
+------------+---------------------------------------+-------+
| Caleb      | My First Book Report                  |    60 |
| Caleb      | My Second Book Report                 |    75 |
| Samantha   | Russian Lit Through The Ages          |    94 |
| Samantha   | De Montaigne and The Art of The Essay |    98 |
| Raj        | NULL                                  |  NULL |
| Carlos     | Borges and Magical Realism            |    89 |
| Lisa       | NULL                                  |  NULL |
+------------+---------------------------------------+-------+
*/

select first_name, title, grade from papers
right join students on students.id=papers.student_id;

/*
+------------+---------------------------------------+-------+
| first_name | title                                 | grade |
+------------+---------------------------------------+-------+
| Caleb      | My First Book Report                  | 60    |
| Caleb      | My Second Book Report                 | 75    |
| Samantha   | Russian Lit Through The Ages          | 94    |
| Samantha   | De Montaigne and The Art of The Essay | 98    |
| Raj        | MISSING                               | 0     |
| Carlos     | Borges and Magical Realism            | 89    |
| Lisa       | MISSING                               | 0     |
+------------+---------------------------------------+-------+
*/

select first_name, ifnull(title,'Missing'), ifnull(grade,0) from papers
right join students on students.id=papers.student_id;

/*
+------------+---------+
| first_name | average |
+------------+---------+
| Samantha   | 96.0000 |
| Carlos     | 89.0000 |
| Caleb      | 67.5000 |
| Raj        | 0       |
| Lisa       | 0       |
+------------+---------+
*/

select first_name, avg(ifnull(grade,0)) average from students
left join papers on students.id=papers.student_id group by first_name;

/*
+------------+---------+----------------+
| first_name | average | passing_status |
+------------+---------+----------------+
| Samantha   | 96.0000 | PASSING        |
| Carlos     | 89.0000 | PASSING        |
| Caleb      | 67.5000 | FAILING        |
| Raj        | 0       | FAILING        |
| Lisa       | 0       | FAILING        |
+------------+---------+----------------+
*/

select first_name, avg(ifnull(grade,0)) average, 
case when avg(ifnull(grade,0))>70 then 'Passing' else 'FAILING' end as passing_status from students
left join papers on students.id=papers.student_id group by first_name;
