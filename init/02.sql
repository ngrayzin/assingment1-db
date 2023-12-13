USE carpooling_db;

-- Inserting dummy users
INSERT INTO Users (Email, Password, FirstName, LastName, MobileNumber, IsCarOwner, DriverLicenseNumber, CarPlateNumber) VALUES
    ('test@gmail.com', '123456', 'Alice', 'Smith', '123456789', 1, 'DL1234', 'ABC123'),
    ('bob@gmail.com', '123456', 'Bob', 'Johnson', '987654321', 0, NULL, NULL),
    ('charile@gmail.com', '123456', 'Charlie', 'Brown', '555555555', 1, 'DL5678', 'XYZ987');

INSERT INTO Users (Email, Password, FirstName, LastName, MobileNumber, IsCarOwner, DriverLicenseNumber, CarPlateNumber, AccountCreationDate) VALUES
    ('1yco@gmail.com', '123456', 'Car Owner', 'Smith', '123456789', 1, 'DL1234', 'ABC123', "2022-12-13 12:30:20"),
    ('1yp@gmail.com', '123456', 'Passenger', 'Johnson', '987654321', 0, NULL, NULL, "2022-12-13 12:30:20");

-- Inserting trips by car owners
INSERT INTO Trips (OwnerUserID, PickupLocation, AltPickupLocation, StartTravelTime, DestinationAddress, AvailableSeats, IsActive) VALUES
    (1, 'Bukit Panjang', 'BLK 603', '2023-12-13 22:00:00', 'Orhard', 3, TRUE),
    (3, 'Jurong', NULL, '2023-12-13 9:50:00', 'Zoo', 2, TRUE),
    (4, 'Pasiris', NULL, '2023-12-13 22:05:00', 'Tampines', 2, TRUE);

-- Enrolling passengers into trips
INSERT INTO TripEnrollments (TripID, PassengerUserID, NumberOfSeats) VALUES
    (1, 2, 1), -- User 2 (Bob) enrolls in Trip 1 (owned by Alice)
    (2, 2, 1); -- User 2 (Bob) enrolls in Trip 2 (owned by Charlie)
