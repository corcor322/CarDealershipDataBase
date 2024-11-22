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

INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('3FADP4EJ4CM102527', 2015, 'Nissan', 'Versa', 'Car', 'Blue', 43090, 12300.00, false);

INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('3GNAL2EK6DS637014', 2024, 'Volkswagen', 'Golf', 'Car', 'White', 15, 35300.00, false);


INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('1FDWE37S1WHB59233', 2016, 'BMW', 'Z4', 'Car', 'White', 24090, 26590.00, false);


INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('1HGCM82633A123456', 2018, 'Honda', 'Civic', 'Car', 'Red', 30210, 15700.00, true);

INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('2T1BU4EE9DC234567', 2020, 'Toyota', 'Corolla', 'Car', 'Black', 12234, 18450.00, false);

INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('5YJSA1CN5DF345678', 2019, 'Tesla', 'Model S', 'Car', 'Silver', 54000, 45000.00, false);

INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('4T1BE46KX6U456789', 2015, 'Ford', 'Focus', 'Car', 'Blue', 68900, 9300.00, true);

INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('1FTFX1EV9K1234567', 2022, 'Chevrolet', 'Silverado', 'Truck', 'Black', 10025, 37900.00, false);

INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('3C6UR5DLXKG123890', 2023, 'Ram', '1500', 'Truck', 'Red', 35, 42000.00, false);

INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('1J4FY29P7YP345123', 2012, 'Jeep', 'Wrangler', 'SUV', 'Green', 134500, 17500.00, true);

INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('5NPE24AF2FH098765', 2017, 'Hyundai', 'Elantra', 'Car', 'Blue', 48900, 12300.00, true);

INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('2C4RC1BG9KR246800', 2021, 'Chrysler', 'Pacifica', 'Van', 'White', 12000, 28900.00, false);

INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('1FTPW14VX5KC12389', 2018, 'Ford', 'F-150', 'Truck', 'Silver', 82300, 24500.00, true);

INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('KM8JU3AG3EU673542', 2023, 'Kia', 'Sportage', 'SUV', 'Gray', 4200, 31400.00, false);

INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('1FVACYBS8GH891234', 2020, 'Freightliner', 'Sprinter', 'Van', 'Black', 34000, 42000.00, false);

INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('2FMPK4J89HBC45612', 2019, 'Ford', 'Edge', 'SUV', 'Blue', 20000, 29500.00, false);

INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('JHMCM82633C918273', 2016, 'Acura', 'TLX', 'Car', 'White', 45000, 22000.00, false);

INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('1GKKVNED6EJ098654', 2017, 'GMC', 'Terrain', 'SUV', 'Silver', 67000, 19000.00, false);

INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('5TFDW5F15EX762349', 2022, 'Toyota', 'Tundra', 'Truck', 'White', 5000, 41900.00, false);

INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('2GNFLGEK6JH123456', 2021, 'Chevrolet', 'Equinox', 'SUV', 'Black', 15000, 26500.00, false);

INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('3CZRM3H58FG112233', 2018, 'Honda', 'CR-V', 'SUV', 'Green', 36000, 18900.00, true);

INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('1FTNE1ZM9FKA56789', 2023, 'Ford', 'Transit', 'Van', 'Silver', 1200, 38900.00, false);

INSERT INTO vehicles(VIN, VehicleYear, Make, Model, VehicleType, Color, Odometer, Price, SOLD)
VALUES('1FMCU9GD7JUC45678', 2020, 'Ford', 'Escape', 'SUV', 'Red', 28000, 21500.00, false);

-- Dealerships:

INSERT INTO dealerships(Dealership_ID, Dealership_Name, Address, phone)
Values(0001, 'Aarons Auto', '235 Gamemaster Dr, Pgh PA 15212', '412-867-5309');

INSERT INTO dealerships(Dealership_ID, Dealership_Name, Address, phone)
Values(0002, 'Cool Cars By Carmen', '1313 Slasher St, Orlando FL 32724', '412-555-5523');

INSERT INTO dealerships(Dealership_ID, Dealership_Name, Address, phone)
Values(0003, 'Ekrems Excellent Deals', '420 Year Up Ave, PGH PA 15209', '724-111-1111');


