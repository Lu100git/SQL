create table departments(
dep_id int not null primary key,
dep_name varchar(60));
go

insert into departments values
(100, 'Branch manager'),
(115, 'Branch Asistant manager'),
(120, 'Baristas'),
(130, 'Cashier');
go

create table employees(
emp_id int not null primary key,
name varchar(60),
last_name varchar(90),
salary_hr numeric(2),
department_id int not null);
go

insert into employees values 
(1, 'David','Jhon', 50, 100),
(2, 'Rogers','White', 15, 120),
(3, 'Maria','Ramirez', 18, 120),
(4, 'Paul','Miller', 20, 130),
(5, 'Dez','Miller', 18, 130),
(6, 'Chris','Bell', 30, 115);
go

alter table employees
add constraint FK_departments foreign key (department_id) references departments(dep_id); 
go

select * from employees full join departments on employees.department_id = departments.dep_id;
go

create view TEST_VIEW(nombre, salario, departamento)
as
select name, salary_hr, dep_name from employees, departments
where employees.department_id = departments.dep_id;
go

select * from TEST_VIEW order by salario asc;