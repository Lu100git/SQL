use ORG;
GO

CREATE TABLE test(ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY, NOMBRE VARCHAR(60));

insert into test (NOMBRE) VALUES ('YES');
GO

select * from test;
go


/* remember wen we work with identity columns,

if we try to insert data on identity columns it will give us an error of setting identity on
there is a procedure of how to set it on, but we are not gonna focus on that right now

what i want to make clear is that we are only inserting a name values on the previous command example

ALSO
ON IDENTITY COLUMN THE (1,1) IS DESCRIBED AS: IDENTITY [  (SEED,INCREMENT)  ]

seed

Is the value that is used for the very first row loaded into the table.





increment

Is the incremental value that is added to the identity
 value of the previous row that was loaded.


You must specify both the seed and increment or neither. 
If neither is specified, the default is (1,1).
*/