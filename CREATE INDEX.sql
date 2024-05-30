-- The CREATE INDEX statement is used to create indexes in tables.
-- Indexes are used to retrieve data from the database more quickly than otherwise. The users cannot see the indexes, they are just used to speed up searches/queries.


-- The SQL statement below creates an index named "idx_lastname" on the "LastName" column in the "Persons" table:

-- CREATE INDEX Example
-- The SQL statement below creates an index named "idx_lastname" on the "LastName" column in the "Persons" table:

create index idx_lastname
on persons(LastName);

-- If you want to create an index on a combination of columns, you can list the column names within the parentheses, separated by commas:
CREATE INDEX idx_pname
ON Persons (LastName, FirstName);

-- DROP INDEX Statement
-- The DROP INDEX statement is used to delete an index in a table.
drop index index_name on table_name;