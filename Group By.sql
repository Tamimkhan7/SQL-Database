-- The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".

-- The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.

-- The following SQL statement lists the number of customers in each country:

select COUNT(customerID),country
from customers
group by country;


-- The following SQL statement lists the number of customers in each country, sorted high to low:

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;


-- The following SQL statement lists the number of orders sent by each shipper:

select shippers.shippername, count(orders.orderID) As numberoforders
from orders left join shipper
on orders.shipperID = shippers.shipperID
group by shippername;