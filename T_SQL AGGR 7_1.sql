USE AdventureWorks2019
GO

-- 1. Write a query to determine the number of customers in the Sales.Customer
-- table.

SELECT count(*) as 'number of customers'
FROM Sales.Customer
;

-- 2. Write a query that retrieves the total number of products ordered. use the
-- OrderQty column of the Sales.SalesOrderDetail table and the SUM
-- function.

SELECT SUM(OrderQty) AS 'total number of products ordered'
FROM Sales.SalesOrderDetail
;

-- 3. Write a query to determine the price of the most expensive product ordered.
-- use the UnitPrice column of the Sales.SalesOrderDetail table.


SELECT MAX(UnitPrice) AS 'the most expensive product ordered'
FROM Sales.SalesOrderDetail
;

-- 4. Write a query to determine the average freight amount in the Sales.
-- SalesOrderHeader table.

SELECT AVG(freight) AS 'the average freight amount'
FROM SALES.SalesOrderHeader
;

-- 5. Write a query using the Production.Product table that displays the
-- minimum, maximum, and average ListPrice.

SELECT MIN(ListPrice) AS 'min list price', MAX(ListPrice) AS 'max list price', AVG(ListPrice) AS 'average list price'
FROM Production.Product
;