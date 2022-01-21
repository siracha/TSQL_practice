USE AdventureWorks2019
GO

-- 1. Write a query that shows the total number of items ordered for each product.
-- use the Sales.SalesOrderDetail table to write the query.

SELECT COUNT(OrderQty) AS 'total number of items ordered for each product', Name AS 'product name'
FROM Sales.SalesOrderDetail AS sod
JOIN Production.Product AS p
ON p.productID = sod.productID
GROUP BY NAME
;

-- 2. Write a query using the Sales.SalesOrderDetail table that displays a
-- count of the detail lines for each SalesOrderID.

SELECT COUNT(*) AS 'count of the detail lines', SalesOrderID 
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
;

-- 3. Write a query using the Production.Product table that lists a count of the
-- products in each product line.

SELECT COUNT(*) 'count of the products', productLine  
FROM Production.Product
GROUP BY productLine
;

-- 4. Write a query that displays the count of orders placed by year for each
-- customer using the Sales.SalesOrderHeader table.

SELECT YEAR(orderdate) 'year', customerID, COUNT(*) 'count of orders'
FROM Sales.SalesOrderHeader
GROUP BY YEAR(orderdate), customerID
;