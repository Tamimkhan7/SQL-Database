-- The CREATE TABLE statement is used to create a new table in a database.
-- create table
create table  persons(
    personId int(10),
    lastname varchar(50),
    firstname varchar(50),
    Address  varchar(50),
    city varchar (50) 
);

-- The following SQL creates a new table called "TestTables" (which is a copy of the "Customers" table):

create table TestTables  as
select * 
from customers;