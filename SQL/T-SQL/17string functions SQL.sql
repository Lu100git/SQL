/*  this 
function will let us know witch ascii
nuymber each character belogns to*/
select ascii('A')   /*cap A is equals to 65, ascii returns integers*/
print ascii('A')

select char(65)   /*char 65 will return cap A*/
print char(65)




/*while loop example of getting the alphabets in ascii*/

declare @start int
set @start = 65        /*<<<we told the program that @start it's the same as 65 because we declared @ start as an int and we seted to int 65*/
while (@start <= 90)    /*<<while @start wich is equal to 65 is less or equals to 90*/
begin
     select CHAR(@start)
	 set @start = @start + 1
end
     
/*same query instead of selecting it we are gonna print the results like python*/
declare @start2 int
set @start2 = 65        
while (@start2 <= 90)    
begin
     print CHAR(@start2)
	 set @start2 = @start2 + 1
end
     


