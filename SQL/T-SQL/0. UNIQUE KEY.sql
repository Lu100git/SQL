--To create the unique key using a query:
Alter Table Table_Name
Add Constraint Constraint_Name Unique(Column_Name)

--Both primary key and unique key are used to enforce, the uniqueness of a column. So, when do you choose one over the other?
--A table can have, [only one primary key]. 




/*****If you want to enforce uniqueness on 2 or more columns, then we use unique key constraint.***********/



--What is the difference between Primary key constraint and Unique key constraint? This question is asked very frequently in interviews.




--1. A table can have only one primary key, but more than one unique key



--2. Primary key does not allow nulls, where as unique key allows one null



--To drop the constraint
--1. Right click the constraint and delete.



--2. Using a query
Alter Table tblPerson
Drop COnstraint UQ_tblPerson_Email
