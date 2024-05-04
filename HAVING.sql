-- The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.
-- basicallly group kewword a where keyword use kora jabe na, tai tar replace a having keyword use kora hoy
-- but same kaj kore both are

-- The following SQL statement lists the number of customers in each country. Only include countries with more than 5 customers:

select count(customerID), country
from customers
group by country
having count(customerID)>5;


-- The following SQL statement lists the number of customers in each country, sorted high to low (Only include countries with more than 5 customers):

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;

-- The following SQL statement lists the employees that have registered more than 10 orders:

select employees.lastname, count(orders.orderID) as nameoforders
from orders inner join employees
on orders.employeesID = employees.employeesID
group by lastname
having count(order.orderID)>10;


-- The following SQL statement lists if the employees "Davolio" or "Fuller" have registered more than 25 orders:

select employees.lastname, count(orders.orderID) as numberoforders
from orders inner join employees
on orders.employeesID = employees.employeesID
where lastname  'Davolio' or lastname = 'Fuller'
group by lastname
having count(orders.orderID)>25;