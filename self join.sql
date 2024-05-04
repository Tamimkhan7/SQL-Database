-- A self join is a regular join, but the table is joined with itself.

-- The following SQL statement matches customers that are from the same city:

select A.customersname as customersname1, B.customersname as customersname2, A.city
from customers A, customers B
where A.customerID <> B.customerID and a.city = B.city
order by A.city;