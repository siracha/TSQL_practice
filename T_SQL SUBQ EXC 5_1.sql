USE AdventureWorks2019
GO

-- 1. using a subquery that includes the Sales.SalesOrderDetail table, display
-- the product names and product id numbers from the Production.Product
-- table that have been ordered.

SELECT name, productID
FROM Production.Product
WHERE productID IN (
    SELECT productID 
    FROM Sales.SalesOrderDetail
)

-- 2. Change the query written in question 1 to display the products that have not
-- been ordered.

SELECT name, productID
FROM Production.Product
WHERE productID NOT IN (
    SELECT productID 
    FROM Sales.SalesOrderDetail
)

-- 5. Write a query that combines the ModifiedDate from Person.Person and
-- the HireDate from HumanResources.Employee with no duplicates in the
-- results.

SELECT ModifiedDate
FROM Person.Person 
UNION
SELECT HireDate FROM
 HumanResources.Employee
 ;