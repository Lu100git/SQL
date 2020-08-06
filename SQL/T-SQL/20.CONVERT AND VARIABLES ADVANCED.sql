USE DATABASE1;

select * from products;


--there was no primary key on prod_id
alter table products add primary key (PROD_ID);
/*********************************************/


select * from products;

/*query works, but give us wring total
because of select top */

select top (10) PROD_ID, PROD_NAME, PROD_SUBCATEGORY, PROD_LIST_PRICE,
convert(decimal(6,2), PROD_LIST_PRICE *.75) AS [15%_discount],
convert(decimal(6,2), PROD_LIST_PRICE *.50) AS [50%_discount],
convert(decimal(6,2), PROD_LIST_PRICE *.15) AS [75%_discount],
sum(PROD_LIST_PRICE) over(order by PROD_ID)  AS TOTAL,
count(PROD_ID) over() as [#products]
from products order by PROD_LIST_PRICE DESC;
go


/*simplified table + discounts and totals*/

select PROD_ID, PROD_NAME, PROD_SUBCATEGORY, PROD_LIST_PRICE,
convert(decimal(6,2), PROD_LIST_PRICE *.75) AS [15%_discount],
convert(decimal(6,2), PROD_LIST_PRICE *.50) AS [50%_discount],
convert(decimal(6,2), PROD_LIST_PRICE *.15) AS [75%_discount],
sum(PROD_LIST_PRICE) over(order by PROD_ID)  AS TOTAL,
count(PROD_ID) over() as [#products]
from products
go

/*this is the solution for the first query that gave us the wrong total*/

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

