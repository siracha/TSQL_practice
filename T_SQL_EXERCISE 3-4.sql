--1
USE AdventureWorks2019
GO

SELECT BusinessEntityID, loginID,jobtitle
FROM Humanresources.employee
WHERE jobtitle = 'Research and Development Engineer';

--2
SELECT productID, Name, Style, Size, Color
FROM Production.Product
WHERE SIZE IS NOT NULL
OR color IS NOT NULL
