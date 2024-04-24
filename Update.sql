-- The UPDATE statement is used to modify the existing records in a table.

-- Note: Be careful when updating records in a table! Notice the WHERE clause in the UPDATE statement. The WHERE clause specifies which record(s) that should be updated. If you omit the WHERE clause, all records in the table will be updated!

-- UPDATE Table

update customers
set contactName = 'Alfred Schmidt', city = 'Frankfurt'
where customersId = 1;

-- UPDATE Multiple Records

update customers
set contactName = 'Janu'
where country = 'Maxico';

-- Update Warning!
-- Be careful when updating records. If you omit the WHERE clause, ALL records will be updated!
