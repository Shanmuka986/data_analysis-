create table sample
(
name varchar(10),
salary int
);

insert into sample values('sahil',4500),
('rajesh',25000),
('shannu',15000),
('vicky',55000),
('tarun',50000);

select name from sample where salary >(select avg(salary) from sample);
drop table sample;
select name from sample where salary >(select salary from sample where name = 'tarun');
select name from sample where salary =(select max(salary) from sample where salary  < (select max(salary) from sample));


CREATE TABLE department
(
    name VARCHAR(10),
    dept VARCHAR(20)
);

INSERT INTO department VALUES
('sahil','HR'),
('rajesh','IT'),
('shannu','Finance'),
('vicky','IT'),
('tarun','Marketing');

create view high as select name from sample where salary =(select max(salary) from sample);


select * from high;
drop view high;


create view employee_view as
select
    name,
    salary,
    (
        select  dept
        from department
        where department.name = sample.name
    ) as dept
from sample;

select * from employee_view;

drop view employee_view;