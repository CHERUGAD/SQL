-- 0. (Optional) Drop the database to start clean
DROP DATABASE IF EXISTS CustomerDB;

-- 1. Create & switch to CustomerDB
CREATE DATABASE CustomerDB;

USE CustomerDB;


-- 2. Create Customers
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    CustomerID    VARCHAR(10)   PRIMARY KEY,
    CustomerName  VARCHAR(100)  NOT NULL,
    ContactName   VARCHAR(100),
    Address       VARCHAR(200),
    City          VARCHAR(100),
    PostalCode    VARCHAR(20),
    Country       VARCHAR(50)
);


-- 3. Create Shippers
DROP TABLE IF EXISTS Shippers;
CREATE TABLE Shippers (
    ShipperID    VARCHAR(10)   PRIMARY KEY,
    ShipperName  VARCHAR(100),
    Phone        VARCHAR(20)
);


-- 4. Create Orders
DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    OrderID      INT            PRIMARY KEY,
    CustomerID   VARCHAR(10),
    EmployeeID   INT,
    OrderDate    DATE,
    ShipperID    VARCHAR(10),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ShipperID)  REFERENCES Shippers(ShipperID)
);

-- 5. Populate Customers (one INSERT per row)
INSERT INTO Customers
  (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
  ('1', 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany');
INSERT INTO Customers
  (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
  ('2', 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico');
INSERT INTO Customers
  (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
  ('3', 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico');
INSERT INTO Customers
  (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
  ('4', 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK');
INSERT INTO Customers
  (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
  ('5', 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden');


-- 6. Populate Shippers
INSERT INTO Shippers (ShipperID, ShipperName, Phone)
VALUES
  ('1', 'Speedy Express', '(503) 555-9831');
INSERT INTO Shippers (ShipperID, ShipperName, Phone)
VALUES
  ('2', 'United Package', '(503) 555-3199');
INSERT INTO Shippers (ShipperID, ShipperName, Phone)
VALUES
  ('3', 'Federal Shipping', '(503) 555-9931');


-- 7. Populate Orders
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (10278, '5', 8, '1996-08-12', '2');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (10280, '5', 2, '1996-08-14', '1');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (10308, '2', 7, '1996-09-18', '3');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (10355, '4', 6, '1996-11-15', '1');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (10365, '3', 3, '1996-11-27', '2');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (10383, '4', 8, '1996-12-16', '3');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (10384, '5', 3, '1996-12-16', '3');

-- 8. Verify
select * FROM Customers;
SELECT * FROM Shippers;
SELECT * FROM Orders;

select CustomerID, CustomerName from Customers;
select distinct CustomerID from Customers;
select count( Country) from Customers;
