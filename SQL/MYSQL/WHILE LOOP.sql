
create table testin( ids int not null auto_increment primary key, nombres varchar(255));



delimiter //
create procedure INSERTARX()
begin

declare  
declare NUM int default 1;

while NUM <= 5101
do
insert into testin (nombres) values ('mirrors, mirrors are the keys to both the misleading images of reality, or the reveal of a true self, what are you gonna believe in? the the bitter truth, or the sweet misslead lie?');

set NUM = NUM + 1;

end while;
end;
//
delimiter ;


CALL INSERTARX()
