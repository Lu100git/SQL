USE TEST;
GO
/*EXPLAINING IDENTITY ON AND OFF*/
/*the following table is an example*/
create table identity_TEST(
ID int not null identity(1,1) primary key,
name varchar(60));
go


/*so as we can see we only have 2 columns:
ID and NAME

So if we insert values on name column the identity function it's gonna provide the id automaticly
*/

insert into identity_TEST values('u') 
insert into identity_TEST values('s') 
insert into identity_TEST values('test') 
insert into identity_TEST values('x') 

select * from identity_TEST;
go


/*so as we can see we inserted 4 names and the id went from 1 to 4 by itself,
but if we try to provide an id values the identity fucntion is not gonna give us the following error,*/

insert into identity_TEST values(10,'decimo usuario') 

/*

Msg 8101, Level 16, State 1, Line 1
An explicit value for the identity column in table 'identity_TEST' can only be specified when a column list is used and IDENTITY_INSERT is ON.


so this means that we need to spicify the column and 
identity insert has to be on so
lets set identity on*/

SET IDENTITY_INSERT identity_TEST ON

/*Command(s) completed successfully.*/


insert into identity_TEST values(10,'decimo usuario') 

/*so even when we had identity set to on we still got the same error,
because we also need to specify the column wich is ID so we need to fix 
the query as the following:*/

 
insert into identity_TEST (ID, name) values(10,'decimo usuario') 


select * from identity_TEST;
go

/*we may have to use this on the escenarios where we
would delete records on identity columns, so
if we want to re use the spaces where the record was deleted we can set the identity insert
on, so scince it's stiull on it's not gonna let us do auto id insert no more 
becase we are specifiying and identity insert is on, so we turn it off,
like a switch,*/
 
 SET IDENTITY_INSERT identity_TEST OFF

 /*also if we delete all the records from the table,
 even with identity off inserft off the order of the id value will still keep counting from it was left,

 so ife we want to resert the identity values we can do it with the following query*/



 DBCC CHECKIDENT(identity_TEST, reseed, 0);
 go

 /*and that's it*/
