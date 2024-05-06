-- The SELECT INTO statement copies data from one table into a new table.
-- select into basically ak table ar value onno table niye rakhe, basically copy kora , tobe new table thaka lagbe
-- The new table will be created with the column-names and types as defined in the old table. You can create new column names using the AS clause.


-- The following SQL statement creates a backup copy of Customers:
select * into customersbackup2017
from customers;

-- The following SQL statement uses the IN clause to copy the table into a new table in another database:

select * into customersbackup2017 in 'Backup.mdb'
from customers;

-- The following SQL statement copies only a few columns into a new table:
select customersname, contactname into customersbackup2017
from customers;


-- The following SQL statement copies only the German customers into a new table:

select * into customersGermany
from customers
where country = 'Germany';

-- The following SQL statement copies data from more than one table into a new table:

select customers.customersname, orders.orderID into customersorderbackup2017
from customers left join orders on customers.customersID = orders.customerID;


-- SELECT INTO can also be used to create a new, empty table using the schema of another. Just add a WHERE clause that causes the query to return no data: