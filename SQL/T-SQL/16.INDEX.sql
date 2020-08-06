create index IX_passwords_ascending_order
on users ([password] asc);
go


select [password] from users;
go

select * from users;
go

create index IX_ID_DESC
on users ([user_id] desc);
go

select [user_id], [password] from users;
/*mess, not organized*/

select * from users;
/*this is organized due to we selected columns, and they had an index,
so, so far regular indexes affect when we select the indexed column, but not as a whole
so far.


basically indexes are used in cases where we founbd ourselves on HEAP data,

meaning random data on columns with no order,

this is why we would create indexes,

we can go with clusterted and non clustered,

clustered, = like a primary key, cannon have more than 1 per table,

nonclustered, can have multiples,

