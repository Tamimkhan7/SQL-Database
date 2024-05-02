-- // The FULL OUTER JOIN keyword returns all records when there is a match in left(table1) or right(table2) table records.
-- // Tip : FULL OUTER JOIN and FULL JOIN are the same.

-- // The following SQL statement selects all customers, and all orders:

select customers.customerName, orders.orderID
from customers FULL order join orders
on customers.customerID = orders.customerID
order by customers.customerName;---sort in ascending order from the customers table sorting propery customerName


-- full order join keyword basically both table theke sob dekhabe condition milok ba na milok


-- The FULL OUTER JOIN keyword returns all matching records from both 
-- tables whether the other table matches or not. So, if there are rows in 
-- "Customers" that do not have matches in "Orders", or if there are rows in "Orders" 
-- that do not have matches in "Customers", those rows will be listed as well.