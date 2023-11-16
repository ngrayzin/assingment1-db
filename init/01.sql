CREATE DATABASE IF NOT EXISTS carpooling_db;
USE carpooling_db;

-- Create a table for users
CREATE TABLE IF NOT EXISTS Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Password VARCHAR(100) NOT NULL,
    AccountCreationDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    LastUpdated TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create a table for user profiles
CREATE TABLE IF NOT EXISTS UserProfiles (
    ProfileID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT UNIQUE NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    MobileNumber VARCHAR(20) NOT NULL,
    IsCarOwner BOOLEAN NOT NULL DEFAULT FALSE,
    DriverLicenseNumber VARCHAR(50),
    CarPlateNumber VARCHAR(20),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Create a table for car-pooling trips
CREATE TABLE IF NOT EXISTS Trips (
    TripID INT AUTO_INCREMENT PRIMARY KEY,
    OwnerUserID INT NOT NULL,
    PickupLocation VARCHAR(100) NOT NULL,
    AltPickupLocation VARCHAR(100),
    StartTravelTime DATETIME NOT NULL,
    DestinationAddress VARCHAR(100) NOT NULL,
    AvailableSeats INT NOT NULL,
    IsActive BOOLEAN NOT NULL DEFAULT TRUE,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    LastUpdated TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (OwnerUserID) REFERENCES Users(UserID)
);

-- Create a table to manage trip enrollments
CREATE TABLE IF NOT EXISTS TripEnrollments (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    TripID INT NOT NULL,
    PassengerUserID INT NOT NULL,
    EnrollmentTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (TripID) REFERENCES Trips(TripID),
    FOREIGN KEY (PassengerUserID) REFERENCES Users(UserID)
);
