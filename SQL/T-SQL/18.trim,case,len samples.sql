/* examples of left trim and right trim*/
create database example;
go
use example;
go

create table sample_table( id int not null primary key, name varchar(60), last_name varchar(90), example_column int null);
go

insert into sample_table values(
1, '       sample1', 'las1', null),
(2, 'good1', 'lastname', null),
(3, '     test', 'any', null),
(4, '     badname', 'none', null),
(5,'dany', 'someone', null),
(6, '        James', 'WRIGHT', null);
go


select * from sample_table;
go                                            /*  on the last query above we created a new database and a new table,
                                              we also porpusley inserted messy values in order to provide an example
                                              of left and right trim, sicne i have no time and i give no fucks
                                              i only gonna recreate the left trim because iot takes time to do all DHIS SHIET
                                              so REMEMBER, right trim is the same as left trim, but on the right side
                                              thats all.*/

/*before we beging heres a few examples of advance selection*/


select name, last_name, name+ ' - '+last_name from sample_table;  /*this command will add name and last name on another column 
                                                                   by asking to select both name and last name,
																   as we can see on the results window the new column appears as
																   no column name, in orther to give it a name we allias the selected columns
																   like the following example:*/

select name, last_name, name+'---'+last_name as full_name from sample_table	

/*having clirified that we move now on left and rigt trim
as we can see on the previous commands the results were messy
and the name columns there were a lot of withe spaces on the left
so in orther to get rid of the spaces we trim them with LTRIM*/



select ltrim(name), last_name from sample_table;
go


select ltrim(name), last_name, ltrim(name+'-'+last_name) as FULL_NAME from sample_table;


/*that's basically it, the right trim it's the same thing but on right withe spaces,
the cool thing is that we can also insert a function inside a fucntion 
if we need to use both trims on specific colums,
example:*/
 
select ltrim(rtrim(name)), last_name from sample_table;


/*eassy....

also rember, when selecting columns we need to add comas   ,
in order to select the next column
that's why when there is only 2 columns on a table by inserting a comma
before the FROM it give us a syntax error, therefore if we write and add with  +
we can merge 2 columns and SQL will create a temp column on the table 
describing what we wanted to select in it, like the previous example,
name plus last name and a char - in order to divide name and last name from the row


/*EXTRAS UPPER AND LOWER FUNCTIONS*/

/*this functions allow us to do the same ting as LTIMR AND RTRIM

but instead of triming withe spaces, it would convert the selected columns on upper or lower cases

we can also chain the same ltrim function with upper fucntion we will provide it on the following query example
*/*/


select ltrim(upper(name)), last_name, ltrim(lower(name+ '---'+last_name)) from sample_table;

/* easier and simpler example*/


select upper(last_name) as Last_Names from sample_table


/*last but not least

the function len, it will let us know how many characters are on a row
that way if it displays more characters than ususal we can confirm
that a row might have withe spaces*/

select last_name, len(last_name) as #_of_characters from sample_table



