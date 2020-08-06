use SAFE;


bulk insert dbo.districts
from 'C:\TEMP\districts.txt'

with (firstrow =2, fieldterminator = ',', rowterminator = '\n'); 


select * from districts order by district_id asc;

/*BULK INSERT EXPERIMENT,

IF YOU ALREADY HAVE DATA ON A TABLE YOU CAN STILL PERFORM A BULK INSERT 
INTO A DESIRED TABLE, AND IT WILL INSERT IT AUTOMATICALLY

THE PREVIOUS EXAMPLE WAS USING A SAMPLE TABLE AND DATABASES THAT CAME FROM THE QUERY EPIC SAFEWAY QUERY
WHERE WE ALREADY CREATED TABLES AND INSERTED DATA*/ 


