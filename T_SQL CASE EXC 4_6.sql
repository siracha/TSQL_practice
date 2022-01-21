USE AdventureWorks2019
GO

--1
-- 1. Write a query using the HumanResources.Employee table to
-- display the BusinessEntityID column. Also include a CASE
-- expression that displays Even when the BusinessEntityID value
-- is an even number or Odd when it is odd. Hint: Use the modulo
-- operator.
SELECT BusinessEntityID,
    CASE BusinessEntityID % 2
    WHEN 0 THEN 'Even'
    ELSE 'Odd'
    END AS 'parity'
FROM HumanResources.Employee
;

-- 2. Write a query using the Sales.SalesOrderDetail table to display
-- a value (Under 10 or 10–19 or 20–29 or 30–39 or 40 and over) based
-- on the OrderQty value by using the CASE expression. Include the
-- SalesOrderID and OrderQty columns in the results.
SELECT SalesOrderID,OrderQty,
    CASE WHEN OrderQty <10 THEN 'UNDER 10'
    WHEN OrderQty BETWEEN 10 AND 19 THEN '10-19'
    WHEN OrderQty BETWEEN 20 AND 29 THEN '20-29'
    WHEN OrderQty BETWEEN 30 AND 39 THEN '30-39'
    ELSE '40 or over'
    END AS 'order range'
FROM Sales.SalesOrderDetail
;

-- 3. Using the Person.Person table, build the full names using the
-- Title, FirstName, MiddleName, LastName, and Suffix columns.
-- Check the table definition to see which columns allow NULL values
-- and use the COALESCE function on the appropriate columns.
SELECT COALESCE(Title, '') AS title, FirstName, COALESCE(MiddleName, '') AS MiddleName, LastName, COALESCE(Suffix, '') AS suffix
FROM Person.Person 