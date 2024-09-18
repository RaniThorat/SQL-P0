-- Create Checkouts Table
CREATE TABLE Checkouts (
    id SERIAL PRIMARY KEY,
    book_id INT,
    patron_id INT,
    checkout_date DATE,
    due_date DATE
);

-- Create Returns Table
CREATE TABLE Returns (
    id SERIAL PRIMARY KEY,
    checkout_id INT,
    return_date DATE,
    FOREIGN KEY (checkout_id) REFERENCES Checkouts(id)
);

-- Create Holds Table
CREATE TABLE Holds (
    id SERIAL PRIMARY KEY,
    book_id INT,
    patron_id INT,
    hold_date DATE,
    expiration_date DATE
);

-- Create Waitlists Table
CREATE TABLE Waitlists (
    id SERIAL PRIMARY KEY,
    book_id INT,
    patron_id INT,
    waitlist_date DATE
);

-- Create Checkout History Table
CREATE TABLE Checkout_History (
    id SERIAL PRIMARY KEY,
    book_id INT,
    patron_id INT,
    checkout_date DATE,
    return_date DATE
);


-- Insert into Checkouts table
INSERT INTO Checkouts (book_id, patron_id, checkout_date, due_date) VALUES
(1, 1, '2022-01-01', '2022-01-31'),
(2, 2, '2022-02-01', '2022-02-28'),
(3, 3, '2022-03-01', '2022-03-31'),
(4, 4, '2022-04-01', '2022-04-30'),
(5, 5, '2022-05-01', '2022-05-31'),
(1, 2, '2022-06-01', '2022-06-30'),
(2, 3, '2022-07-01', '2022-07-31'),
(3, 4, '2022-08-01', '2022-08-31'),
(4, 5, '2022-09-01', '2022-09-30'),
(5, 1, '2022-10-01', '2022-10-31');


-- Insert into Returns table
INSERT INTO Returns (checkout_id, return_date) VALUES
(1, '2022-01-20'),
(2, '2022-02-15'),
(3, '2022-03-25'),
(4, '2022-04-10'),
(5, '2022-05-15'),
(6, '2022-06-25'),
(7, '2022-07-20'),
(8, '2022-08-22'),
(9, '2022-09-15'),
(10, '2022-10-20');


-- Insert into Holds table
INSERT INTO Holds (book_id, patron_id, hold_date, expiration_date) VALUES
(1, 2, '2022-01-05', '2022-01-15'),
(2, 3, '2022-02-10', '2022-02-20'),
(3, 4, '2022-03-15', '2022-03-25'),
(4, 5, '2022-04-20', '2022-04-30'),
(5, 1, '2022-05-25', '2022-06-04'),
(2, 4, '2022-06-05', '2022-06-15'),
(3, 5, '2022-07-10', '2022-07-20'),
(1, 3, '2022-08-12', '2022-08-22'),
(5, 2, '2022-09-01', '2022-09-10'),
(4, 1, '2022-10-05', '2022-10-15');


-- Insert into Waitlists table
INSERT INTO Waitlists (book_id, patron_id, waitlist_date) VALUES
(1, 3, '2022-01-10'),
(2, 4, '2022-02-15'),
(3, 5, '2022-03-20'),
(4, 1, '2022-04-25'),
(5, 2, '2022-05-30'),
(1, 5, '2022-06-12'),
(2, 1, '2022-07-10'),
(3, 2, '2022-08-05'),
(4, 3, '2022-09-14'),
(5, 4, '2022-10-08');


-- Insert into Checkout_History table
INSERT INTO Checkout_History (book_id, patron_id, checkout_date, return_date) VALUES
(1, 1, '2022-01-01', '2022-01-20'),
(2, 2, '2022-02-01', '2022-02-15'),
(3, 3, '2022-03-01', '2022-03-25'),
(4, 4, '2022-04-01', '2022-04-10'),
(5, 5, '2022-05-01', '2022-05-15'),
(1, 2, '2022-06-01', '2022-06-25'),
(2, 3, '2022-07-01', '2022-07-20'),
(3, 4, '2022-08-01', '2022-08-22'),
(4, 5, '2022-09-01', '2022-09-15'),
(5, 1, '2022-10-01', '2022-10-20');


select * from Checkouts;
select * from Returns;
select * from Holds;
select * from Waitlists ;
select * from Checkout_History;