create database joins;


use joins;


create table customers
( 
customerid int not null auto_increment primary key ,
customername varchar(50),
city varchar(50),
postalcode int ,
country varchar(50)
);

create table orderinfo
(
orderid int not null primary key ,
customerid int ,
prodectname varchar(50),
quantity int
);

insert into  customers(customername, city, postalcode, country)
values
('Shanmuka Sai', 'MPL', 517325, 'India'),
('Kumar Raja', 'KPL', 517326, 'India'),
('Mohan', 'MPL', 517325, 'India'),
('Harsha', 'MPL', 517325, 'India'),
('Vardhan', 'KPL', 517326, 'India'),
('Kartik', 'Hyderabad', 500001, 'India'),
('Arjun', 'Bangalore', 560001, 'India');
select * from customers;

insert into orderinfo(orderid, customerid, prodectname, quantity)
values
(101, 1, 'Laptop', 1),
(102, 2, 'Mouse', 2),
(103, 3, 'Keyboard', 1),
(104, 4, 'Monitor', 1),
(105, 5, 'Printer', 1),
(106, 6, 'Headphones', 2),
(107, 7, 'Webcam', 1);

select * from orderinfo;

SELECT c.customerid,
       c.customername,
       o.orderid,
       o.prodectname,
       o.quantity
FROM customers c
INNER JOIN orderinfo o
ON c.customerid = o.customerid;

SELECT c.customerid,
       c.customername,
       o.orderid,
       o.prodectname,
       o.quantity
FROM customers c
LEFT JOIN orderinfo o
ON c.customerid = o.customerid;

SELECT c.customerid,
       c.customername,
       o.orderid,
       o.prodectname,
       o.quantity
FROM customers c
RIGHT JOIN orderinfo o
ON c.customerid = o.customerid;



SELECT c.customerid,
       c.customername,
       o.orderid,
       o.prodectname,
       o.quantity
FROM customers c
LEFT JOIN orderinfo o
ON c.customerid = o.customerid

UNION

SELECT c.customerid,
       c.customername,
       o.orderid,
       o.prodectname,
       o.quantity
FROM customers c
RIGHT JOIN orderinfo o
ON c.customerid = o.customerid;


insert into orderinfo(orderid, customerid, prodectname, quantity)
values(108, 8, 'cam', 2);
use joins;



SELECT COUNT(*) AS TotalCustomers
FROM customers;

SELECT COUNT(*) AS TotalOrders
FROM orderinfo;


SELECT SUM(quantity) AS TotalQuantity
FROM orderinfo;

SELECT AVG(quantity) AS AverageQuantity
FROM orderinfo;

SELECT MAX(quantity) AS MaxQuantity
FROM orderinfo;

SELECT MIN(quantity) AS MinQuantity
FROM orderinfo;


SELECT city, COUNT(*) AS TotalCustomers
FROM customers
GROUP BY city;

SELECT city, COUNT(*) AS TotalCustomers
FROM customers
GROUP BY city
HAVING COUNT(*) > 1;


SELECT UPPER(customername) AS CustomerName
FROM customers;

SELECT LOWER(customername) AS CustomerName
FROM customers;

SELECT CONCAT(customername, ' - ', city) AS CustomerDetails
FROM customers;

SELECT customername,
       SUBSTRING(customername,1,3) AS ShortName
FROM customers;

SELECT customername,
       LEFT(customername,4) AS FirstFourChars
FROM customers;

SELECT customername,
       RIGHT(customername,3) AS LastThreeChars
FROM customers;

SELECT customername,
       REPLACE(city,'MPL','Madanapalle') AS NewCity
FROM customers;

SELECT TRIM('   Hello SQL   ') AS Result;