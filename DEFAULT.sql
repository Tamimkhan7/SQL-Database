-- The DEFAULT constraint is used to set a default value for a column.
-- The default value will be added to all new records, if no other value is specified

-- The following SQL sets a DEFAULT value for the "City" column when the "Persons" table is created:

-- default basically akta value insert kore dilam oi column a kono value na thakle sob gula cell a oi value ta default hoye bose jabe
create table persons(
Id int not null,
Lastname varchar(50) not null,
firstname varchar(50),
Age int,
city varchar(50) default 'sandnes'
);


-- The DEFAULT constraint can also be used to insert system values, by using functions like GETDATE():
-- default value ta insert rupe neya jete pare
 
 create table orders(
Id int not null,
ordernumber int not null,
orderDate date default GETDATE()
 );


-- SQL DEFAULT on ALTER TABLE
-- To create a DEFAULT constraint on the "City" column when the table is already created, use the following SQL:

Alter table persons
Alter city set default 'sandnes';

-- DROP a DEFAULT Constraint
-- To drop a DEFAULT constraint, use the following SQL:

Alter table persons
Alter city drop default;