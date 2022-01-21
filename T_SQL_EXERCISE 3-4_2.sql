USE WideWorldImporters
GO

--4
SELECT *
FROM purchasing.Suppliers
WHERE DeliveryMethodID IS NULL;
