-- SQL Date Data Types

-- for mysql

-- DATE - format YYYY-MM-DD
-- DATETIME - format: YYYY-MM-DD HH:MI:SS
-- TIMESTAMP - format: YYYY-MM-DD HH:MI:SS
-- YEAR - format YYYY or YY

-- for sql server

-- DATE - format YYYY-MM-DD
-- DATETIME - format: YYYY-MM-DD HH:MI:SS
-- SMALLDATETIME - format: YYYY-MM-DD HH:MI:SS
-- TIMESTAMP - format: a unique number

-- Note: The date types are chosen for a column when you create a new table in your database!

-- Now we want to select the records with an OrderDate of "2008-11-11" from the table above.

select  * from orders where orderDate = '2008-11-11'

-- Note: Two dates can easily be compared if there is no time component involved!


select * from orders where orderdate = '2008-11-11'
-- we will get no result! This is because the query is looking only for dates with no time portion.