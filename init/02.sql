USE carpooling_db;

-- Inserting dummy users
INSERT INTO Users (Email, Password) VALUES
    ('test@gmail.com', '123456'),
    ('bob@gmail.com', '123456'),
    ('charile@gmail.com', '123456');

-- Inserting user profiles
INSERT INTO UserProfiles (UserID, FirstName, LastName, MobileNumber, IsCarOwner, DriverLicenseNumber, CarPlateNumber) VALUES
    (1, 'Alice', 'Smith', '123456789', 1, 'DL1234', 'ABC123'),
    (2, 'Bob', 'Johnson', '987654321', 0, NULL, NULL),
    (3, 'Charlie', 'Brown', '555555555', 1, 'DL5678', 'XYZ987');

-- Inserting trips by car owners
INSERT INTO Trips (OwnerUserID, PickupLocation, AltPickupLocation, StartTravelTime, DestinationAddress, AvailableSeats, IsActive) VALUES
    (1, 'Main Street', 'Second Street', '2023-11-20 09:00:00', 'Central Park', 3, TRUE),
    (3, 'Park Avenue', NULL, '2023-11-22 08:30:00', 'Downtown', 2, TRUE);

-- Enrolling passengers into trips
INSERT INTO TripEnrollments (TripID, PassengerUserID) VALUES
    (1, 2), -- User 2 (Bob) enrolls in Trip 1 (owned by Alice)
    (2, 1); -- User 1 (Alice) enrolls in Trip 2 (owned by Charlie)
