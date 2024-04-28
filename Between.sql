-- The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
-- The BETWEEN operator is inclusive: begin and end values are included. 
-- Selects all products with a price between 10 and 20:

-- //basically product table theke jei sob product ar price 10 and 20 modde thakbe tader print korte bolce
select * from products
where price BETWEEN 10 and 20;


-- To display the products outside the range of the previous example, use NOT BETWEEN:
select * from products
where price not between 10 and 20;

-- The following SQL statement selects all products with a price between 10 and 20. In addition, the CategoryID must be either 1,2, or 3:
select * from products
where price between 10 and 20
and CategoryID in (1,2,3);


-- The following SQL statement selects all products with a ProductName alphabetically between Carnarvon Tigers and Mozzarella di Giovanni:
-- basically product theke jader product name carnarvon tigers and mozzarella di giovanni tader column return korteci and productname upor base kore oderke sort korteci
select * from products
where productname between 'carnarvon Tigers' and 'Mozzarella di Giovanni'
order by productname;


-- The following SQL statement selects all products with a ProductName not between Carnarvon Tigers and Mozzarella di Giovanni:

SELECT * FROM Products
WHERE ProductName NOT BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

-- The following SQL statement selects all orders with an OrderDate between '01-July-1996' and '31-July-1996':
select * from orders
-- basically orders table theke orderdate khujteci jader date nicer ai dater modde ace date likhar somoy must be # tag diye start korte hobe and # tag diye sesh korte hobe
where OrderDate between #07/01/1966# and #07/31/1996#;


-- ai vabe oh likha jay for example
select * from Orders
where OrderDate between '1996-07-01' and '1996-07-31';