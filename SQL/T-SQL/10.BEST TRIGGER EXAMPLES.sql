use prueba;
go
create table testAUDIT (ID int not null identity(1,1) primary key, RECORD varchar(255));
go
create table test (emp_id int not null primary key, name varchar(50));
go
/************************************************************************************************************************/
create trigger TR_EMPLOYEES_FORUPDATE
on test
for update
as begin
declare @ID int
select @ID = emp_id from inserted
insert into testAUDIT values('employee with ID#' +' '+CAST(@ID as varchar(9)) + ' '+ 'has been updated on' +' '+CAST(getdate() as varchar(20)));
END
GO
/**************************************TRIGGER2*************************************************************/
create trigger TR_EMPLOYEES_FORINSERT
on test
for insert
as begin
declare @ID2 int
select @ID2 = emp_id from inserted
insert into testAUDIT values('employee with ID#' +' '+CAST(@ID2 as varchar(9)) + ' '+ 'has been inserted on' +' '+CAST(getdate() as varchar(20)));
END
GO
/*************************************TRIGGER3******************************************************************/
create trigger TR_EMPLOYEES_FORDELETE
on test
for delete
as begin
declare @ID3 int
select @ID3 = emp_id from deleted
insert into testAUDIT values('employee with ID#' +' '+CAST(@ID3 as varchar(9)) + ' '+ 'has been deleted on' +' '+CAST(getdate() as varchar(20)));
END
GO
/***************insert delete and update*********************************************/
insert into test values (777,'luck');
go
insert into test values(3,'test');
go
insert into test values(4,'yo');
go
delete from test where emp_id = 4;
go
update test
set name = 'lucky'
where emp_id = 777;
go
select * from test;
select * from testAUDIT;
go
