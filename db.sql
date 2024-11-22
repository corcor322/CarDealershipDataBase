CREATE DATABASE cardealership;

CREATE TABLE dealerships(
    Dealership_ID int auto_increment NOT NULL,
    Dealership_Name varchar(50) NOT NULL,
    Address varchar(50) NOT NULL,
    phone varchar(12) NOT NULL,
    PRIMARY KEY (Dealership_ID)
);

CREATE TABLE customers(
    Customer_ID int,
    Customer_LastName varchar(50),
    Customer_FirstName varchar(50),
    Customer_email varchar(50),
    Customer_phone varchar(12),
    PRIMARY KEY (Customer_ID)
);

CREATE TABLE vehicles(
    VIN varchar(20),
    VehicleYear int,
    Make varchar(20),
    Model varchar(20),
    VehicleType varchar(15),
    Color varchar(15),
    Odometer int,
    Price float,
    SOLD boolean,
    PRIMARY KEY (VIN)
);

CREATE TABLE inventory(
    Dealership_ID int,
    VIN varchar(20),
    PRIMARY KEY (Dealership_ID, VIN),
    FOREIGN KEY (VIN) REFERENCES vehicles (VIN)
);

CREATE TABLE sales_contracts(
    SalesContract_number int,
    Customer_ID int,
    Contract_Date varchar(10),
    VIN varchar(20),
    Financing boolean,
    Total_Cost float,
    Montly_Payment float,
    PRIMARY KEY (SalesContract_number),
    FOREIGN KEY (Customer_ID) REFERENCES customers (Customer_ID),
    FOREIGN KEY (VIN) REFERENCES vehicles (VIN)
);

CREATE TABLE lease_contracts(
    LeaseContract_number int,
    Customer_ID int,
    VIN varchar(20),
    Total_Cost float,
    Monthly_Payment float,
    PRIMARY KEY (LeaseContract_number),
    FOREIGN KEY (Customer_ID) REFERENCES customers (Customer_ID),
    FOREIGN KEY (VIN) REFERENCES vehicles (VIN)
);
