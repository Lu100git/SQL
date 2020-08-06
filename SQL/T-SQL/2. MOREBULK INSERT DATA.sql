drop table users;
go
create table users(
[user_id] int not null primary key,	
username varchar(60),
first_name varchar(60),
last_name varchar(120),
gender varchar(10),
[password] varchar(120) not null,
[status] bit null);
go

bulk insert dbo.users
from 'C:\DATA\DATA.TXT'
with(firstrow = 2,  rowterminator = '\n');
go

select * from users;
go



/* ok so the we were having error and at the same time we wern't

the query was runing fine, but we adding a fieldtrminator on with after from

we tried to go with  = \n as the row terminator,

so we removed the fieldterminators since there was none on the original document,

sometimes we gotta be careful and not asume too fast LEL*/