-- Creating the schema for Flight_record table
CREATE TABLE Flight_record(
	Flight_No INT PRIMARY KEY,
	Date_flight DATETIME,
	NUID INT,
	Drone_id INT,
	Truck_id INT
	);

--DROP TABLE Flight_record;

-- Creating the schema for Names_data table
CREATE TABLE Names_data(
	NUID INT PRIMARY KEY,
	First_name VARCHAR(12),
	Last_name VARCHAR(12),
	Phone_number VARCHAR(12)
	);

--DROP TABLE Names_data;

-- Displaying the data entered into table
SELECT * FROM Names_data;

ALTER TABLE Flight_record
ADD FOREIGN KEY(NUID) 
REFERENCES Names_data(NUID);	

-- Creating the schema for Drone_info table
CREATE TABLE Drone_info(
	Drone_id INT PRIMARY KEY,
	D_name VARCHAR(30),
	Date_purchase DATE
	);

--DROP TABLE Drone_info;

-- ADD THE FOREIGN KEY INTO THE Flight_record table
ALTER TABLE Flight_record
ADD FOREIGN KEY(Drone_id) 
REFERENCES Drone_info(Drone_id);

-- Modifying the datatype from DATE to DATETIME
ALTER TABLE Drone_info
ALTER COLUMN Date_purchase DATETIME;

-- Displaying the data entered into table
SELECT * FROM Drone_info;

-- Creating the schema for Drone_info table
CREATE TABLE Truck_info(
	Truck_id INT PRIMARY KEY,
	T_name VARCHAR(25),
	T_Id VARCHAR(7)
	);

--DROP TABLE Truck_info;

-- ADD THE FOREIGN KEY INTO THE Flight_record table
ALTER TABLE Flight_record
ADD FOREIGN KEY(Truck_id) 
REFERENCES Truck_info(Truck_id);

-- INSERTING VALUES INTO THE TABLE
INSERT INTO Names_data VALUES(1, 'John', 'Wick', '+13526520474')
INSERT INTO Names_data VALUES(2, 'Bruce', 'Wayne', '+14319997713')
INSERT INTO Names_data VALUES(3, 'Peter', 'Parker', '+14024053487')

-- INSERTING VALUES INTO THE TABLE Drone_info
INSERT INTO Drone_info VALUES(1, 'DJI Phantom 4', '2019-04-15 12:00:00');
INSERT INTO Drone_info VALUES(1, 'DJI Matrice 300 RTK', '2021-08-15 12:00:00');

-- INSERTING VALUES INTO THE TABLE Truck_info
INSERT INTO Truck_info VALUES(1, 'FORD 150', 'UAV121');
INSERT INTO Truck_info VALUES(2, 'RAM 2000', 'ULO988');
INSERT INTO Truck_info VALUES(3, 'Chevorlet', 'LOI900');

-- Displaying the data entered into table
SELECT * FROM Truck_info;

-- INSERTING VALUES INTO THE TABLE Flight_record
INSERT INTO FLight_record values(1,'2022-05-01 12:15:00', 94849312, 1, 2);
INSERT INTO FLight_record values(2,'2022-05-01 12:25:00', 49312, 1, 2);
INSERT INTO FLight_record values(3,'2022-05-01 12:05:00', 94812, 1, 2);
INSERT INTO FLight_record values(4,'2022-05-01 12:45:00', 94849, 1, 2);
SELECT * FROM Flight_record;

-- Displaying the data entered into table
SELECT * FROM Flight_record;

-- Displaying the results in a specific order
SELECT * FROM Flight_record;
ORDER BY Date_flight;