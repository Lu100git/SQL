use PEETS;
GO

create table test( id int null, name varchar(60), las_name varchar(60), slary numeric(2), dep numeric(3));
go

insert into test 
select * from employees
where department_id = 120;
go 

select * from test;
go

create table test2(name varchar(60), las_name varchar(60), slary numeric(2), dep numeric(3));
go



insert into test2
select name, last_name, salary_hr, department_id from employees
where department_id = 120;
go 

select * from test2;
go
 


/* ok so this was an example of how we can copy values from one table to another table, 

if you noticed on the second isert we selected the columns and not all *

because whenwe do a select *, the data will not match the columns,

and it would gives us an error, so in order to fix it we specify the columns 