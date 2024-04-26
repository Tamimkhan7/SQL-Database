-- The COUNT() function returns the number of rows that matches a specified criterion.
SELECT
    COUNT(*)
from
    product;

-- You can specify a column name instead of the asterix symbol (*).
-- If you specify a column name instead of (*), NULL values will not be counted.
SELECT
    count(productname)
from
    Products;

-- You can add a WHERE clause to specify conditions:
SELECT
    count(productid)
from
    Products
where
    price > 20;

-- You can ignore duplicates by using the DISTINCT keyword in the COUNT() function.
SELECT count(DISTINCT(Price))
from  Products;

-- Give the counted column a name by using the AS keyword.

SELECT count(*) as [Number of records]
from product;

-- Here we use the COUNT() function and the GROUP BY clause, to return the number of records for each category in the Products table:

SELECT count(*) AS [Number of records], categoryid
from Products
GROUP by categoryid;