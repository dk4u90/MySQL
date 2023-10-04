Use statistics_essentials;

/* check first 10 rows */
 
select * from store_sales limit 10;

/* check how many rows */

select count(*) from store_sales;

/* how many rows in each month */

select month_of_year, count(*) from store_sales group by month_of_year;

/* maximum number of employees during any shift of the year */

select month_of_year, max(employee_shifts) from store_sales group by month_of_year ;

/* what is the smallest number of employees during any shift of the year */

select min(employee_shifts) from store_sales;

/* min, max together */

select min(employee_shifts), max(employee_shifts) from store_sales;

/* min, max employees in during per shift of the year*/

select min(employee_shifts), max(employee_shifts) from store_sales group by month_of_year;

/* What is the total unit sold? */

select sum(units_sold) from store_sales;

/* What is the total unit sold , avg unit sold per month? */

select month_of_year, sum(units_sold), avg(units_sold) from store_sales group by month_of_year; 

/********************** Standard Deviation & Variance ********************************************/

/* How spread out the unit sold in each month? */

select month_of_year,
	SUM(units_sold) AS total_unit_sold, 
	ROUND(AVG(units_sold), 2) AS average_unit_sold,
	VAR_POP(units_sold) AS variance_units_sold,
	STDDEV_POP(units_sold) AS std_units_sold
FROM store_sales
GROUP BY month_of_year
ORDER BY month_of_year ASC;


/* As we can see from the result, variance values quite high. Because variance measures in squared. 
So better way to get a sense of spread out is standard deviation */

/* Interpretation based on data: 
For month 1, it seems like stddev is pretty close around 3.48 across the sales.

However like month 12, it seems like stddev is very large 231.15 across the sales. 
So it seems like in some sales, many units are sold in large quanity and some sales aren't. 
So we can check whether our assumptions are correct or not */

/* When we check the data and our assumptions are correct.
* for 12 month, lowest sales is 0 and largest sale is 879 which leads to large value of stddev.*/ 

SELECT 
	month_of_year, 
	MIN(units_sold),
	MAX(units_sold)
FROM store_sales
GROUP BY month_of_year
ORDER BY month_of_year ASC;