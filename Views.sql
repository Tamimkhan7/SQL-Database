-- In SQL, a view is a virtual table based on the result-set of an SQL statement.
-- A view contains rows and columns, just like a real table.
-- The fields in a view are fields from one or more real tables in the database.


create view [Brazil customers] as
select customerName, contactName
from Customers
where country = 'Brazil';

-- We can query the view above as follows:
select * from [Brazil Customers];

-- The following SQL creates a view that selects every product in the "Products" table with a price higher than the average price:

create view [products above average price] as
select productName, price
from Products
where price>(select avg(price) from product);

-- We can query the view above as follows:

select * from [products above average price];

-- A view can be updated with the CREATE OR REPLACE VIEW statement.
-- SQL CREATE OR REPLACE VIEW Syntax

-- The following SQL adds the "City" column to the "Brazil Customers" view:
create or REPLACE view [Brazil  customer] as
select customerName, contactName, City
from customer
where country = 'Brazil';


-- SQL Dropping a View
-- A view is deleted with the DROP VIEW statement.
drop view [Brazil customers];