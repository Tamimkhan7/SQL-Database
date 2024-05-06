-- The INSERT INTO SELECT statement copies data from one table and inserts it into another table.

-- The INSERT INTO SELECT statement requires that the data types in source and target tables match.

-- Copy "Suppliers" into "Customers" (the columns that are not filled with data, will contain NULL):
INSERT into customers (customersname, city, country)
select Suppliersname, city, country from Suppliers;

-- Copy only the German suppliers into "Customers":
INSERT into customers (customersname, city, country)
select Suppliersname, city, country from Suppliers
where country = 'Germany';