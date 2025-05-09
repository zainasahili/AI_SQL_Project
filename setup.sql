CREATE TABLE passenger(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    phone_number VARCHAR
);

CREATE TABLE airplane(
    id INTEGER PRIMARY KEY,
    model VARCHAR,
    capacity SMALLINT,
    manufacturer VARCHAR 
);

CREATE TABLE airport(
    id INTEGER PRIMARY KEY,
    code VARCHAR(3) NOT NULL,
    airport_name VARCHAR NOT NULL,
    city VARCHAR NOT NULL,
    country VARCHAR NOT NULL
);

CREATE TABLE flight(
    id INTEGER PRIMARY KEY,
    flight_date DATE NOT NULL,
    departure_time TIME NOT NULL,
    arrival_time TIME NOT NULL,
    departure_airport_id INTEGER NOT NULL,
    destination_airport_id INTEGER NOT NULL,
    airplane_id INTEGER NOT NULL,
    flight_status VARCHAR,
    FOREIGN KEY (departure_airport_id) REFERENCES airport(id),
    FOREIGN KEY (destination_airport_id) REFERENCES airport(id),
    FOREIGN KEY (airplane_id) REFERENCES airplane(id)
);

CREATE TABLE booking(
    id INTEGER PRIMARY KEY,
    passenger_id INTEGER NOT NULL,
    flight_id INTEGER NOT NULL,
    seat_number SMALLINT,
    booking_date DATE NOT NULL,
    FOREIGN KEY (passenger_id) REFERENCES passenger(id),
    FOREIGN KEY (flight_id) REFERENCES flight(id)
);


CREATE TABLE suitcase(
    id INTEGER PRIMARY KEY,
    passenger_id INTEGER NOT NULL,
    booking_id INTEGER NOT NULL,
    tag_number INTEGER NOT NULL,
    suitcase_status VARCHAR NOT NULL,
    FOREIGN KEY (passenger_id) REFERENCES passenger(id),
    FOREIGN KEY (booking_id) REFERENCES booking(id)
);