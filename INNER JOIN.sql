-- The INNER JOIN keyword selects records that have matching values in both tables.

-- Join Products and Categories with the INNER JOIN keyword:

SELECT ProductID, ProductName, CategoryName
FROM Products INNER JOIN Categories 
ON Products.ProductID = Categories.CategoryID;

-- It is a good practice to include the table name when specifying columns in the SQL statement.
-- jeita diye relation korteci both table ar sathe oita jodi print korte cai tahole error dibe
SELECT p.ProductID, p.ProductName, c.CategoryName
FROM Products as p INNER JOIN Categories as c
ON p.ProductID = c.CategoryID;


-- JOIN and INNER JOIN will return the same result.

SELECT Products.ProductID, Products.ProductName, Categories.CategoryName
FROM Products JOIN Categories
-- on diye both table combined korte hoy
ON Products.CategoryID = Categories.CategoryID;

-- JOIN Three Tables
-- The following SQL statement selects all orders with customer and shipper information:\
select orders.orderid, customers.customerName, shippers.shippername
from ((Orders inner join customer 
on Orders.customerID = Customers.customerID)
inner join shipper 
on order.shipperrid = shippers.shipperrid);