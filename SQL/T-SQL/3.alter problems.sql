use TEST;
go


select prod_id, price *.50  as discounted_price from products_prices;

alter table products_prices drop column price 
go

alter table products_prices add price numeric(3,2);
alter table products_prices alter column price numeric(5,2);
go

select * from products_prices;

UPDATE products_prices 
set price = 1.99 
where prod_id = 1

UPDATE products_prices 
set price = 2.00 
where prod_id = 2

UPDATE products_prices 
set price = 5.00 
where prod_id = 3

/*this is where we struggle with the numeric asignation, this is why we change it from 3,2 to 5,2*/
UPDATE products_prices 
set price = 12.99 
where prod_id = 4

select * from products_prices;

select prod_id, price *.5  as discounted_price from products_prices; /*<<<well find another way*/

/*note, i was strugling with the the alter statement, so i couldn't add rows due to null values on the table,
by droping a column and creating it again, instead of modifing it, we got the new column full of nulls,
and it would let me inset values, so what i did, even tho i fucked up the column again,
after the modification, i did an update instead of inseting due to qeury errors,

so in a case like this i would recomend making a results back up, or bcp back up,

then creating the table again from scratch and do a bulk insert, 
but if you modification is minimal, then i would go for the alter column but before droping columns do a backup just in case*/


