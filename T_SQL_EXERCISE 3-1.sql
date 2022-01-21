--1
USE AdventureWorks2019
GO
SELECT customerID, storeid, ACCOUNTNUMBER
FROM Sales.Customer

--2
SELECT name, productNumber, color
FROM Production.Product

--3
SELECT customerID, SalesOrderID, SalesOrderNumber
FROM Sales.SalesOrderHeader