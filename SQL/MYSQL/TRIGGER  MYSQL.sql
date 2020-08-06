create database peets;

use peets;

create table employees (id int not null primary key, empname varchar(60));

create table empaudit 
( id int not null AUTO_INCREMENT primary key, `DATA` varchar(255), `date_inserted` datetime);


create trigger tgr_employees_forinsert after insert on employees for each row

insert into empaudit (`DATA`,`date_inserted`) values ('employee has been inserted',now());


insert into employees values (1, 'test');

insert into employees values (2, 'test2');


select * from employees;


select * from empaudit;




