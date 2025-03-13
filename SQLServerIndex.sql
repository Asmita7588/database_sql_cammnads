create table orders(
order_id int,
product_id int,
quntity int,
order_date DATETIME
);

insert into orders(order_id, product_id, quntity, order_date)values(1, 2,3, 12-2-2025);
insert into orders(order_id, product_id, quntity, order_date)values(2, 6,2, 13-2-2025);
insert into orders(order_id, product_id, quntity, order_date)values(3, 5,5, 14-2-2025);
insert into orders(order_id, product_id, quntity, order_date)values(4, 4,3, 15-2-2025);

--simple index
CREATE INDEX IX_Orders_orderId
ON orders (order_id);

--composite index 
CREATE INDEX Ix_orders
on orders(order_id ASC, product_id DESC)

--alter index command
ALTER INDEX Ix_orders_orderId on orders rebuild

--delete index command 
DROP Index IX_Orders_orderId ON orders 

--Creating an Index with INCLUDED Columns
Create index orderIndex 
on orders (order_id)
INCLUDE (quntity, product_id);

--create index with fillfactor
Create index orderWithFillFactor 
on orders (order_id)
with (fillfactor = 80); 

 -- with iclude and fillfactor
CREATE INDEX IX_Orders_OrderID_ProductID
ON Orders (Order_ID, Product_ID)
INCLUDE (quntity, Order_Date)
WITH (FILLFACTOR = 90);

--select with idex 
--View all indexes on a table
select * from sys.indexes where object_id = OBJECT_ID('orders')

--View index details
EXEC sp_helpindex 'Orders';




