USE AdventureWorks2019
GO

-- 1. the HumanResources.Employee table does not contain the
-- employee names. Join that table to the Person.Person table on the
-- BusinessEntityID column. Display the job title, birth date, first name, and
-- last name.

SELECT p.firstname, p.lastname, hr.jobtitle, hr.BirthDate
FROM  HumanResources.Employee AS hr
JOIN Person.person AS p
ON hr.BusinessEntityID = p.BusinessEntityID;

-- 2. The customer names also appear in the Person.Person table.
-- Join the Sales.Customer table to the Person.Person table. The
-- BusinessEntityID column in the Person.Person table matches
-- the PersonID column in the Sales.Customer table. Display the
-- CustomerID, StoreID, and TerritoryID columns along with the
-- name columns.

SELECT p.firstname, p.lastname, s.CustomerID, s.StoreID, s.TerritoryID
FROM Sales.Customer AS s
JOIN Person.Person AS p
ON p.BusinessEntityID = s.PersonID;

-- 3. Extend the query written in Question 2 to include the Sales.
-- SalesOrderHeader table. Display the SalesOrderID column along
-- with the columns already specified. The Sales.SalesOrderHeader
-- table joins the Sales.Customer table on CustomerID.

SELECT p.firstname, p.lastname, c.CustomerID, c.StoreID, c.TerritoryID, s.SalesOrderID
FROM Sales.Customer AS c
JOIN Person.Person AS p
ON p.BusinessEntityID = c.PersonID
JOIN Sales.SalesOrderHeader AS s
ON s.CustomerID = c.CustomerID;

-- 4. Write a query that joins the Sales.SalesOrderHeader table to the
-- Sales.SalesPerson table. Join the BusinessEntityID column
-- from the Sales.SalesPerson table to the SalesPersonID column
-- in the Sales.SalesOrderHeader table. Display the SalesOrderID
-- along with the SalesQuota and Bonus.

SELECT s.SalesOrderID, p.SalesQuota, p.Bonus
FROM Sales.SalesOrderHeader As s
JOIN Sales.SalesPerson AS p 
ON s.SalesPersonID = p.BusinessEntityID;

-- 5. Add the name columns to the query written in Question 4 by
-- joining on the Person.Person table. See whether you can figure
-- out which columns will be used to write the join.

SELECT s.SalesOrderID, p.SalesQuota, p.Bonus, pp.firstname, pp.middlename, pp.lastname
FROM Sales.SalesOrderHeader As s
JOIN Sales.SalesPerson AS p 
ON s.SalesPersonID = p.BusinessEntityID
JOIN Person.Person AS pp
ON PP.BusinessEntityID = P.BusinessEntityID;

