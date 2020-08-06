/*INDEXES, SO BASICALLY 
indexes help us out on how we want to arrange data on the table,
it also helps improve the performance of the queries
for example:
if we have a the following table

tblemployees:

id,name,salary,gender

1, sam, 2500,male 
2, pam, 6500,female
3, jhon,4500,male
4, sara,5500,female
5, todd,3100,male

then if we perfrom the next query:*/

select * from tblemployee
where salary > 5000 and salary < 7000

/*we then realize that the data on column salary doesn't have 
an order, so when the query runs, it's going to look each row of the 
col.umn in order to provide the desired selection,

so we can fix the improvement by re aranngin the order of the data

by creating and index:*/

create index IX_tblemployee_salary
on tblemployee (salary ASC);
go


/* by creating the following index we re aranged the salary column order
by descending order, meaning from lowest to highest numbers

so when we do the select statement we should get the following results:*/

select * from employee;
/*
id,name,salary,gender

1, sam, 2500, male 
5, todd, 3100, male
3, jhon,4500, male
4, sara,5500,female
2, pam,6500,female

notice how the salary column now ascends on the numbers, 
but the id column now it's all messy, but when we do a select and where clause, that we did earlier, now it's not gonna have to look each
row of the table because the salary is by ascending order, and the number on salary we were looking for does not go as hihg as we want, this would help
us out oif the table has thousands pf records, but it will not affect the data, scince we can delete indexes and the table should returt to normal after that
it just re arange the order.*/













