-- A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.
create procedure selectallcustomers
as
select * from customers
go;

-- Each varchar character uses 1 byte of storage and can represent 256 different characters. Each nvarchar character uses 2 bytes of storage and can represent 65,536 different characters. If you need to support text like arabic, chinese, or emojis, use nvarchar. If you only expect alpha numeric and want storage benefits, varchar is better.
-- The following SQL statement creates a stored procedure that selects Customers from a particular City from the "Customers" table:

create procedure selectallcustomers @city nvarchar(30) --Is it just that nvarchar supports multibyte characters?
as
select * from customers where city = @city
go;


-- Stored Procedure With Multiple Parameters
-- Setting up multiple parameters is very easy. Just list each parameter and the data type separated by a comma as shown below.

create procedure selectallcustomers @city nvarchar(30), @postcode nvarchar(10)
as
 select *  from customers where city = @city and postalcode =  @postalcode
 go;