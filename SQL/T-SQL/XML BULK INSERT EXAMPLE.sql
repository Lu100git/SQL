--this small query creates an XML document of the desired table on the database
use SAFE;
select * from employees;
select * from employees for xml path ('employee_info'), root('employees');
go

--after selecting the xml and copy paste the xml code we transfered
--into a text file on the desktop  so we can bulk insert it on an xml backup data

--here we created a new database called SAFE
use SAFE;
go
--here we created an audit table along with a trigger so it would store information of when the xml data was inserted
--to keep a track of the xmls inserted
drop table auditdata;
go
create table auditdata(id int not null primary key identity(1,1), DATA varchar(255));
go

--TRIGGER
create trigger TGR_AUDIT_FORINSERT
ON auditdata
FOR INSERT
AS
BEGIN
insert into auditdata (DATA) values ('xml_values has been inserted on' + cast (GETDATE() as varchar(20)));
END
go



--HERE WE CREATE A TABLE  FOR THE XML BACKUPS
drop table XML_TBL_BACKUP;
create table XML_TBL_BACKUP(id int not null  primary key identity(1,1), tables XML);
go

--this query it's like bulk insert but with xml info on text files
--we need to test if it would work with xml files 
insert into XML_TBL_BACKUP (tables)
select * from openrowset(
bulk 'C:\Users\Administrator\Desktop\xmlbackup.txt',
single_blob) as x;

go
select * from auditdata;
select * from XML_TBL_BACKUP;

go



