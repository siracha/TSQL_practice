CREATE VIEW dbo.vw_Products AS 
SELECT p.Name, p.ListPrice, pch.StandardCost
FROM Production.Product p
JOIN Production.ProductCostHistory pch
ON p.productID = pch.productID
;

Select * 
FROM dbo.vw_Products
;