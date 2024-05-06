-- The CASE expression goes through conditions and returns a value when the first condition is met (like an if-then-else statement). 
-- So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause.

-- If there is no ELSE part and no conditions are true, it returns NULL.

-- basically case expression if else ar moto kaj kore, age if condition check korbe jodi meet na kore tahole else condition check korbe
-- jodi kono akta meet kore tahole oiitai result dibe and break kore dibe ar joid kono answer na ase tahole null print korbe

select orderId, quantity
case
 when quantity > 30 then 'The quentity  is greater than 30'
 when quantity = 30 then 'The quantity is 30'
 else 'The quantity is under 30'
 end as quantitytext
 from orderdetails
 order by orderID;


--  The following SQL will order the customers by City. However, if City is NULL, then order by Country:

select customersname, city, country
from customers
order by (case when city is NULL then country
else city
end);