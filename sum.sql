-- The SUM() function returns the total sum of a numeric column.


SELECT SUM(Quantity)
FROM OrderDetails;

-- You can add a WHERE clause to specify conditions:

SELECT SUM(Quantity)
FROM OrderDetails
WHERE ProductId = 11;

-- Here we use the SUM() function and the GROUP BY clause, to return the Quantity for each OrderID in the OrderDetails table:

SELECT OrderID, sum(Quantity) as [total Quantity]
from OrderDetails
GROUP by OrderID;

-- If we assume that each product in the OrderDetails column costs 10 dollars, we can find the total earnings in dollars by multiply each quantity with 10:

SELECT sum(quantity*10)
from OrderDetails;

-- We can also join the OrderDetails table to the Products table to find the actual amount, instead of assuming it is 10 dollars:

SELECT SUM(Price * Quantity)
FROM OrderDetails
LEFT JOIN Products ON OrderDetails.ProductID = Products.ProductID;