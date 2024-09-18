-- Create Patrons Table
CREATE TABLE Patrons (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone_number VARCHAR(20),
    address VARCHAR(255)
);

-- Create Membership Types Table
CREATE TABLE Membership_Types (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    duration INT
);

-- Create Patron Membership Table
CREATE TABLE Patron_Membership (
    id SERIAL PRIMARY KEY,
    patron_id INT,
    membership_type_id INT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (patron_id) REFERENCES Patrons(id),
    FOREIGN KEY (membership_type_id) REFERENCES Membership_Types(id)
);

-- Create Patron Fines Table
CREATE TABLE Patron_Fines (
    id SERIAL PRIMARY KEY,
    patron_id INT,
    fine_amount DECIMAL(10, 2),
    fine_date DATE,
    FOREIGN KEY (patron_id) REFERENCES Patrons(id)
);

-- Create Patron Payments Table
CREATE TABLE Patron_Payments (
    id SERIAL PRIMARY KEY,
    patron_id INT,
    payment_amount DECIMAL(10, 2),
    payment_date DATE,
    FOREIGN KEY (patron_id) REFERENCES Patrons(id)
);


-- Insert into Patrons table
INSERT INTO Patrons (name, email, phone_number, address) VALUES
('John Doe', 'johndoe@example.com', '123-456-7890', '123 Main St'),
('Jane Smith', 'janesmith@example.com', '987-654-3210', '456 Elm St'),
('Bob Johnson', 'bobjohnson@example.com', '555-123-4567', '789 Oak St'),
('Alice Brown', 'alicebrown@example.com', '111-222-3333', '321 Maple St'),
('Mike Davis', 'mikedavis@example.com', '444-555-6666', '901 Pine St'),
('Sara Evans', 'saraevans@example.com', '333-444-5555', '142 Maple St'),
('Chris Lee', 'chrislee@example.com', '666-777-8888', '789 Spruce St'),
('Nancy Drew', 'nancydrew@example.com', '999-888-7777', '852 Birch St'),
('Tom Hanks', 'tomhanks@example.com', '111-999-2222', '123 Oak St'),
('Emma Watson', 'emmawatson@example.com', '444-333-5555', '965 Pine St');



-- Insert into Membership_Types table
INSERT INTO Membership_Types (name, description, duration) VALUES
('Basic', 'Access to library materials for 1 year', 365),
('Premium', 'Access to library materials, digital media, and special events for 1 year', 365),
('Student', 'Access to library materials for 6 months', 180),
('Senior', 'Access to library materials for 1 year, with discounts on programs and services', 365),
('Family', 'Access to library materials for 1 year, for up to 5 family members', 365),
('Digital', 'Access to digital library only', 365),
('Guest', 'Limited access for 1 month', 30);


-- Insert into Patron_Membership table
INSERT INTO Patron_Membership (patron_id, membership_type_id, start_date, end_date) VALUES
(1, 1, '2022-01-01', '2023-01-01'),
(2, 2, '2022-06-01', '2023-06-01'),
(3, 3, '2022-09-01', '2023-03-01'),
(4, 4, '2022-03-01', '2023-03-01'),
(5, 5, '2022-12-01', '2023-12-01'),
(6, 1, '2022-02-01', '2023-02-01'),
(7, 2, '2022-07-01', '2023-07-01'),
(8, 3, '2022-08-01', '2023-02-01'),
(9, 4, '2022-04-01', '2023-04-01'),
(10, 5, '2022-11-01', '2023-11-01');


-- Insert into Patron_Fines table
INSERT INTO Patron_Fines (patron_id, fine_amount, fine_date) VALUES
(1, 5.00, '2022-02-01'),
(2, 10.00, '2022-07-01'),
(3, 2.00, '2022-10-01'),
(4, 8.00, '2022-04-01'),
(5, 12.00, '2022-11-01'),
(6, 3.00, '2022-05-01'),
(7, 7.50, '2022-08-01'),
(8, 1.50, '2022-09-01'),
(9, 6.00, '2022-12-01'),
(10, 15.00, '2022-06-01');


-- Insert into Patron_Payments table
INSERT INTO Patron_Payments (patron_id, payment_amount, payment_date) VALUES
(1, 20.00, '2022-01-15'),
(2, 50.00, '2022-06-15'),
(3, 15.00, '2022-09-15'),
(4, 30.00, '2022-03-15'),
(5, 60.00, '2022-12-15'),
(6, 25.00, '2022-02-15'),
(7, 45.00, '2022-07-15'),
(8, 20.00, '2022-08-15'),
(9, 35.00, '2022-10-15'),
(10, 55.00, '2022-11-15');



select * from Patrons;
select * from Membership_Types;
select * from Patron_Membership;
select * from Patron_Fines;
select * from Patron_Payments;

select * from Patrons WHERE name LIKE 'J%';