-- The PRIMARY KEY constraint uniquely identifies each record in a table.
-- Primary keys must contain UNIQUE values, and cannot contain NULL values.
-- A table can have only ONE primary key; and in the table, this primary key can consist of single or multiple columns (fields).


-- SQL PRIMARY KEY on CREATE TABLE

-- this is for used mysql doesn't used sql server
create table persons(
    ID int not null,
    lastname varchar(50) not null,
    firstname varchar (50), 
    age int, 
    primary key (ID);
);
-- this is used sql server
 
    create table persons(
    id int not null primary key,
    lastname varchar(50) not null,
    firstname varchar(50),
    age int
    );

    -- To allow naming of a PRIMARY KEY constraint, and for defining a PRIMARY KEY constraint on multiple columns, use the following SQL syntax:
    create table  persons(
        ID int not null,
        lastname varchar(50) not null,
        firstname varchar(50),
        age int,
        constraint PK_person primary key (ID, lastname)
    );

--     SQL PRIMARY KEY on ALTER TABLE
-- To create a PRIMARY KEY constraint on the "ID" column when the table is already created, use the following SQL:
-- added primary key ID column to the persons table
Alter table persons
add primary key (ID);

-- To allow naming of a PRIMARY KEY constraint, and for defining a PRIMARY KEY constraint on multiple columns, use the following SQL syntax:
Alter table persons
Add constraint PK_person primary key (ID, lastname);

-- If you use ALTER TABLE to add a primary key, the primary key column(s) must have been declared to not contain NULL values (when the table was first created).

-- DROP a PRIMARY KEY Constraint
Alter table persons
drop primary key;