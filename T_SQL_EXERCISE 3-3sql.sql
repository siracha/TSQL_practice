USE AdventureWorks2019
GO

--1
SELECT salesorderID, orderdate, subTOTAL
FROM Sales.salesOrderHeader
WHERE orderdate >= 2012-09 AND orderdate < 2012-10;

--2
SELECT salesorderID, orderdate, subTOTAL
FROM Sales.salesOrderHeader
WHERE subtotal>= 10000 AND salesorderID < 43000;

