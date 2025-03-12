
select * from sales.customers;

select * from sales.customers where state = 'CA';

select * from sales.customers where state = 'CA' order by first_name


select city , COUNT(*) from sales.customers where state = 'CA' group by city order by city;

select city , COUNT(*) from sales.customers where state = 'CA' group by city having COUNT(*) > 10 order by city;

select first_name, last_name from sales.customers order by first_name DESC

--Sort a result set by multiple columns
select city , first_name, last_name from sales.customers order by city,first_name;

--Sort a result set by multiple columns in different orders

select city, first_name, last_name from sales.customers order by city DESC, first_name ASC;

--Sort a result set by a column that is not in the select list

select city, first_name, last_name from sales.customers order by state;

-- Sort by ordinal positions of columns
select first_name, last_name from sales.customers order by 1, 2;

-- Using the SQL Server OFFSET FETCH example
select product_name , list_price from production.products order by list_price , product_name OFFSET 10 ROWS;


select product_name , list_price from production.products order by list_price , product_name OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY;

--Using the OFFSET FETCH clause to get the top N rows
select product_name , list_price from production.products order by list_price , product_name OFFSET 0 ROWS FETCH First 10 ROWS ONLY;


--Using SQL Server SELECT TOP with a constant value
select Top 10 product_name, list_price from production.products order by list_price DESC
	
-- Using SELECT TOP to return a percentage of rows
select top 1 PERCENT product_name,list_price from production.products order by list_price DESC.

--Using SELECT TOP WITH TIES to include rows that match values in the last row

select Top 3 with ties product_name, list_price from production.products order by list_price DESC;

--SQL Server SELECT DISTINCT examples
select distinct city from sales.customers order by city;

select Distinct city, state from sales.customers; 

--Using SELECT DISTINCT with NULL

select distinct phone from sales.customers order by phone;

--IS NULL operator
select first_name, last_name from sales.customers where phone = Null order by first_name, last_name;

use customerDb

--To test whether a value is NULL or not, you always use the IS NULL operator.
select customer_id, first_name, last_name, phone from sales.customers where phone IS NULL order by first_name, last_name;

select customer_id, first_name, last_name, phone from sales.customers where phone IS NOT NULL order by first_name, last_name;

--Basic SQL Server AND operator example
select * from production.products where category_id =1 AND list_price > 400 order by list_price DESC;

select * from production.products where category_id =1 AND list_price > 400  AND brand_id =1 order by list_price DESC;

-- or operator 
select * from production.products where brand_id = 1 or brand_id = 2 AND  list_price > 1000 ORDER BY brand_id DESC;

select * from production.products where (brand_id =1 or brand_id = 2) AND list_price > 1000 order by brand_id

--in oerator 
select product_name, list_price from production.products where list_price IN(89.99, 109.99, 159.99) order by list_price

--between operator 
use customerDb;
select product_id, product_name, list_price from production.products where list_price BETWEEN 149.99 AND 199.99 ORDER BY list_price;

select order_id, customer_id, order_date, order_status from sales.orders where order_date BETWEEN '2017-01-15' AND '2017-01-17' order by order_date;

--like operator
select customer_id, first_name,last_name from sales.customers where last_name LIKE 'S%' ORDER BY first_name;

select customer_id, first_name,last_name from sales.customers where last_name LIKE '%er' ORDER BY first_name;

select customer_id, first_name,last_name from sales.customers where last_name LIKE 't%s' ORDER BY first_name;

select customer_id, first_name,last_name from sales.customers where last_name LIKE '_er%' ORDER BY first_name;

select customer_id, first_name,last_name from sales.customers where last_name LIKE '[YZ]%' ORDER BY first_name;

select customer_id, first_name,last_name from sales.customers where last_name LIKE '[A-C]%' ORDER BY first_name;

select customer_id, first_name,last_name from sales.customers where last_name LIKE '[^A-X]%' ORDER BY first_name;

select customer_id, first_name,last_name from sales.customers where last_name NOT LIKE 'A%' ORDER BY first_name;

--ESCAPE WITH LIKE OPERATOR
CREATE TABLE sales.feedbacks (
  feedback_id INT IDENTITY(1, 1) PRIMARY KEY, 
  comment VARCHAR(255) NOT NULL
);
INSERT INTO sales.feedbacks(comment)
VALUES('Can you give me 30% discount?'),
      ('May I get me 30USD off?'),
      ('Is this having 20% discount today?');

	  SELECT * FROM sales.feedbacks;

	  select feedback_id, comment from sales.feedbacks where comment Like '%30%'

	  --In this query, the  ESCAPE clause specified that the character ! is the escape character.
	  select feedback_id, comment from sales.feedbacks where comment Like '%30!%%' ESCAPE '!';

	  --ALIAS

	  select first_name + ' ' + last_name AS 'FULL Name' from sales.customers order by first_name;

	  select category_name 'Product Category' from production.categories order by category_name;

	  -- when both table contains same fields then we have to specify name like below

	  select sales.customers.customer_id , first_name, last_name, order_id from sales.customers INNER JOIN sales.orders ON sales.orders.customer_id = sales.customers.customer_id;

	  select c.customer_id, first_name, last_name, order_id from sales.customers c INNER JOIN sales.orders o on o.customer_id = c.customer_id;



	  



