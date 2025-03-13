
--join 
use customerDb

create schema hr;

GO
create table hr.camdidates(
id int Primary key Identity,
fullname varchar(100) NOT NULL
);

CREATE TABLE hr.employees(
id int primary key identity,
fullname varchar(100) NOT NULL
);

insert into hr.camdidates(fullname) values('asmita girhepunje'),('Lily bush'),('aniket dangre'),('pranay,dangre');

insert into hr.employees(fullname) values('asmita girhepunje'),('Liga bush'),('rajani nhoyar'),('pranit yerwade');

--inner join

select c.id candidate_id,
c.fullname candidate_name,
e.id employee_id,
e.fullname employee_name
from hr.camdidates c
INNER JOIN hr.employees e on c.fullname = e.fullname;

-- left join 

select c.id candidate_id,
c.fullname candidate_name,
e.id employee_id,
e.fullname employee_name
from hr.camdidates c
LEFT JOIN hr.employees e on c.fullname = e.fullname;

Select c.id candidate_id,
c.fullname candidate_name,
e.id employee_id,
e.fullname employee_name
from hr.camdidates c
LEFT JOIN hr.employees e on c.fullname = e.fullname
where e.id IS NULL;

--right join 
select c.id candidate_id,
c.fullname candidate_name,
e.id employee_id,
e.fullname employee_name
from hr.camdidates c
Right JOIN hr.employees e on c.fullname = e.fullname
where c.id Is NULL

--FULL JOIN
Select c.id candidate_id,
c.fullname candidate_name,
e.id employee_id,
e.fullname employee_name
from hr.camdidates c
FULL JOIN hr.employees e on c.fullname = e.fullname;

Select c.id candidate_id,
c.fullname candidate_name,
e.id employee_id,
e.fullname employee_name
from hr.camdidates c
FULL JOIN hr.employees e on c.fullname = e.fullname
where c.id IS NULL OR e.id IS NULL

SELECT first_name, last_name from sales.customers where state = 'CA'group by first_name, last_name;

--GROPU BY
select Customer_id , YEAR (order_date) order_year from sales.orders where customer_id IN(1,2) group by customer_id, YEAR(order_date) order by customer_id;

--GROPU BY
select Distinct Customer_id , YEAR (order_date) order_year from sales.orders where customer_id IN(1,2) group by customer_id, YEAR(order_date) order by customer_id;

select Customer_id , YEAR (order_date) order_year, COUNT(order_id) order_palced from sales.orders where customer_id IN(1,2) group by customer_id, YEAR(order_date) order by customer_id;

select brand_name, MIN(list_price) min_price, MAX(list_price) from production.products p
INNER JOIN production.brands b on b.brand_id = p.brand_id
where model_year = 2018
group by brand_name
order by brand_name;

select brand_name, AVG(list_price) AVG_price from production.products p
INNER JOIN production.brands b on b.brand_id = p.brand_id
where model_year = 2018
group by brand_name
order by brand_name;

select order_id, SUM(quantity * list_price * (1- discount)) net_value from sales.order_items group by order_id

-- having clouse
select customer_id, YEAR(order_date), COUNT(order_id) order_count from sales.orders
 group by customer_id ,YEAR(order_date) having COUNT(order_id) >=2 ORDER BY customer_id


 select order_id, sum(quantity * list_price *(1- discount)) net_value 
 from sales.order_items group by order_id
 having sum(quantity * list_price * (1- discount)) > 2000
 order by net_value;


 select category_id, MAX(list_price) max_list_price, MIN(list_price) min_list_price from production.products group by category_id having MAX(list_price) > 4000 OR Min (list_price) < 500;

 select category_id, avg (list_price) avg_list_price from production.products group by category_id having avg(list_price) Between 500 and 1000;

 select category_id ,list_price from production.products where category_id In(2,3)

 --union operator
 select first_name, last_name from sales.staffs 
 union 
 select first_name, last_name from sales.customers

 select COUNT(*) from sales.staffs 

 --union all 
select first_name, last_name from sales.staffs
UNION All 
Select first_name, last_name from sales.customers

--union all 

select first_name, last_name from sales.staffs
union all 
select first_name, last_name from sales.customers
order by first_name, last_name

use customerDb;

select city from sales.customers 
Intersect 
select city from sales.stores
order by city

-- except operator
select product_id from production.products
EXCEPT 
SELECT product_id from sales.order_items
