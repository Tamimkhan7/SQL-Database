-- The UNION operator is used to combine the result-set of two or more SELECT statements.

-- Every SELECT statement within UNION must have the same number of columns
-- The columns must also have similar data types
-- The columns in every SELECT statement must also be in the same order



-- The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL:

select city
from customers
select city
from suppliers
order by city;

-- Note: If some customers or suppliers have the same city, each city will only be listed once, 
-- because UNION selects only distinct values. Use UNION ALL to also select duplicate values!


-- union all use korle table theke sob data cole asbe
-- union basically combined kore two table ar column ke


-- The following SQL statement returns the cities (duplicate values also) from both the "Customers" and the "Suppliers" table:

select city 
from customers
select city 
from suppliers
order by city;


-- The following SQL statement returns the German cities (only distinct values) from both the "Customers" and the "Suppliers" table:

select city, country
from customers
where country='Germany'
union 
select city, country
from suppliers
where country='Germany'
order by city;


-- city table combined korbe both table ke ar where condition country khujbe


-- The following SQL statement returns the German cities (duplicate values also) from both the "Customers" and the "Suppliers" table:

select city, country
from customers
where country='Germany'
union all
select city, country
from suppliers
where country='Germany'
order by city;


-- The following SQL statement lists all customers and suppliers:

select 'customer' as Type, contactname, city, country
from customer
union
select 'supplier', contactname, city, country
from suppliers;