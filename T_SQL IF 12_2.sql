USE AdventureWorks2019
GO

-- 1. Write a batch that declares an integer variable called @Count to save the count of
-- all the Sales.SalesOrderDetail records. add an IF block that prints “over
-- 100,000” if the value exceeds 100,000. otherwise, print “100,000 or less.”

DECLARE @Count INT;
SELECT @Count = COUNT(*)
FROM Sales.SalesOrderDetail
IF @Count > 100000 BEGIN
    PRINT 'over 100,000'
END
ELSE BEGIN 
    PRINT '100,000 or less.'
END
;

-- 2. Write a batch that contains nested IF blocks. the outer block should check to
-- see whether the month is october or november. if that is the case, print “the
-- month is” and the month name. the inner block should check to see whether
-- the year is even or odd and print the result. You can modify the month to check
-- to make sure the inner block fires.

IF MONTH(GETDATE()) IN (10, 11) BEGIN
    PRINT 'the month is ' + DATENAME(month,GETDATE())
    IF MONTH(GETDATE()) % 2 = 0 BEGIN
        PRINT 'even'
    END
    ELSE BEGIN PRINT 'odd'
    END
END
;
-- 3. Write a batch that uses IF EXISTS to check to see whether there is a row in
-- the Sales.SalesOrderHeader table that has SalesOrderID = 1. print
-- “there is a salesorderid = 1” or “there is not a salesorderid = 1” depending
-- on the result.

IF EXISTS(
    SELECT SalesOrderID 
    FROM Sales.SalesOrderHeader 
    WHERE SalesOrderID = 1
) BEGIN
    PRINT 'there is a salesorderid = 1'
END
ELSE BEGIN PRINT 'there is not a salesorderid = 1'
END
;