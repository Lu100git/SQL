/*STORED PROCEDURE EXAMPLES*/
create database sample1
go
use sample1
go

create table test_table(id int not null primary key, name varchar(60));
go

insert into test_table values( 
1,'uno'),
(2,'dos'),
(3,'tres'),
(4,'cuatro'),
(5,'trest');
go

/*procedure1*/
create proc sp_getall
as
begin
select * from test_table
end
go


/*procedure2*/
create proc sp_test1 
@name varchar(60)
as
begin
select name from test_table
where name = @name
end




exec sp_getall


exec sp_test1 'uno'


/* as we can see it is almost identical to triggers,
the difference is that we do not need to nescesarily declare variables
but 
we can give them parameters
that way twhen we execute the procedure
it's gonna expect the parameters assigened


the stored procedures work as it's name says
instead of writing the same query over and over again
we name a precidure after the query we desire,
and just excecute the store precidure as a shortcut

also we can encript it as well, or we can use stored procedure
for programing in order to prevent SQL INJECTIONS from
malicuis people*/








