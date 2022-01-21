USE AdventureWorks2019
GO

-- 1. Write a query that returns a count of detail lines in the Sales.
-- SalesOrderDetail table by SalesOrderID. include only those sales that
-- have more than three detail lines.

SELECT count(*) 'count of detail lines', SalesOrderID
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
HAVING count(*) > 3
;

-- 2. Write a query that creates a sum of the LineTotal in the Sales.
-- SalesOrderDetail table grouped by the SalesOrderID. include only those
-- rows where the sum exceeds 1000.

SELECT SUM(LineTotal) 'sum of the LineTotal', SalesOrderID
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
HAVING sum(LineTotal) > 1000
;

-- 3. Write a query that groups the products by ProductModelID along with a
-- count. display the rows that have a count that equals 1.

SELECT count(*) 'count of products', ProductModelID, Color
FROM Production.Product
GROUP BY PRODUCTMODELID, color
;

-- 4. Change the query in Question 3 so that only the products with the color blue or
-- red are included.

SELECT count(*) 'count of products', ProductModelID, color
FROM Production.Product
GROUP BY PRODUCTMODELID, color
HAVING color = 'blue' OR color = 'RED'
;