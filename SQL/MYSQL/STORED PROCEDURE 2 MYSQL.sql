

delimiter //
create procedure INSERTARX()
begin

declare @TEXT1 varchar(4);
set @TEXT1 = 'AX55';

declare @NUMBERS int default 65739400; 
declare @SWITCH boolean true;

declare NUM int default 1;

while NUM <= 20
do

create table cast(@TEXT1 + @NUMBERS as varchar(255)) (ids int not null auto_increment primary key, col1 varchar(255), col2 varchar(255));
set @NUMBERS = @NUMBERS + 1;
set @SWITCH = false;
if not @SWITCH then

declare @loop1 int default 1;

while @loop1 <= 10000 do
insert into  (col1, col2) values ('mirrors, mirrors are the keys to both the misleading images of reality,', ' or the reveal of a true self, what are you gonna believe in? the the bitter truth, or the sweet misslead lie?');
set @loop1 = @loop1 + 1;


end while;
set @SWITCH = true;
end if;

set NUM = NUM + 1;

end while;
end;
//
delimiter ;


CALL INSERTARX()