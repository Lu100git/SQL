USE DATABASE1;

select * from products;

--there was no primary key on prod_id
alter table products add primary key (PROD_ID);
/*********************************************/
go
 select PROD_ID, PROD_NAME, PROD_SUBCATEGORY, PROD_LIST_PRICE,
convert(decimal(6,2), PROD_LIST_PRICE *.75) AS [15%_discount],
convert(decimal(6,2), PROD_LIST_PRICE *.50) AS [50%_discount],
convert(decimal(6,2), PROD_LIST_PRICE *.15) AS [75%_discount],
sum(PROD_LIST_PRICE) over(order by PROD_ID)  AS TOTAL,
count(PROD_ID) over() as [#products]
from products
go

/*****VARIABLE**************/
declare @temp_table table(
id int not null,
name varchar(60),
category varchar(60),
price money);

insert into @temp_table 
select top (10) PROD_ID, PROD_NAME, PROD_SUBCATEGORY, PROD_LIST_PRICE
from products order by PROD_LIST_PRICE DESC;

select id,name,category,price, sum(price) over(order by id) as total from  @temp_table

/*************************************************************************/

go

use DATABASE1;
go
select PROD_NAME, PROD_LIST_PRICE from products

go


DECLARE @temp_tbl TABLE(
temp_id int identity(1,1),
name varchar(255),
price money);


insert into @temp_tbl
select PROD_NAME, PROD_LIST_PRICE from products ORDER BY PROD_ID


create table temp_rec(
ID_ int not null,
NOMBRE varchar(255),
PRECIO money);

insert into temp_rec
select * from @temp_tbl;

select * from temp_rec
go

/*******************************************************************************/

--use COSTCO
--GO

select NOMBRE, PRECIO, 
convert(numeric(6,2), PRECIO * .10) as [calculo_de_10%],
convert(numeric(6,2), PRECIO * .20) as [calculo_de_20%],
convert(numeric(6,2), PRECIO + PRECIO * .10) as [calculo_10%],
convert(numeric(6,2), PRECIO + PRECIO * .20) as [calculo_20%]
from temp_rec




--SAME BUT MORE TIDDIUS
/*convert(numeric (6,2),PRECIO + convert(numeric(6,2), PRECIO * .10)) as [precio + su 10%]
