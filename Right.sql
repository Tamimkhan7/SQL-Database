-- The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1). The result is 0 records from the left side, if there is no match.
select column_name(s)
from table1 right JOIN tabls2
on table1.column_name=table2.column_name;

--  In some databases RIGHT JOIN is called RIGHT OUTER JOIN.

-- The following SQL statement will return all employees, and any orders they might have placed:

select orders.orderID, Employees.LastName, Employees.FirstName
from orders right join Employees
on orders.EmployeeID = Employees.EmployeeID
order by order.orderID;

-- The RIGHT JOIN keyword returns all records from the right table (Employees), even if there are no matches in the left table (Orders).