-- SQL aliases are used to give a table, or a column in a table, a temporary name.
-- Aliases are often used to make column names more readable.
-- An alias only exists for the duration of that query.
-- An alias is created with the AS keyword.

select customerID as ID
from customers;

-- Actually, in most database languages, you can skip the AS keyword and get the same result:

SELECT CustomerID ID
FROM Customers;

-- The following SQL statement creates two aliases, one for the CustomerID column and one for the CustomerName column:
select customerID as id, customername as Name
from customers;


-- If you want your alias to contain one or more spaces, like "My Great Products", surround your alias with square brackets or double quotes.
-- basically ami jodi amar as keyword value ak ba akadik space rakhte cai tahole amake double quotes or third bracket ar modde rakhte hobe
SELECT ProductName AS [My Great Products]
FROM Products;


-- The following SQL statement creates an alias named "Address" that combine four columns (Address, PostalCode, City and Country):
-- basically customer table theke cuustomername sathe kicu information dekhteci jeigual address name hobe like address pore postalcode city and country,
-- ai sob concatenated kora jay + operator diye
select customername, address + ', ' + PostalCode + ' '+ city + ', '+ country as Address
from customers;

-- The same rules applies when you want to use an alias for a table.
select * from customers as persons;