use SAFE;
GO

create table test_dep(id int not null primary key, dep_name varchar(70));
insert into test_dep values (626,'cashier');
insert into test_dep values (700,'produce');
insert into test_dep values (999,'MngAsistent');

go

create table employees (emp_id int not null primary key, emp_name varchar(60), dep_id int null 

constraint FK_DEP_ID foreign key (dep_id) references test_dep(id)); /*<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<FOREIGN KEY*/
go

insert into employees values(1,'Scarlett',626);
insert into employees values(2,'Bernita',700);  
insert into employees values(3,'Mathew',999);
go

select * from employees full join test_dep on employees.dep_id=test_dep.id;

--this query served as an example of a primary and foreign keys
--as we can see we made a constraint  on dep_id from employees table
--as we can see it doesn't require to be not null like a primary key
--but as soon as we insert values like on the example below,
--it will not alklows to do so, due to the violationn of the forign key,
--so we can decide if we want to expand the security even more,
--by making the foreign column not null and unique,

insert into employees values(6,'test',10);    


