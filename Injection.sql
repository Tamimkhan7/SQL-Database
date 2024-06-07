-- SQL injection is a code injection technique that might destroy your database
-- SQL injection is one of the most common web hacking techniques.
-- SQL injection is the placement of malicious code in SQL statements, via web page input.

-- SQL injection usually occurs when you ask a user for input, like their username/userid, and instead of a name/id, the user gives you an SQL statement that you will unknowingly run on your database.


SQL Injection Based on 1=1 is Always True

-- If there is nothing to prevent a user from entering "wrong" input, the user can enter some "smart" input like this:

select * from users where userid = 105 or 1=1;
-- The SQL above is valid and will return ALL rows from the "Users" table, since OR 1=1 is always TRUE.

select userid, Name, password from user where userid = 105 or 1=1;


-- SQL Injection Based on ""="" is Always True
select * from users where name= "John Doe" and pass = "mypass";

select * from users where name ="" or ""="" and pass ="" or ""="";
-- The SQL above is valid and will return all rows from the "Users" table, since OR ""="" is always TRUE.

-- SQL Injection Based on Batched SQL Statements 
-- Most databases support batched SQL statement.

-- A batch of SQL statements is a group of two or more SQL statements, separated by semicolons.


-- The SQL statement below will return all rows from the "Users" table, then delete the "Suppliers" table.
select * from users; drop table suppliers

select * from users where userid = 105; drop table suppliers;


-- Use SQL Parameters for Protection
-- To protect a web site from SQL injection, you can use SQL parameters.
-- SQL parameters are values that are added to an SQL query at execution time, in a controlled manner.
-- Note that parameters are represented in the SQL statement by a @ marker.