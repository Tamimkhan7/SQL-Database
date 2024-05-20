-- SQL Arithmetic Operators
-- add + , below an example
SELECT
    30 + 20;

-- subtract - ,below an example
SELECT
    30 - 20;

-- multiply *
SELECT
    30 * 20;

-- divide /
SELECT
    30 / 2;

-- modulo %
SELECT
    30 % 20;

-- SQL Bitwise Operators
Bitwise
AND (&) Bitwise
OR (|) Bitwise exclusive
OR
xor (^) -- SQL Comparison Operators
-- Equal to
select
    *
from
    products
where
    price = 18;

-- Greater than
select
    *
from
    products
where
    price > 18;

-- Less than
select
    *
from
    products
where
    price < 18;

-- Greater than or equal to
select
    *
from
    products
where
    price >= 18;

-- Less than or equal to
select
    *
from
    products
where
    price <= 18;

-- Not equal to
select
    *
from
    products
where
    price <> 18;

-- <> that the means price is not equal to the 18
-- SQL Compound Operators
+ = Add equals 
- = Subtract equals
 * = Multiply equals 
 / = Divide equals
  % = Modulo equals
 & = Bitwise AND equals
  ^ - = Bitwise exclusive equals
  | * = Bitwise OR equals


--   SQL Logical Operators
-- using All logical operators
-- TRUE if all of the subquery values meet the condition
select productname
from products
where productID = All (select productId from orderdetails where quantity =10);

-- using And logical operator
-- TRUE if all the conditions separated by AND is TRUE
SELECT * FROM Customers
WHERE City = "London" AND Country = "UK";

	-- TRUE if any of the subquery values meet the condition

    select * from products
    where price >any (select price from products where price >50);

-- use BETWEEN operator
-- TRUE if the operand is within the range of comparisons
SELECT * FROM Products
WHERE Price BETWEEN 50 AND 60;

-- use EXISTS operator
	-- TRUE if the subquery returns one or more records
    select suppliername
    from suppliers
    where exists (select productName from products  where  products.supplierID = suppliers.supplierID and price <20);

--use IN operator
-- 	TRUE if the operand is equal to one of a list of expressions
--IN operator basically OR operator moto kaj kore OR jei vabe kaj kore thik oi vabe kaj kore just OR shorter versor holo IN
SELECT * FROM Customers
WHERE City IN ('Paris','London');

--use like operator
-- TRUE if the operand matches a pattern
SELECT * FROM Customers
WHERE City LIKE 's%';

--use NOT operator
-- Displays a record if the condition(s) is NOT TRUE
SELECT * FROM Customers
WHERE City NOT LIKE 's%';

-- use OR operator
-- TRUE if any of the conditions separated by OR is TRUE

SELECT * FROM Customers
WHERE City = "London" OR Country = "UK";

-- use some operator
-- TRUE if any of the subquery values meet the condition
-- jodi akta subquery condition meet kore tahole amra bolte pari aita some operator kaj korbe
SELECT * FROM Products
WHERE Price > SOME (SELECT Price FROM Products WHERE Price > 20);