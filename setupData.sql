INSERT INTO passenger VALUES
    (1, "John", "Doe", "johndoe@example.com", "9586947321"),
    (2, "Aisha", "Khan", "aishakhan@example.com", "9589947321"),
    (3, "Loren", "Peter", "lorenn@example.com", "8475629031"),
    (4, "Amara", "Scott", "amaras@example.com", "3758192657"),
    (5, "Patrick", "Young", "patrickkp@example.com", "2840375261");

INSERT INTO booking VALUES
    (1, 1, 1, 12, "2025-05-01"),
    (2, 2, 1, 25, "2025-05-01"),
    (3, 3, 2, 12, "2025-05-05"),
    (4, 4, 3, 35, "2024-12-03"),
    (5, 5, 2, 23, "2024-07-05");

INSERT INTO flight VALUES
    (1, "2025-05-09", "08:00:00", "11:30:00", 1, 2, 1, "pending"),
    (2, "2025-05-10", "11:00:00", "20:30:00", 2, 1, 2, "pending"),
    (3, "2025-05-05", "08:30:00", "11:45:00", 1, 3, 1, "completed");

INSERT INTO airport VALUES 
    (1, "JFK", "John F. Kennedy International Airport", "NYC", "USA"),
    (2, "LAX", "Los Angelos International Airport", "LA", "USA"),
    (3, "IST", "Istanbul International Airport", "Istanbul", "Turkey");

INSERT INTO airplane VALUES
    (1, "Boeing 737", 180, "Boeing"),
    (2, "Airbus A320", 50, "Airbus");

INSERT INTO suitcase VALUES
    (1, 1, 1, 23654, "shipped"),
    (2, 1, 1, 23655, "shipped"),
    (3, 2, 2, 35432, "pending"),
    (4, 3, 3, 97564, "delivered");