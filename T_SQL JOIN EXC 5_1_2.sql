USE WideWorldImporters
GO


-- Switch to the WideWorldImporters database. Join the
-- Application.Countries table with the Application.
-- StateProvinces table. Use an INNER JOIN, returning only the
-- CountryName and Subregion from the Application.Countries
-- table and the StateProvinceName from the Application.
-- StateProvinces table. Hint: Use CountryID as the JOIN column to
-- join the two tables.

SELECT c.countryname, c.Subregion , sp.Stateprovincename
FROM Application.Countries AS c
JOIN Application.StateProvinces AS sp
ON c.countryID = sp.countryID;