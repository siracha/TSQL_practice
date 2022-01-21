USE WideWorldImporters
GO

-- 6. Switch to WideWorldimporters. Write a SELECT statement that returns the
-- Average (aVG) unit price of all products. use the Sales.OrderLines table.
-- alias the column AvgPrice.

SELECT AVG(unitPrice) AS 'AvgPrice'
FROM Sales.OrderLines
;

-- 7. Write a SELECT statement that returns the most expensive amount
-- ever invoiced to WideWorldimporters. (hint: use the Purchasing.
-- SupplierTransactions as the source table.) the invoice amount includes
-- the tax owed.

SELECT MAX(TransactionAmount) AS 'the most expensive amount ever invoiced'
FROM Purchasing.SupplierTransactions
;