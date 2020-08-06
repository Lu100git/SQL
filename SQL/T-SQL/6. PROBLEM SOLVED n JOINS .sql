
use DATABASE100;

SELECT * FROM districts


drop table employees;

create table employees (

emp_id int not null primary key,
assig_department int not null, 
emp_name varchar(60),
emp_age numeric(3,0),
emp_gender char(1),
emp_dob date,
emp_address varchar(60),
district_id int null);


insert into employees values(6110	,100	,'Roberto',	30,	'M',	'1991-10-25',	'Adress1',	99);
insert into employees values(61102	,300	,'Edie',	35,	'M',	'1990-11-13',	'Adress2',	13);
insert into employees values(61103	,400	,'Alfredo',	26,	'M',	'1995-01-08',	'Adress3',	21);
insert into employees values(61104	,600	,'no name',	99,	'n',	'1985-12-12',	'no address',10);



alter table employees
add constraint FK_departments foreign key (assig_department) references DEPARTMENTS;

alter table employees
add constraint FK_district foreign key (district_id) references districts;

SELECT * FROM employees full join districts on employees.district_id=districts.district_id;

select * from employees;
select * from districts;

insert into districts values (10, 'testing');




/*SOLVED 

SO THE PROBLEM WAS AN ERROR ON ALTER STATEMENT*/

alter table employees
add constraint FK_district foreign key (district_id) references districts;

/*WHENEVER WE TRIED TO ALTER THE TABLE IT WOULD SHOW US ERRORS 
IT WAS ADDRESING THAT THERE WAS AN ERROR ON DISTRICTS TABLES,
SO WE PROSCEED TO DO A FULL JOIN ON BOTH TABLES AND WE FOUND OUT 
THERE WAS A VALUE ON EMPLOYEES TABLE THAT DID NOT EXISTED ON 
DISTRICTS TABLE,

SO WHAT WE DID WE CREATED A DUMMY DATA TEST BY INSERTING VALUES ON DISTRICRTS TABLE 

LONG SOTRY SHORT

EMPLOYEES TABLE HAD AN EMPLOYEE WITH DISTRICT ID = 10
AND ON DISTRICTS TABLE THERE WAS NO 10 ON PRIMARY KEY COLUMN
WE INSERTED A 10 VALUE WITH NAME TEST
RUNNED THE ALTER STATEMENT, AND IT WORKED


*/








