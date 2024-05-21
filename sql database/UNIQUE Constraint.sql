-- The UNIQUE constraint ensures that all values in a column are different.
-- Both the UNIQUE and PRIMARY KEY constraints provide a guarantee for uniqueness for a column or set of columns.

-- A PRIMARY KEY constraint automatically has a UNIQUE constraint.
-- However, you can have many UNIQUE constraints per table, but only one PRIMARY KEY constraint per table.
-- basically unique and primary key kaj same but ami caile onek gula unique key niye parbo but primary key akta datatype ar jonno


-- SQL UNIQUE Constraint on CREATE TABLE
-- The following SQL creates a UNIQUE constraint on the "ID" column when the "Persons" table is created:

create table persons (
    ID int NOT NULL Unique,
    lastname varchar(40) not NULL
    first name varchar(40),
    age int 
);


-- To name a UNIQUE constraint, and to define a UNIQUE constraint on multiple columns, use the following SQL syntax:
-- ak sathe onek gula column ke unique korar jonno constrain uc_table_name unique(sob gula unique)

create table persons(
    id int not null,
    lastname varchar(50) not null,
    firstname varchar(50),
    age int,
    constraint uc_person unique (id, lastname)
);

-- SQL UNIQUE Constraint on ALTER TABLE

-- To create a UNIQUE constraint on the "ID" column when the table is already created, use the following SQL:

Alter table  persons
add unique (id);


-- DROP a UNIQUE Constraint
Alter table persons
drop index UC_person;




