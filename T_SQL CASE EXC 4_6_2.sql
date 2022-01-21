USE WideWorldImporters
GO

-- 5. Switch to the WideWorldImporters database. Write a query
-- against the Purchasing.PurchaseOrders table and return the
-- DeliveryMethodID column. Add a CASE expression that returns
-- Freight if the DeliveryMethodID is equal to 7, 8, 9, or 10. Otherwise,
-- return Other/Courier. Alias this as DeliveryMethod.

SELECT DeliveryMethodID,
    CASE WHEN DeliveryMethodID IN (7, 8, 9, 10) THEN 'Freight'
    ELSE 'other/Courier' END AS 'DeliveryMethod'
FROM Purchasing.PurchaseOrders
;

-- 6. Rewrite the query from Question 5, but this time use the IIF
-- function.
SELECT DeliveryMethodID,
   IIF(DeliveryMethodID IN (7, 8, 9, 10) , 'Freight',
    'other/Courier') AS 'DeliveryMethod'
FROM Purchasing.PurchaseOrders
;