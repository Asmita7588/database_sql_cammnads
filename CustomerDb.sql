create database customerDb;

use customerDb;

create table Customer(customer_id int PRIMARY KEY identity(1,1),
first_name varchar(50) NOT NULL,
last_name varchar(50) NOT NULL,
phone varchar(15) NOT NULL,
email varchar(50) NOT NULL,
city varchar(50) NOT NULL,
state varchar(50) NOT NULL,
street varchar(50),
zip int,
);


insert into Customer(first_name,last_name,phone, email, city,state,street,zip)values('chetan','Girhepunje','75884574755','girhepunjeasmita25@gmail.com', 'khat','MH','road no 4, sector 1', 345678);
insert into Customer(first_name,last_name,phone, email, city,state,street,zip)values('bhumesh','Girhepunje','758845233456','bhumesh@gmail.com', 'khat','MH','road no 3, sector 18', 234678);
insert into Customer(first_name,last_name,phone, email, city,state,street,zip)values('Ankita','nimkar','75884572345','ankitanimkar@gmail.com', 'sirat','MH','road no 24, sector 12', 334678);
insert into Customer(first_name,last_name,phone, email, city,state,street,zip)values('Aastha','Girhepunje','12345574755','girhepunjeastha@gmail.com', 'nagpur','MH','road no 10, sector 11', 343458);
insert into Customer(first_name,last_name,phone, email, city,state,street,zip)values('Aniket','dangre','758845655','aniketdangre@gmail.com', 'tarsa','MH','road no 5, sector 14', 343458);
insert into Customer(first_name,last_name,phone, email, city,state,street,zip)values('Pranay','dangre','75886784755','pranaydangre@gmail.com', 'tarsa','MH','road no 18, sector 13', 344578);
insert into Customer(first_name,last_name,phone, email, city,state,street,zip)values('Pravin','mehar','758845656755','pravinmehar@gmail.com', 'mohalii','MH','road no 34, sector 45', 334678);
insert into Customer(first_name,last_name,phone, email, city,state,street,zip)values('Ranjani','bhoyar','75884544755','rajanibhoyar@gmail.com', 'tumsar','MH','road no 5, sector 1', 345478);

insert into Customer(first_name,last_name,phone, email, city,state,street,zip)values('chetan','Girhepunje','75884574755','girhepunjeasmita25@gmail.com', 'khat','MH','road no 4, sector 1', 345678);
insert into Customer(first_name,last_name,phone, email, city,state,street,zip)values('bhumesh','Girhepunje','758845233456','bhumesh@gmail.com', 'khat','MH','road no 3, sector 18', 234678);
insert into Customer(first_name,last_name,phone, email, city,state,street,zip)values('Ankita','nimkar','75884572345','ankitanimkar@gmail.com', 'sirat','MH','road no 24, sector 12', 334678);
insert into Customer(first_name,last_name,phone, email, city,state,street,zip)values('Aastha','Girhepunje','12345574755','girhepunjeastha@gmail.com', 'nagpur','MH','road no 10, sector 11', 343458);
insert into Customer(first_name,last_name,phone, email, city,state,street,zip)values('Aniket','dangre','758845655','aniketdangre@gmail.com', 'tarsa','MH','road no 5, sector 14', 343458);
insert into Customer(first_name,last_name,phone, email, city,state,street,zip)values('Pranay','dangre','75886784755','pranaydangre@gmail.com', 'tarsa','MH','road no 18, sector 13', 344578);
insert into Customer(first_name,last_name,phone, email, city,state,street,zip)values('Pravin','mehar','758845656755','pravinmehar@gmail.com', 'mohalii','MH','road no 34, sector 45', 334678);
insert into Customer(first_name,last_name,phone, email, city,state,street,zip)values('Ranjani','bhoyar','75884544755','rajanibhoyar@gmail.com', 'tumsar','MH','road no 5, sector 1', 345478);

insert into Customer(first_name,last_name,phone, email, city,state,street,zip)values('Asmita','Girhepunje','75884574755','girhepunjeasmita25@gmail.com', 'khat','MH','road no 4, sector 1', 345678);

select * from Customer;

select first_name , last_name from Customer;

select first_name , last_name, email from Customer;

select * from Customer where city ='kHat';

select * from Customer where city ='kHat' order by first_name;

select city, count(*) as CityCount from Customer where state ='MH' group by city order by city;

select city, count(*) as CityCount from Customer where state ='MH' group by city having COUNT(*) >2 order by city;