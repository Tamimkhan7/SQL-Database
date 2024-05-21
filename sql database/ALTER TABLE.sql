-- The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
-- The ALTER TABLE statement is also used to add and drop various constraints on an existing table.
-- alter table basically use kora hoy table ar column drop korte add korte modify korte and deleted korte use kora hoy


--  ALTER TABLE - ADD Column

-- The following SQL adds an "Email" column to the "Customers" table:

Alter table customers
add email varchar(50);

-- ALTER TABLE - DROP COLUMN

-- The following SQL deletes the "Email" column from the "Customers" table:

Alter table  customers 
drop column email;


-- ALTER TABLE - RENAME COLUMN

alter table customers
RENAME column email to Email;


-- ALTER TABLE - ALTER/MODIFY DATATYPE

Alter table customers
alter column email varchar(100);