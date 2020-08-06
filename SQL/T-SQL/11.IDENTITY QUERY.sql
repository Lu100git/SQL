use TEST;
go


--remeber the identity value goes before the primary key
--therwise it's gonna result as an error
create table empleados( id int not null identity(1,1) primary key, nombre varchar(60));
