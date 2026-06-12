use ds;

CREATE TABLE Employee (
    EmpID INT AUTO_INCREMENT PRIMARY KEY,
    EmpName VARCHAR(50),
    Salary DECIMAL(10,2),
    Department VARCHAR(30)
);

drop table Employee;
CREATE TABLE Employee
(
first_name varchar(50),
last_name varchar(50),
title varchar(50),
age int,
salary int    
);

alter table Employee add gender varchar(10);  

desc Employee;

alter table Employee modify title varchar(100);

alter table Employee drop column gender;

insert into  Employee values(
"thugadam",
"shanmukasai",
"it",
20,                  
25000
);

ALTER TABLE employee RENAME TO myemployee_ss0908;

select * from myemployee_ss0908;

alter table myemployee_ss0908 
rename column first_name to f_n;

desc myemployee_ss0908;

-- dql comands 

-- insert command 
insert into  myemployee_ss0908
values
('Ravi','Kumar','Manager',35,60000),
('Priya','Sharma','Developer',28,50000),
('Rahul','Patil','Analyst',30,45000),
('Anu','Reddy','Developer',26,55000),
('Kiran','Singh','Manager',40,70000);

-- 	select command 
select * from myemployee_ss0908;

select * from myemployee_ss0908 where age in (20,30);

select f_n, last_name
from myemployee_ss0908;

select *
from myemployee_ss0908
where salary > 50000;

select * from myemployee_ss0908 limit 3 ;

create table emp_info 
(
id int not null primary key,
fn varchar(50),
ln varchar(50),
age int,
city varchar(10),
state varchar(10) 
);

drop table emp_info;

create table empinfo 
(
id int not null auto_increment primary key,
fn varchar(50),
ln varchar(50),
age int,
city varchar(10),
state varchar(10) 
);

insert into empinfo(fn, ln, age, city, state)
values
('shanmukasai','thugadam',23,'MPL','AP'),
('kumar','raja',25,'KPL','AP'),
('mohan','madhamanchi',20,'MPL','MP'),
('harsha','nava',19,'MPL','MP'),
('vardhan','kumar',20,'KPL','AP'),
('kartik','kumar',30,'MPL','TS'),
('Arjun','Reddy',20,'MP','OD');

select * from empinfo ;
select * from empinfo where fn='kumar';
select * from empinfo where age >=20;
select * from empinfo
where city = 'MPL';
select * from empinfo
where age >=30;
select avg(age) as avg_age
from empinfo;
select max(age) as Maximumage from empinfo;
select min(age) as Minimmage from empinfo;
select count(*) as total_count_of_table from empinfo;
select * from empinfo where fn like '%k';
select * from empinfo where ln like '%y';
select * from empinfo;
select fn, ln from empinfo;
select fn from empinfo;
select ln from empinfo; 
select fn,ln from empinfo where id= 1;

-- DML COMANDS 
insert into empinfo(fn, ln, age, city, state)
values
('surya','kumar',30,'BAN','KA');

update  empinfo set age = 40 where id=8;

insert into empinfo(fn, ln, age, city, state)
values ('Ramesh', 'Kumar', 24, 'BLR', 'KA'),
('Sai', 'Teja', 22, 'HYD', 'TS'),
('Krishna', 'Rao', 28, 'VJA', 'AP');



create table empdata
(
id int not null auto_increment primary key ,
fn varchar(20),
ln varchar(20),
des varchar(50),
age int,
salary decimal(10,2)
);
insert into  empdata(fn, ln, des, age, salary)
values
('jonie', 'weber', 'programmer', 23, 28000.00),
('Bob', 'Williams', 'secretarie', 25, 55000.00),
('Dirk', 'smith', 'programmer II', 20, 35000.00);

call `add`(11,'Shannu', 'T', 'programmer', 21, 28000.00);
call `add`('S', 'T', 'coder', 21, 28000.00);
set sql_safe_updates=0;
select * from empdata;
-- 1
update empdata set ln='Weber-Williams' where id = 1;
select * from empdata;
-- 2
update empdata set age=age+1 where id =3;

-- 3
update empdata set des='Administratie Assistat' where des='secretarie';

alter table empdata modify des varchar(50);
-- 4
update empdata set salary=salary*3500 where salary< 30000;
drop table empdata;

-- 5
update empdata set salary=salary*3350 where salary< 4500;


-- 6
update empdata set des='programmer III' where des= 'programmer II';
-- 7
update empdata set des='programmer II' where des= 'programmer';

delete from empdata where des= 'programmer II';


INSERT INTO empdata(fn, ln, des, age, salary)
VALUES
('Shanmuka', 'Thugadam', 'Manager', 23, 50000.00),
('Kumar', 'Raja', 'Developer', 25, 45000.00),
('Mohan', 'Madhamanchi', 'Analyst', 20, 35000.00),
('Harsha', 'Nava', 'Tester', 19, 30000.00),
('Vardhan', 'Kumar', 'Developer', 20, 40000.00),
('Kartik', 'Kumar', 'Manager', 30, 60000.00),
('Arjun', 'Reddy', 'Analyst', 20, 38000.00);

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