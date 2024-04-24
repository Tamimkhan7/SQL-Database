-- The SELECT TOP clause is used to specify the number of records to return.

-- The SELECT TOP clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.

SELECT top 3 * from customers;

-- Note: Not all database systems support the SELECT TOP clause. MySQL supports the LIMIT clause to select a limited number of records, while Oracle uses FETCH FIRST n ROWS ONLY and ROWNUM.

-- for sql server


 select top 5
 from customers
--  where condition dile oh hobe na dile oh hobe, that is not mantadori
 where city = 'USA';


--  for MySQL

 select *
 from customers
 where city = 'USA'
 LIMIT 5;

--  ADD a WHERE CLAUSE

-- ADD the ORDER BY Keyword

-- for sql

select top 3 * from customers
ORDER BY customers DESC;

-- for MySQL same the above i worked

select *
from customers
ORDER BY customersName DESC
limit 3;