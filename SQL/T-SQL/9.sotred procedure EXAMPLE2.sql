
CREATE PROCEDURE dbo.InsertUnitMeasure  
   

 @UnitMeasureCode nchar(3),  
 @Name nvarchar(25)  


AS   
BEGIN  
SET NOCOUNT ON; 
 -- Update the row if it exists.      

UPDATE Production.UnitMeasure  SET Name = @Name  WHERE UnitMeasureCode = @UnitMeasureCode  


-- Insert the row if the UPDATE statement failed.  
IF (@@ROWCOUNT = 0 )  BEGIN  
    
INSERT INTO Production.UnitMeasure (UnitMeasureCode, Name)  VALUES (@UnitMeasureCode, @Name)  
END  
END;  
GO  


EXEC InsertUnitMeasure @UnitMeasureCode = 'ABC', @Name = 'New Test Value';  
