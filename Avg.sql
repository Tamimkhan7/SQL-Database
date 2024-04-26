-- The AVG() function returns the average value of a numeric column.

SELECT avg(price)
from products;

-- add a where clause

SELECT avg(price)
from products
where categoryid=1;


-- Give the AVG column a name by using the AS keyword.


SELECT AVG(Price) AS [average price]
FROM Products;


-- To list all records with a higher price than average, we can use the AVG() function in a sub query:

SELECT * from products
where price > (SELECT avg(price) from productid);

-- Here we use the AVG() function and the GROUP BY clause, to return the average price for each category in the Products table:

SELECT avg(price) as averageprice, categoryid
from products
GROUP by categoryid;