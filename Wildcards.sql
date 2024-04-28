--wildcard basically %, aita amra basically like operator a use kori abar where clause a use kori

-- A wildcard character is used to substitute one or more characters in a string.

-- Wildcard characters are used with the LIKE operator. The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
select * from customers
WHERE customerName like 'a%';

-- %	Represents zero or more characters
-- _	Represents a single character
-- []	Represents any single character within the brackets *
-- ^	Represents any character not in the brackets *
-- -	Represents any single character within the specified range *
-- {}	Represents any escaped character **
-- * Not supported in PostgreSQL and MySQL databases.

-- ** Supported only in Oracle databases.


-- The % wildcard represents any number of characters, even zero characters.
SELECT * FROM Customers
WHERE CustomerName LIKE '%es';

-- Return all customers that contains the pattern 'mer':
SELECT * FROM Customers
WHERE CustomerName LIKE '%mer%';


-- The _ wildcard represents a single character.

-- It can be any character or number, but each _ represents one, and only one, character.

SELECT * FROM Customers
WHERE City LIKE '_ondon';


-- Return all customers with a City starting with "L", followed by any 3 characters, ending with "on":
SELECT * FROM Customers
WHERE City LIKE 'L___on';


-- The [] wildcard returns a result if any of the characters inside gets a match.

-- Return all customers starting with either "b", "s", or "p":
--joid kono customername b or s or p diye start hoice oi name gular upor base kore amake oi column ta dew
select * from customers
where customerName like '[bsp]%';

-- The - wildcard allows you to specify a range of characters inside the [] wildcard.
-- Return all customers starting with "a", "b", "c", "d", "e" or "f":
select * from customers
where customerName like '[a-f]%';--jader name first char a to f sei sokol namer column gula return koror


-- Any wildcard, like % and _ , can be used in combination with other wildcards.
-- Return all customers that starts with "a" and are at least 3 characters in length:
select * from customers
where customerName like 'a__%';--first char ta a hote hobe baki char gula janar dorkar nei

-- Return all customers that have "r" in the second position:
select * from customers
where customerName like '_r%';--second char r hote hbe baki gula dekhar dorkar nei


-- If no wildcard is specified, the phrase has to have an exact match to return a result.

-- Return all customers from Spain:
select * from customers
where customerName like 'Spain';