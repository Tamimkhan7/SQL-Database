-- Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table.
-- Often this is the primary key field that we would like to be created automatically every time a new record is inserted.
-- default auto_increament started value is 1
CREATE TABLE Persons (
    Personid int NOT NULL AUTO_INCREMENT,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (Personid)
);


-- To let the AUTO_INCREMENT sequence start with another value, use the following SQL statement:
Alter table persons AUTO_INCREMENT=100;

-- The MS SQL Server uses the IDENTITY keyword to perform an auto-increment feature.
-- In the example above, the starting value for IDENTITY is 1, and it will increment by 1 for each new record.
CREATE TABLE Persons (
    Personid int IDENTITY(1,1) PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);