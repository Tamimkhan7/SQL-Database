-- MySQL BIN() Function
-- Return a binary representation of 15:

select bin(15);

-- MySQL BINARY Function
-- Convert a value to a binary string:
select binary("Tamimkhan23");

-- MySQL CASE Function
-- Go through conditions and return a value when the first condition is met:

SELECT OrderID, Quantity,
(CASE
    WHEN Quantity > 30 THEN "The quantity is greater than 30"
    WHEN Quantity = 30 THEN "The quantity is 30"
    ELSE "The quantity is under 30"
END) as mycondition
FROM OrderDetails;

-- MySQL CAST() Function
-- Convert a value to a DATE datatype:
select cast("2017-08-29" as date);

-- MySQL COALESCE() Function
-- Return the first non-null value in a list:
select COALESCE(NUll, null, null, 'w3shools.com', null , 'example.com');


-- MySQL CONV() Function
-- Convert a number from numeric base system 10 to numeric base system 2:
select conv(15, 10,2);

-- MySQL CURRENT_USER() Function
select CURRENT_USER();

-- MySQL DATABASE() Function
-- Return the name of the current (default) database:
select database();

-- MySQL IF() Function
-- Return "YES" if the condition is TRUE, or "NO" if the condition is FALSE:

select if(500<1000, "YES", "NO");


-- MySQL IFNULL() Function
-- Return the specified value IF the expression is NULL, otherwise return the expression:
select IFNULL(null, "W3schools.com");

-- MySQL ISNULL() Function
-- Test whether an expression is NULL:
select ISNULL(null);

-- MySQL LAST_INSERT_ID() Function
-- Return the AUTO_INCREMENT id of the last row that has been inserted in a table:
select LAST_INSERT_ID();


-- MySQL NULLIF() Function
-- Compare two expressions:
select nullif(25,26);--joid match na khay tahole first value ta output dibe


-- MySQL SESSION_USER() Function
-- Return the current user name and host name for the MySQL connection:
select SESSION_USER();
SELECT SYSTEM_USER();
SELECT USER();


-- MySQL VERSION() Function
-- Return the current version of the MySQL database:
select version();