 --CREATING VIEW EXAMPLE
 create view TOTALES_TEMPORALES(id, name, category, price, total)
 as
  select top (10) PROD_ID, PROD_NAME, PROD_SUBCATEGORY, PROD_LIST_PRICE,
sum(PROD_LIST_PRICE) over(order by PROD_ID)  AS TOTAL
from products order by PROD_LIST_PRICE DESC;
go
/*********************************************************************/
