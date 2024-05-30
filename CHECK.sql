-- The CHECK constraint is used to limit the value range that can be placed in a column.
-- If you define a CHECK constraint on a column it will allow only certain values for this column.
-- If you define a CHECK constraint on a table it can limit the values in certain columns based on values in other columns in the row.

-- SQL CHECK on CREATE TABLE

create table persons(
    Id int Not null,
    Lastname varchar(50), Not Null,
    Firstname varchar(50),
    Age int,
    check(age>=18)
);


-- To allow naming of a CHECK constraint, and for defining a CHECK constraint on multiple columns, use the following SQL syntax:

create table persons(
    Id int Not Null,
    Lastname varchar(50) not null,
    Firstname varchar(50),
    Age int,
    city varchar(50),
    constraint chk_person check(Age>=18 and city = 'sandnes')
)

-- SQL CHECK on ALTER TABLE
-- To create a CHECK constraint on the "Age" column when the table is already created, use the following SQL:
-- added to the perosn table and check age is greather than 18
Alter table persons
add check (age>=18);


-- To allow naming of a CHECK constraint, and for defining a CHECK constraint on multiple columns, use the following SQL syntax:

ALTER TABLE Persons
ADD CONSTRAINT CHK_PersonAge CHECK (Age>=18 AND City='Sandnes');

-- DROP a CHECK Constraint
-- To drop a CHECK constraint, use the following SQL:
-- how to delete or drop a column
Alter table persons
drop constraint chk_personAge;