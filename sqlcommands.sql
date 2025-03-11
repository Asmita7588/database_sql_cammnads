
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