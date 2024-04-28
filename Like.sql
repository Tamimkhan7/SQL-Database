-- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

-- There are two wildcards often used in conjunction with the LIKE operator:

--  The percent sign % represents zero, one, or multiple characters
--  The underscore sign _ represents one, single character


select * from customers
WHERE customerName LIKE 'a%';//basically amar first char ta a hote hobe baki char ki seta amra janar dorkar nai


-- The _ wildcard represents a single character.

-- It can be any character or number, but each _ represents one, and only one, character.


-- example
-- Return all customers from a city that starts with 'L' followed by one wildcard character, then 'nd' and then two wildcard characters:

select * from customers
WHERE city LIKE 'L_nd__';---city first char L hote hobe akhn second char ki hobe jani na but third and fourth char nd hote hobe


-- The % wildcard represents any number of characters, even zero characters.

select * from customers
WHERE city LIKE '%L%';--amar majer akta char L holeii hobe baki gula check korar dorkar nai

-- To return records that starts with a specific letter or phrase, add the % at the end of the letter or phrase.


select * from customers
-- first two char La dew baki gula khujar dorkar nai
WHERE customerName LIKE 'La%';


-- Return all customers that starts with 'a' or starts with 'b':

select * from customers
WHERE customerName LIKE 'a%' or customerName LIKE 'b%';


-- To return records that ends with a specific letter or phrase, add the % at the beginning of the letter or phrase.
select * from customers
WHERE customerName LIKE '%a';


-- Return all customers that starts with "b" and ends with "s":

select * from customers
WHERE customerName LIKE 'b%s';


-- To return records that contains a specific letter or phrase, add the % both before and after the letter or phrase.

select * form customers
WHERE customerName like '%or%';


-- Any wildcard, like % and _ , can be used in combination with other wildcards.
select * from customers
WHERE customerName like 'a__%';--first char a dew baki gula ki asbe amar janar dorkar nai


-- Return all customers that have "r" in the second position
SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';


-- If no wildcard is specified, the phrase has to have an exact match to return a result.

select * from customers
WHERE country like 'spain';--jei sokol country spain name ace tader data return koro