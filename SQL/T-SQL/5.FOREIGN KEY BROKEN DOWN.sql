create table employees (
emp_id int not null primary key,
assig_department int not null,              /*<<<<<< 1st foreign key*/
emp_name varchar(60),
emp_age numeric(3,0),
emp_gender char(1),
emp_dob date,
emp_address varchar(60),
district_id int not null      /*<<<<<<<<second foreign key*/

constraint FK_departments foreign key (assig_department) references SAFE_DEPARTMENTS,
constraint FK_distric foreign key (district_id) references districts);


/*THE FOLLOWING QUERY IS AN EXAMPLE OF A TABLE CREATION AND 2 FOREIGN KEYS CREATION

IN ORDER TO UINDERSTAND THE THE FOREIGN KEY WE ARE GONNA BREAK IT DOWN


constraint        FK_departments        foreign key      (assig_department)           references      SAFE_DEPARTMENTS);
   statement      name of the            STATEMENT          column used                SATEMENT        referenced table  
                  KEY(ANY NAME)                             from table                                 (another table
                                                                                                        from the database)    

/***********************IMPORTANT*************************/

/*IN ORDER TO CREATE MULTIMPLE FOREIGN KEYS JUST ADD A COMMA AFTER WE
ARE DONE WITH THE FIRST CONSTRAINT

THEN WE JUST RECREATE IT BUT WE CHOOSE THE DESIRED COLUMNS AND TABLES.

ALSO

WHEN ASSIGNING A NAME FOR A FOREIGN KEY ON ANOTHER TABLE
THE NAME CANNOT BE REPEATED SO 

IF WE TRY FK_DEPARTMENTS ON ANOTHER TABLE AND WE
EXECUTE IT, IT WOUL GIVE US ERROR
SO WE JUST CHANGE THE NAME

THATS IT!!!!! EZ!*/

