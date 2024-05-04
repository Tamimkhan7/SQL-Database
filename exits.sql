-- The EXISTS operator is used to test for the existence of any record in a subquery.
-- The EXISTS operator returns TRUE if the subquery returns one or more records.

-- The following SQL statement returns TRUE and lists the suppliers with a product price less than 20:

select suppliername
from supplier
where EXISTS (select productname from products where products.supplierID =  suppliers.supplierID and price <20 );

-- The following SQL statement returns TRUE and lists the suppliers with a product price equal to 22:

SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price = 22);