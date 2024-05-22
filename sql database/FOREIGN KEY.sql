-- The FOREIGN KEY constraint is used to prevent actions that would destroy links between tables.
-- The table with the foreign key is called the child table, and the table with the primary key is called the referenced or parent table.

-- SQL FOREIGN KEY on CREATE TABLE
-- The following SQL creates a FOREIGN KEY on the "PersonID" column when the "Orders" table is created:

create table Orders(
    OrderID int not null,
    ordernumber int not null,
    personId int,
    primary key (OrderID),
    Foreign key (personId) references persons(personId)
);

-- To allow naming of a FOREIGN KEY constraint, and for defining a FOREIGN KEY constraint on multiple columns, use the following SQL syntax:
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    REFERENCES Persons(PersonID)
);

-- SQL FOREIGN KEY on ALTER TABLE
-- To create a FOREIGN KEY constraint on the "PersonID" column when the "Orders" table is already created, use the following SQL:
Alter table  Orders
add foreign key (personId) references persons(personID);

-- DROP a FOREIGN KEY Constraint
Alter table Orders
drop foreign key FK_PersonOrder;