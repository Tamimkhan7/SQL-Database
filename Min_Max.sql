-- The MIN() function returns the smallest value of the selected column.

SELECT min(price)
from product;

-- The MAX() function returns the largest value of the selected column.

SELECT max(price)
from product;


-- When you use MIN() or MAX(), the returned column will not have a descriptive name. To give the column a descriptive name, use the AS keyword:

SELECT min(price) as smallestprice
from product;

-- Here we use the MIN() function and the GROUP BY clause, to return the smallest price for each category in the Products table:

SELECT min(price) as smallestprice, categoryid
from product
GROUP by categoryid;