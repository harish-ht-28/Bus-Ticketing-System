CREATE DATABASE BusTicketSystem;

USE BusTicketSystem;

CREATE TABLE Admins (
    admin_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL
);

CREATE TABLE Passengers (
    passenger_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL
);

CREATE TABLE Buses (
    bus_id INT PRIMARY KEY AUTO_INCREMENT,
    route VARCHAR(100) NOT NULL,
    capacity INT NOT NULL,
    departure_time TIME NOT NULL
);

CREATE TABLE Tickets (
    ticket_id INT PRIMARY KEY AUTO_INCREMENT,
    bus_id INT,
    passenger_id INT,
    seat_number INT,
    FOREIGN KEY (bus_id) REFERENCES Buses(bus_id),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id)
);
