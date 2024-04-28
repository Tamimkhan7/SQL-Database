--IN operator basically OR operator moto kaj kore OR jei vabe kaj kore thik oi vabe kaj kore just OR shorter versor holo IN


-- The IN operator allows you to specify multiple values in a WHERE clause.
-- The IN operator is a shorthand for multiple OR conditions.
-- Return all customers from 'Germany', 'France', or 'UK'


select * from customers
where country In('UK', 'Spain', 'Germany');


-- By using the NOT keyword in front of the IN operator, you return all records that are NOT any of the values in the list.
-- Return all customers that are NOT from 'Germany', 'France', or 'UK':


select * from customers
where country NOT in ('UK', 'Germany', 'France');


-- With a subquery you can return all records from the main query that are present in the result of the subquery.
-- Return all customers that have an order in the Orders table:
select * from customers
where customerID in (select customerID from order);
