delimiter //
create procedure RDMDATA()
begin 
declare var int default 1;

while var <= 100 
do
insert into table1 (emp_name, salary_hr) values ('name1', 15.00);
insert into table1 (emp_name, salary_hr) values ('name2', 20.00);

set var = var + 1;

end while;
end;
//
delimiter ;


select * from table1;



/*the reason why we used an stored procedure to insert random data on a table unlike t-sql,

is because, we cannont declare variable on mysql unless it's inside an stored procedure,

and at the same time we explain how we can ceate an stored procedure on mysql, 

ANYWAYS,

in order to use the stored procedure we use call instead of exec, 

example....
 

CALL RDMDATA()


if this doesn't work try ruyning it without call 
