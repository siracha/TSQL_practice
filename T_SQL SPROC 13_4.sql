USE AdventureWorks2019
GO

-- 1. Create a stored procedure called dbo.usp_CustomerTotals instead of a
-- view from Question 2 in exercise 13-2. Test the stored procedure.


CREATE PROC dbo.usp_CustomerTotals AS
    SELECT p.Name, p.ListPrice, pch.StandardCost
    FROM Production.Product p
    JOIN Production.ProductCostHistory pch
    ON p.productID = pch.productID

RETURN 0;
;

EXEC dbo.usp_CustomerTotals
;
