-- SQL IFNULL(), ISNULL(), COALESCE(), and NVL() Functions
select productname, unitprice * (unitsInstock +  unitsonorder)
from products;
-- In the example above, if any of the "UnitsOnOrder" values are NULL, the result will be NULL.

-- The MySQL IFNULL() function lets you return an alternative value if an expression is NULL:

-- The SQL Server ISNULL() function lets you return an alternative value when an expression is NULL
select productname, unitprice, * (unitsInstock+ ISNULL(UnitsOnOrder, 0))
from products;