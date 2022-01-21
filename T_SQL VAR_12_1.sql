USE AdventureWorks2019
GO

-- 1. Write a script that declares an integer variable called @myInt. assign 10 to the
-- variable and then print it.

DECLARE @myInt INT = 10;
PRINT '@myInt: ' +  CONVERT(VARCHAR,@myInt);


-- 2. declare a variable of type tinyint and assign a value of 4000 to it. What is
-- the result and why?

DECLARE @tinyInt tinyint = 4000; --Msg 220, Level 16, State 2, Line 2
                                    --Arithmetic overflow error for data type tinyint, value = 4000.

-- 3. What is the value of @ID after assigning the value?


DECLARE @ID INT = 123.4567;
SELECT @ID; --truncated


-- 4. Write a script that declares a VARCHAR(20) variable called @myString. assign
-- 'This is a test' to the variable and print it.

DECLARE @myString VARCHAR(20) = 'This is a test';
PRINT @myString;

-- 5. Write a script that declares two integer variables called @MaxID and @MinID.
-- Use the variables to print the highest and lowest SalesOrderID values from
-- the Sales.SalesOrderHeader table.

DECLARE @MaxID INT, @MinID INT;
SELECT @MaxID = MAX(SalesOrderID)
FROM Sales.SalesOrderHeader
SELECT @MinID = MIN(SalesOrderID)
FROM Sales.SalesOrderHeader
--SELECT @MaxID, @MinID
;

-- 6. Write a script that declares an integer variable called @ID. assign the value
-- 70000 to the variable. Use the variable in a SELECT statement that returns
-- all the rows from the Sales.SalesOrderHeader table that have a
-- SalesOrderID greater than the value of the variable.

DECLARE @ID INT = 70000;
SELECT *
FROM Sales.SalesOrderHeader
WHERE SalesOrderID > @ID
;

-- 7. Write a script that declares three variables, one integer variable called @ID, an
-- nVarChar(50) variable called @FirstName, and an nVarChar(50) variable
-- called @LastName. Use a SELECT statement to set the value of the variables
-- with the row from the Person.Person table with BusinessEntityID = 1.
-- print a statement in the “Businessentityid: Firstname Lastname” format.

DECLARE @ID INT, @FirstName nVarChar(50), @LastName nVarChar(50);
SELECT @ID = BusinessEntityID, @FirstName = firstName, @LastName = lastName 
FROM Person.Person
WHERE BusinessEntityID = 1
--SELECT @ID, @FirstName, @LastName
;

-- 8. Write a script that declares an integer variable called @SalesCount.
-- set the value of the variable to the total count of sales in the Sales.
-- SalesOrderHeader table. Use the variable in a SELECT statement that shows
-- the difference between the @SalesCount and the count of sales by customer.

DECLARE @SalesCount INT;
SELECT @SalesCount = count(*)
FROM Sales.SalesOrderHeader
SELECT @SalesCount
;


