USE WideWorldImporters
GO

-- 5. Switch to WideWorldimporters. Write a SELECT statement that displays a count
-- of CountryNames for each Continent. use the Application.Countries
-- table. alias the COUNT as CountCountries.

SELECT COUNT(CountryName) 'CountCountries', Continent
FROM Application.Countries
GROUP BY Continent
;


-- 6. the following statement does not execute—it returns an error below. Go ahead
-- and execute the following. how do you fix it?
-- SELECT InvoiceID, COUNT(*) AS cnt
-- FROM Sales.InvoiceLines;
-- Column “Sales.invoiceLines.invoiceid” is invalid in the select list because it is
-- not contained in either an aggregate function or the Group BY clause.